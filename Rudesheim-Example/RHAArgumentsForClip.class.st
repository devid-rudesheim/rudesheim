Class {
	#name : #RHAArgumentsForClip,
	#superclass : #Object,
	#instVars : [
		'rsCanvas',
		'rsAnimationLoopEvent',
		'rhExampleResource'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
RHAArgumentsForClip class >> new [

	self shouldNotImplement.
]

{ #category : #'instance creation' }
RHAArgumentsForClip class >> new:	anIndex [

	self shouldNotImplement.
]

{ #category : #'instance creation' }
RHAArgumentsForClip class >> rhaExampleResource:		aRHExampleResource
rsCanvas:				aRSCanvas
rsAnimationLoopEvent:	aRSAnimationLoopEvent [

	^ super new
		setRHAExampleResource:	aRHExampleResource
		rsaCanvas:				aRSCanvas 
		rsAnimationLoopEvent: aRSAnimationLoopEvent.
]

{ #category : #accessing }
RHAArgumentsForClip >> rhaExampleResource [

	^ rhExampleResource
]

{ #category : #accessing }
RHAArgumentsForClip >> rsAnimationLoopEvent [

	^ rsAnimationLoopEvent
]

{ #category : #accessing }
RHAArgumentsForClip >> rsCanvas [

	^ rsCanvas
]

{ #category : #initialization }
RHAArgumentsForClip >> setRHAExampleResource:	aRHExampleResource
rsaCanvas:					aRSCanvas
rsAnimationLoopEvent:		aRSAnimationLoopEvent [
	
	rhExampleResource := aRHExampleResource.
	rsCanvas := aRSCanvas.
	rsAnimationLoopEvent := aRSAnimationLoopEvent.
]
