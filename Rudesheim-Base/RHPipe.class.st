Class {
	#name : #RHPipe,
	#superclass : #Object,
	#traits : 'TRHShouldntNew',
	#classTraits : 'TRHShouldntNew classTrait',
	#instVars : [
		'commands'
	],
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #'instance creation' }
RHPipe class >> withPipeCommands: aSequencialCollection [

	^ super new
		setPipeCommands: aSequencialCollection.
]

{ #category : #initialization }
RHPipe >> setPipeCommands: aSequencialCollection [

	commands :=  aSequencialCollection.
]

{ #category : #initialization }
RHPipe >> writeStreamDo: aWritingBlock
readStreamDo: aReadingBlock [
	|
		originStream
		pipeStream
		pipeStreams
		join
	|
	
	originStream := RHPipeStreams new.
	pipeStream := originStream.
	
	commands
		do: 
		[ :each |
			|
				processLocalStream
			|
			
			processLocalStream := pipeStream :=
				RHPipeStreams
					shiftStream: pipeStream.
			
			[
				[
					each 
						executeWithPipeStream: processLocalStream.
				]
					ensure:
					[
						processLocalStream stdout close. 
					]
			] fork
		].
	
	pipeStreams :=
		RHPipeStreams
			inputPipeStreams: pipeStream inverse 
			outputPipeStreams: originStream.
		
	join := Semaphore new.
	[
		[
			aWritingBlock
				value: pipeStreams stdout. 
		]
			ensure:
			[
				pipeStreams
					stdout close.
				join signal.
			].
	] fork.

	^
	[
		aReadingBlock
			value: pipeStreams stdin.
	]
		ensure:
		[
			join wait 
		].
]
