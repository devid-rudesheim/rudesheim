Class {
	#name : #RHDelegator,
	#superclass : #ProtoObject,
	#category : #'Rudesheim-Base-Delegator'
}

{ #category : #'instance creation' }
RHDelegator class >> new [
	
	self shouldNotImplement.
]

{ #category : #'instance creation' }
RHDelegator class >> new: anInteger [
	
	self shouldNotImplement.
]

{ #category : #options }
RHDelegator >> delegate [

	self subclassResponsibility.
]

{ #category : #options }
RHDelegator >> doesNotUnderstand: aMessage [

	^ aMessage
		sendTo: self delegate.
]
