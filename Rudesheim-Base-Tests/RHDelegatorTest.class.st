"
A RHDelegatorTest is a test class for testing the behavior of RHDelegator
"
Class {
	#name : #RHDelegatorTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Base-Tests-Delegator'
}

{ #category : #tests }
RHDelegatorTest >> testDelegate [

	self
		testDelegate0;
		tearDown;
		setUp;
		testDelegate1;
		tearDown;
		setUp;
		testDelegate2;
		tearDown;
		setUp;
		testDelegate3.
]

{ #category : #tests }
RHDelegatorTest >> testDelegate0 [

	self
		assert:	self basicTarget delegate
		equals:	1.
]

{ #category : #tests }
RHDelegatorTest >> testDelegate1 [

	self
		assert:	1 + self basicTarget delegate
		equals:	2.
	
	self
		deny:		1 + self basicTarget delegate
		equals:	1.

]

{ #category : #tests }
RHDelegatorTest >> testDelegate2 [
	
	self
		assert:	2 > self basicTarget delegate;
		deny:		2 < self basicTarget delegate.

]

{ #category : #tests }
RHDelegatorTest >> testDelegate3 [
	
	self
		assert:	1 + self basicTarget
		equals:	2.

]
