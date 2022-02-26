"
A RHBasicDelegatorTest is a test class for testing the behavior of RHBasicDelegator
"
Class {
	#name : #RHBasicDelegatorTest,
	#superclass : #RHDelegatorTest,
	#category : #'Rudesheim-Base-Tests-Delegator'
}

{ #category : #accessing }
RHBasicDelegatorTest class >> targetClass [

	^ RHBasicDelegator.
]

{ #category : #accessing }
RHBasicDelegatorTest >> defaultBasicTarget [

	^ self targetClass
		delegateTo: 1

]

{ #category : #tests }
RHBasicDelegatorTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
RHBasicDelegatorTest >> testDelegate [

	super testDelegate.
]
