Class {
	#name : #PipeStreamsRudesheim,
	#superclass : #Object,
	#instVars : [
		'in',
		'out'
	],
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #'instance creation' }
PipeStreamsRudesheim class >> inputPipeStreams: anInputPipeStreams
outputPipeStreams: anOutputPipeStreams [

	^ self new
		setInputPipeStreams: anInputPipeStreams
		outputPipeStreams: anOutputPipeStreams.
]

{ #category : #'instance creation' }
PipeStreamsRudesheim class >> inversePipeStreams: aPipeStreams [

	^ self new 
		setInversePipeStreams: aPipeStreams;
		yourself.
]

{ #category : #'instance creation' }
PipeStreamsRudesheim class >> shiftStream: aPipeStreams [

	^ self new
		shiftStream: aPipeStreams.
]

{ #category : #'accessing-defaults' }
PipeStreamsRudesheim >> defaultStream [

	^ SharedQueueRudesheim new.
]

{ #category : #operations }
PipeStreamsRudesheim >> inverse [

	^ self class
		inversePipeStreams: self.
]

{ #category : #initialization }
PipeStreamsRudesheim >> setInputPipeStreams: anInputPipeStreams
outputPipeStreams: anOutputPipeStreams [

	in := anInputPipeStreams stdin.
	out := anOutputPipeStreams stdout.
]

{ #category : #initialization }
PipeStreamsRudesheim >> setInversePipeStreams: aPipeStreams [

	in := aPipeStreams stdout.
	out := aPipeStreams stdin.
]

{ #category : #accessing }
PipeStreamsRudesheim >> shiftStream: aPipeStreams [

	out := in.
	in := aPipeStreams stdout.
]

{ #category : #accessing }
PipeStreamsRudesheim >> stdin [

	^ in
		ifNil:
		[
			in := self defaultStream.
		].
]

{ #category : #accessing }
PipeStreamsRudesheim >> stdout [

	^ out
		ifNil:
		[
			out := self defaultStream.
		].
]
