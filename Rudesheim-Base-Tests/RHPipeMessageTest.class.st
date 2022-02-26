"
A RHPipeMessageTest is a test class for testing the behavior of RHPipeMessage
"
Class {
	#name : #RHPipeMessageTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Base-Tests-Pipe'
}

{ #category : #accessing }
RHPipeMessageTest class >> targetClass [

	^ RHPipeMessage.
]

{ #category : #accessing }
RHPipeMessageTest >> defaultBasicTarget [

	^ self targetClass
		send: #value:
		to:
		[ :streams |
		].
]

{ #category : #accessing }
RHPipeMessageTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
RHPipeMessageTest >> testExecuteWithPipeStream [
	|
		pipeStreams
		expected
	|

	expected :=
		1
			to: 3.
	
	pipeStreams := RHPipeStreams new.	
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
