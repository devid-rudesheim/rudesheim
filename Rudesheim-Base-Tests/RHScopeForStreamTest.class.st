"
A RHScopeForStreamTest is a test class for testing the behavior of RHScopeForStream
"
Class {
	#name : #RHScopeForStreamTest,
	#superclass : #RHTest,
	#instVars : [
		'sourceStream'
	],
	#category : #'Rudesheim-Base-Tests-Streaming'
}

{ #category : #accessing }
RHScopeForStreamTest class >> targetClass [

	^ RHScopeForStream
]

{ #category : #accessing }
RHScopeForStreamTest >> defaultBasicTarget [

	^ self targetClass
		on:	self sourceStream.
]

{ #category : #accessing }
RHScopeForStreamTest >> defaultSourceStream [
	
	^ MockObject new
		on:	#close
		yourself.
]

{ #category : #tests }
RHScopeForStreamTest >> runDo0 [
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
RHScopeForStreamTest >> setUp [

	super setUp.
	
	self
		sourceStream:	nil.
]

{ #category : #accessing }
RHScopeForStreamTest >> sourceStream [

	^ sourceStream
		ifNil:
		[
			sourceStream := self defaultSourceStream.
		].
]

{ #category : #accessing }
RHScopeForStreamTest >> sourceStream: aStream [

	sourceStream := aStream
]

{ #category : #tests }
RHScopeForStreamTest >> testDo [

	self
		testDo0_0;
		tearDown;
		setUp;
		testDo0_1.
]

{ #category : #tests }
RHScopeForStreamTest >> testDo0_0 [

	self runDo0.
]

{ #category : #tests }
RHScopeForStreamTest >> testDo0_1 [

	self
		basicTarget:	self sourceStream intoRHScope;
		runDo0.
]
