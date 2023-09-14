"
A RHScopeForStreamTest is a test class for testing the behavior of RHScopeForStream
"
Class {
	#name : #ScopeForStreamRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#instVars : [
		'sourceStream'
	],
	#category : #'Rudesheim-Base-Tests-Streaming'
}

{ #category : #accessing }
ScopeForStreamRudesheimTest class >> targetClass [

	^ ScopeForStreamRudesheim
]

{ #category : #accessing }
ScopeForStreamRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		on:	self sourceStream.
]

{ #category : #accessing }
ScopeForStreamRudesheimTest >> defaultSourceStream [
	
	^ MockObject new
		on:	#close
		yourself.
]

{ #category : #tests }
ScopeForStreamRudesheimTest >> runDo0 [
	|
		times
	|
	
	times := 0.
	
	self
		should:
		[
			self basicTarget
				do:
				[ :stream |
					times := 1.
					
					self
						assert:	self sourceStream
						equals:	stream.

					1 / 0.
				].
				
				self fail.
		]
		raise:	ZeroDivide.
	
	self
		assert:	1
		equals:	times.
	
	self
		verify:	self sourceStream.
]

{ #category : #running }
ScopeForStreamRudesheimTest >> setUp [

	super setUp.
	
	self
		sourceStream:	nil.
]

{ #category : #accessing }
ScopeForStreamRudesheimTest >> sourceStream [

	^ sourceStream
		ifNil:
		[
			sourceStream := self defaultSourceStream.
		].
]

{ #category : #accessing }
ScopeForStreamRudesheimTest >> sourceStream: aStream [

	sourceStream := aStream
]

{ #category : #tests }
ScopeForStreamRudesheimTest >> testDo [

	self
		testDo0_0;
		tearDown;
		setUp;
		testDo0_1.
]

{ #category : #tests }
ScopeForStreamRudesheimTest >> testDo0_0 [

	self runDo0.
]

{ #category : #tests }
ScopeForStreamRudesheimTest >> testDo0_1 [

	self
		basicTarget:	self sourceStream intoRHScope;
		runDo0.
]
