"
A RHBasicDelegatorTest is a test class for testing the behavior of RHBasicDelegator
"
Class {
	#name : #BasicDelegatorRudesheimTest,
	#superclass : #DelegatorRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Delegator'
}

{ #category : #accessing }
BasicDelegatorRudesheimTest class >> targetClass [

	^ BasicDelegatorRudesheim.
]

{ #category : #accessing }
BasicDelegatorRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		delegateTo: 1

]

{ #category : #tests }
BasicDelegatorRudesheimTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
BasicDelegatorRudesheimTest >> testDelegate [

	super testDelegate.
]
