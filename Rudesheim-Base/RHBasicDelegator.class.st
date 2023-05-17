Class {
	#name : #RHBasicDelegator,
	#superclass : #RHDelegator,
	#instVars : [
		'delegate'
	],
	#category : #'Rudesheim-Base-Delegator'
}

{ #category : #'instance creation' }
RHBasicDelegator class >> delegateTo: anObject [

	^ self basicNew
		delegate: anObject.
]

{ #category : #options }
RHBasicDelegator >> delegate [

	^ delegate
]

{ #category : #options }
RHBasicDelegator >> delegate: anObject [

	delegate := anObject
]
