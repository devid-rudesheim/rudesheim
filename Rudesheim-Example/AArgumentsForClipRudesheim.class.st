Class {
	#name : #AArgumentsForClipRudesheim,
	#superclass : #Object,
	#instVars : [
		'rsCanvas',
		'rsAnimationLoopEvent',
		'exampleResourceRudesheim'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
AArgumentsForClipRudesheim class >> aExampleResourceRudesheim:	aExampleResourceRudesheim
rsCanvas:							aRSCanvas
rsAnimationLoopEvent:			aRSAnimationLoopEvent [

	^ super new
		setAExampleResourceRudesheim:	aExampleResourceRudesheim
		rsaCanvas:							aRSCanvas 
		rsAnimationLoopEvent: 			aRSAnimationLoopEvent.
]

{ #category : #'instance creation' }
AArgumentsForClipRudesheim class >> new [

	self shouldNotImplement.
]

{ #category : #'instance creation' }
AArgumentsForClipRudesheim class >> new:	anIndex [

	self shouldNotImplement.
]

{ #category : #accessing }
AArgumentsForClipRudesheim >> aExampleResourceRudesheim [

	^ exampleResourceRudesheim
]

{ #category : #accessing }
AArgumentsForClipRudesheim >> rsAnimationLoopEvent [

	^ rsAnimationLoopEvent
]

{ #category : #accessing }
AArgumentsForClipRudesheim >> rsCanvas [

	^ rsCanvas
]

{ #category : #initialization }
AArgumentsForClipRudesheim >> setAExampleResourceRudesheim:	aExampleResourceRudesheim
rsaCanvas:							aRSCanvas
rsAnimationLoopEvent:				aRSAnimationLoopEvent [
	
	exampleResourceRudesheim := aExampleResourceRudesheim.
	rsCanvas := aRSCanvas.
	rsAnimationLoopEvent := aRSAnimationLoopEvent.
]
