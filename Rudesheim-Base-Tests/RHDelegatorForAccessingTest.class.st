"
A RHDelegationForAccessingTest is a test class for testing the behavior of RHDelegationForAccessing
"
Class {
	#name : #RHDelegatorForAccessingTest,
	#superclass : #RHDelegatorTest,
	#category : #'Rudesheim-Base-Tests-Delegator'
}

{ #category : #accessing }
RHDelegatorForAccessingTest class >> targetClass [

	^ RHDelegatorForAccessing.
]

{ #category : #accessing }
RHDelegatorForAccessingTest >> defaultBasicTarget [

	^ self targetClass
		targetFrom:	#yourself
		of:				1.
]

{ #category : #tests }
RHDelegatorForAccessingTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
RHDelegatorForAccessingTest >> testDelegate [

	super testDelegate.
]
