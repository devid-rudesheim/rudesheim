Class {
	#name : #RHPipeMessage,
	#superclass : #RHPipeCommand,
	#traits : 'TRHShouldntNew',
	#classTraits : 'TRHShouldntNew classTrait',
	#instVars : [
		'target',
		'selector'
	],
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #'instance creation' }
RHPipeMessage class >> send: aSelectorSymbol
to: anObject [ 

	^ super new
		setTarget: anObject 
		selector: aSelectorSymbol
]

{ #category : #evaluating }
RHPipeMessage >> executeWithPipeStream: aPipeStream [

	^ target
		perform: selector
		with: aPipeStream.
]

{ #category : #initialization }
RHPipeMessage >> setTarget: anObject
selector: aSelectorSymbol [

	target := anObject.
	selector := aSelectorSymbol.
]
