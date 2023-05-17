Class {
	#name : #RHPipeStreams,
	#superclass : #Object,
	#instVars : [
		'in',
		'out'
	],
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #'instance creation' }
RHPipeStreams class >> inputPipeStreams: anInputPipeStreams
outputPipeStreams: anOutputPipeStreams [

	^ self new
		setInputPipeStreams: anInputPipeStreams
		outputPipeStreams: anOutputPipeStreams.
]

{ #category : #'instance creation' }
RHPipeStreams class >> inversePipeStreams: aPipeStreams [

	^ self new 
		setInversePipeStreams: aPipeStreams;
		yourself.
]

{ #category : #'instance creation' }
RHPipeStreams class >> shiftStream: aPipeStreams [

	^ self new
		shiftStream: aPipeStreams.
]

{ #category : #'accessing-defaults' }
RHPipeStreams >> defaultStream [

	^ RHSharedQueue new.
]

{ #category : #operations }
RHPipeStreams >> inverse [

	^ self class
		inversePipeStreams: self.
]

{ #category : #initialization }
RHPipeStreams >> setInputPipeStreams: anInputPipeStreams
outputPipeStreams: anOutputPipeStreams [

	in := anInputPipeStreams stdin.
	out := anOutputPipeStreams stdout.
]

{ #category : #initialization }
RHPipeStreams >> setInversePipeStreams: aPipeStreams [

	in := aPipeStreams stdout.
	out := aPipeStreams stdin.
]

{ #category : #accessing }
RHPipeStreams >> shiftStream: aPipeStreams [

	out := in.
	in := aPipeStreams stdout.
]

{ #category : #accessing }
RHPipeStreams >> stdin [

	^ in
		ifNil:
		[
			in := self defaultStream.
		].
]

{ #category : #accessing }
RHPipeStreams >> stdout [

	^ out
		ifNil:
		[
			out := self defaultStream.
		].
]
