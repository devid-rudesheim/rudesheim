Class {
	#name : #BasicDelegatorRudesheim,
	#superclass : #DelegatorRudesheim,
	#instVars : [
		'delegate'
	],
	#category : #'Rudesheim-Base-Delegator'
}

{ #category : #'instance creation' }
BasicDelegatorRudesheim class >> delegateTo: anObject [

	^ self basicNew
		delegate: anObject.
]

{ #category : #options }
BasicDelegatorRudesheim >> delegate [

	^ delegate
]

{ #category : #options }
BasicDelegatorRudesheim >> delegate: anObject [

	delegate := anObject
]
