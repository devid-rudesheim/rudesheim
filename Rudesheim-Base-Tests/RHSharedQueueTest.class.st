"
A RHSharedQueueTest is a test class for testing the behavior of RHSharedQueue
"
Class {
	#name : #RHSharedQueueTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Base-Tests-Pipe'
}

{ #category : #accessing }
RHSharedQueueTest class >> targetClass [

	^ RHSharedQueue
]

{ #category : #tests }
RHSharedQueueTest >> testAtEnd [

	self
		testAtEnd0;
		tearDown;
		setUp;
		testAtEnd1;
		tearDown;
		setUp;
		testAtEnd2;
		tearDown;
		setUp;
		testAtEnd3.
]

{ #category : #tests }
RHSharedQueueTest >> testAtEnd0 [

	self
		should: 
		[
			self basicTarget atEnd. 
		]
		raise: TestTookTooMuchTime.
]

{ #category : #tests }
RHSharedQueueTest >> testAtEnd1 [
	|
		target
	|
	
	target := self basicTarget.
	target
		nextPut: 1.

	self
		assert: target atEnd not
]

{ #category : #tests }
RHSharedQueueTest >> testAtEnd2 [
	|
		target
	|
	
	target := self basicTarget.
	target
		close.

	self
		assert: target atEnd.
]

{ #category : #tests }
RHSharedQueueTest >> testAtEnd3 [
	|
		target
	|
	
	target := self basicTarget.
	target
		nextPut: 1;
		close.

	self
		assert: target atEnd not;
		assert: target next equals: 1;
		assert: target atEnd.
]

{ #category : #tests }
RHSharedQueueTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
RHSharedQueueTest >> testNext [

	self
		testNext0;
		tearDown;
		setUp;
		testNext1.
]

{ #category : #tests }
RHSharedQueueTest >> testNext0 [
	|
		target
	|
	
	target := self basicTarget.
	target
		nextPut: 1.

	self
		assert: target next
		equals: 1.
]

{ #category : #tests }
RHSharedQueueTest >> testNext1 [
	|
		target
	|
		
	target := self basicTarget.
	target close.

	self
		should: 
		[
			target next.
		]
		raise: self targetClass endOfStreamError.
]

{ #category : #tests }
RHSharedQueueTest >> testPeek [

	self
		testPeek0;
		tearDown;
		setUp;
		testPeek1;
		tearDown;
		setUp;
		testPeek2.
]

{ #category : #tests }
RHSharedQueueTest >> testPeek0 [
	|
		target
	|
	
	target := self basicTarget.
	target
		nextPut: 1.

	self
		assert: target peek
		equals: 1.
]

{ #category : #tests }
RHSharedQueueTest >> testPeek1 [
	|
		target
	|
		
	target := self basicTarget.
	target close.

	self
		should: 
		[
			target peek.
		]
		raise: self targetClass endOfStreamError.
]

{ #category : #tests }
RHSharedQueueTest >> testPeek2 [
	|
		target
	|
	
	target := self basicTarget.

	self
		assert: target peek
		equals: nil.
]
