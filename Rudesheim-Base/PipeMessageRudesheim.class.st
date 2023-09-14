Class {
	#name : #PipeMessageRudesheim,
	#superclass : #PipeCommandRudesheim,
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#instVars : [
		'target',
		'selector'
	],
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #'instance creation' }
PipeMessageRudesheim class >> send: aSelectorSymbol
to: anObject [ 

	^ super new
		setTarget: anObject 
		selector: aSelectorSymbol
]

{ #category : #evaluating }
PipeMessageRudesheim >> executeWithPipeStream: aPipeStream [

	^ target
		perform: selector
		with: aPipeStream.
]

{ #category : #initialization }
PipeMessageRudesheim >> setTarget: anObject
selector: aSelectorSymbol [

	target := anObject.
	selector := aSelectorSymbol.
]
