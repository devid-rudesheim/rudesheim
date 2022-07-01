"
A RHPipeTest is a test class for testing the behavior of RHPipe
"
Class {
	#name : #RHPipeTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Base-Tests-Pipe'
}

{ #category : #accessing }
RHPipeTest class >> targetClass [

	^ RHPipe.
]

{ #category : #accessing }
RHPipeTest >> defaultBasicTarget [

	^ self targetClass
			withPipeCommands:
			{
			}

]

{ #category : #tests }
RHPipeTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
RHPipeTest >> testWriteStreamDoReadStreamDo [

	self
		testWriteStreamDoReadStreamDo0;
		tearDown;
		setUp;
		testWriteStreamDoReadStreamDo1;
		tearDown;
		setUp;
		testWriteStreamDoReadStreamDo2;
		tearDown;
		setUp;
		testWriteStreamDoReadStreamDo3;
		tearDown;
		setUp;
		testWriteStreamDoReadStreamDo4.
]

{ #category : #tests }
RHPipeTest >> testWriteStreamDoReadStreamDo0 [
	|
		expecteds
	|
	
	expecteds :=
		1
			to: 3.
	
	(
		self targetClass
			withPipeCommands:
			{
			}
	)
		writeStreamDo:
		[ :stream |
			stream 
				nextPutAll: expecteds.
		]
		readStreamDo:
		[ :stream |
			expecteds
				do:
				[ :each |
					self
						assert: stream next
						equals: each.
				].
		].
]

{ #category : #tests }
RHPipeTest >> testWriteStreamDoReadStreamDo1 [
	|
		expecteds
		actual
	|
	
	actual := OrderedCollection new.
	expecteds :=
		1
			to: 3.
	
	(
		self targetClass
			withPipeCommands:
			{
				RHPipeEcho
			}
	)
		writeStreamDo:
		[ :stream |
			stream 
				nextPutAll: expecteds.
		]
		readStreamDo:
		[ :stream |
			actual
				addAll: stream.
		].

	self
		assert: actual asArray
		equals: expecteds  asArray.

]

{ #category : #tests }
RHPipeTest >> testWriteStreamDoReadStreamDo2 [
	|
		expecteds
	|
	
	expecteds :=
		1
			to: 3.
	
	(
		self targetClass
			withPipeCommands:
			{
				RHPipeEcho
			}
	)
		writeStreamDo:
		[ :stream |
			stream 
				nextPutAll: expecteds.
		]
		readStreamDo:
		[ :stream |
			self
				assert: stream atEnd not.
				
			expecteds :=
				expecteds 
					copyWith: 4.
		
			expecteds
				do:
				[ :each |
					stream atEnd
						ifTrue:
						[
							thisContext return.
						].
				
					self
						assert: stream next
						equals: each.
				].
		].
]

{ #category : #tests }
RHPipeTest >> testWriteStreamDoReadStreamDo3 [
	|
		expecteds
	|
	
	expecteds :=
		1
			to: 3.
	
	(
		self targetClass
			withPipeCommands:
			{
				RHPipeEcho.
				RHPipeEcho.
			}
	)
		writeStreamDo:
		[ :stream |
			stream 
				nextPutAll: expecteds.
		]
		readStreamDo:
		[ :stream |
			self
				assert: stream atEnd not.
				
			expecteds :=
				expecteds 
					copyWith: 4.
		
			expecteds
				do:
				[ :each |
					stream atEnd
						ifTrue:
						[
							thisContext return.
						].
				
					self
						assert: stream next
						equals: each.
				].
		].
]

{ #category : #tests }
RHPipeTest >> testWriteStreamDoReadStreamDo4 [
	|
		actual
	|
	
	actual := 1.
	
	self
		assert:	actual
		equals:
		(
			(
				self targetClass
					withPipeCommands:
					{
						RHPipeEcho.
					}
			)
				writeStreamDo:
				[ :stream |
					stream 
						nextPut: actual.
				]
				readStreamDo:
				[ :stream |
					stream next.
				]
		)

]
