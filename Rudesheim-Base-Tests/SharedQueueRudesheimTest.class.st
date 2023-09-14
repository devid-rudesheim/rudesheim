"
A RHSharedQueueTest is a test class for testing the behavior of RHSharedQueue
"
Class {
	#name : #SharedQueueRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Pipe'
}

{ #category : #accessing }
SharedQueueRudesheimTest class >> targetClass [

	^ SharedQueueRudesheim
]

{ #category : #tests }
SharedQueueRudesheimTest >> testAtEnd [

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
SharedQueueRudesheimTest >> testAtEnd0 [

	self
		should: 
		[
			self basicTarget atEnd. 
		]
		raise: TestTookTooMuchTime.
]

{ #category : #tests }
SharedQueueRudesheimTest >> testAtEnd1 [
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
SharedQueueRudesheimTest >> testAtEnd2 [
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
SharedQueueRudesheimTest >> testAtEnd3 [
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
SharedQueueRudesheimTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
SharedQueueRudesheimTest >> testNext [

	self
		testNext0;
		tearDown;
		setUp;
		testNext1.
]

{ #category : #tests }
SharedQueueRudesheimTest >> testNext0 [
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
SharedQueueRudesheimTest >> testNext1 [
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
SharedQueueRudesheimTest >> testPeek [

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
SharedQueueRudesheimTest >> testPeek0 [
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
SharedQueueRudesheimTest >> testPeek1 [
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
SharedQueueRudesheimTest >> testPeek2 [
	|
		target
	|
	
	target := self basicTarget.

	self
		assert: target peek
		equals: nil.
]
