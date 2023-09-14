"
A RHPipeMessageTest is a test class for testing the behavior of RHPipeMessage
"
Class {
	#name : #PipeMessageRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Pipe'
}

{ #category : #accessing }
PipeMessageRudesheimTest class >> targetClass [

	^ PipeMessageRudesheim.
]

{ #category : #accessing }
PipeMessageRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		send: #value:
		to:
		[ :streams |
		].
]

{ #category : #accessing }
PipeMessageRudesheimTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
PipeMessageRudesheimTest >> testExecuteWithPipeStream [
	|
		pipeStreams
		expected
	|

	expected :=
		1
			to: 3.
	
	pipeStreams := PipeStreamsRudesheim new.	
	pipeStreams stdin
		nextPutAll: expected.
	
	[
		(
			self targetClass
				send: #value:
				to:
				[ :streams |
					streams stdin
						do:
						[ :each |
							streams stdout
								nextPut: each.
						]
				]
		)
			executeWithPipeStream: pipeStreams.
	] fork.
	
	expected
		do:
		[ :each |
			self
				assert: pipeStreams stdout next
				equals: each 
		].
]
