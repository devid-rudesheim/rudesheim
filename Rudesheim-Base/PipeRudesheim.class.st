Class {
	#name : #PipeRudesheim,
	#superclass : #Object,
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#instVars : [
		'commands'
	],
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #'instance creation' }
PipeRudesheim class >> withPipeCommands: aSequencialCollection [

	^ super new
		setPipeCommands: aSequencialCollection.
]

{ #category : #initialization }
PipeRudesheim >> setPipeCommands: aSequencialCollection [

	commands :=  aSequencialCollection.
]

{ #category : #initialization }
PipeRudesheim >> writeStreamDo: aWritingBlock
readStreamDo: aReadingBlock [
	|
		originStream
		pipeStream
		pipeStreams
		join
	|
	
	originStream := PipeStreamsRudesheim new.
	pipeStream := originStream.
	
	commands
		do: 
		[ :each |
			|
				processLocalStream
			|
			
			processLocalStream := pipeStream :=
				PipeStreamsRudesheim
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
		PipeStreamsRudesheim
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
