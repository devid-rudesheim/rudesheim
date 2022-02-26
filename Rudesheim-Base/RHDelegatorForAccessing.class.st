Class {
	#name : #RHDelegatorForAccessing,
	#superclass : #RHDelegator,
	#instVars : [
		'target',
		'selector'
	],
	#category : #'Rudesheim-Base-Delegator'
}

{ #category : #'instance creation' }
RHDelegatorForAccessing class >> targetFrom:	aSelector
of:				anObject [

	^ self basicNew
		setTargetFrom:	aSelector
		of:					anObject.
]

{ #category : #options }
RHDelegatorForAccessing >> delegate [

	^ target
		perform: selector.
]

{ #category : #initialization }
RHDelegatorForAccessing >> setTargetFrom:	aSelector
of:					anObject [

	target		:= anObject.
	selector	:= aSelector.
]
