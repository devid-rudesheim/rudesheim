Class {
	#name : #RHArgumentsForClip,
	#superclass : #Object,
	#instVars : [
		'rsCanvas',
		'rsAnimationLoopEvent',
		'rhExampleResource'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
RHArgumentsForClip class >> new [

	self shouldNotImplement.
]

{ #category : #'instance creation' }
RHArgumentsForClip class >> new:	anIndex [

	self shouldNotImplement.
]

{ #category : #'instance creation' }
RHArgumentsForClip class >> rhExampleResource:		aRHExampleResource
rsCanvas:					aRSCanvas
rsAnimationLoopEvent:		aRSAnimationLoopEvent [

	^ super new
		setRHExampleResource:	aRHExampleResource
		 rsCanvas:					aRSCanvas 
		 rsAnimationLoopEvent: 	aRSAnimationLoopEvent.
]

{ #category : #accessing }
RHArgumentsForClip >> rhExampleResource [

	^ rhExampleResource
]

{ #category : #accessing }
RHArgumentsForClip >> rsAnimationLoopEvent [

	^ rsAnimationLoopEvent
]

{ #category : #accessing }
RHArgumentsForClip >> rsCanvas [

	^ rsCanvas
]

{ #category : #initialization }
RHArgumentsForClip >> setRHExampleResource:	aRHExampleResource
rsCanvas:					aRSCanvas
rsAnimationLoopEvent:		aRSAnimationLoopEvent [
	
	rhExampleResource := aRHExampleResource.
	rsCanvas := aRSCanvas.
	rsAnimationLoopEvent := aRSAnimationLoopEvent.
]
