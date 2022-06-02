Class {
	#name : #RHSatelliteClip,
	#superclass : #RHClip,
	#category : #'Rudesheim-Example'
}

{ #category : #seam }
RHSatelliteClip >> beginDrawWith:	aRHArgumentsForClip [
	
	aRHArgumentsForClip rsCanvas 
		addAllShapes:	aRHArgumentsForClip rhaExampleResource cursors.
]

{ #category : #drawing }
RHSatelliteClip >> drawWith:	aRHArgumentsForClip [
	|
		canvas
		event
		resource

		baseRadius
		radius
		radian
		tilt
		deltaForInterval
		
		length
		cursors
		deltaForCircle
	 |

	resource := aRHArgumentsForClip rhaExampleResource.
	canvas := aRHArgumentsForClip rsCanvas.
	event := aRHArgumentsForClip  rsAnimationLoopEvent.
	
	length := resource length.
	cursors := resource cursors.
	deltaForCircle := resource deltaForCircle.

	baseRadius   := ( 1 @ 1 ) * 0.8.
	
	deltaForInterval := length /  cursors size.
	tilt := event currentLoop \\ length.
	radius :=
		self
			radiusFor:	tilt
			with: 		aRHArgumentsForClip.
	
	cursors
		withIndexDo: 
		[ :each :index |
			radian  :=   ( ( deltaForInterval * index ) + tilt  ) * deltaForCircle.

			each
				position:	( radian cos @ radian sin )  * radius * (  ( deltaForCircle * tilt ) cos @ 1.0 ).
		].

]

{ #category : #accessing }
RHSatelliteClip >> duration [

	^ Duration
		milliSeconds:  100.
]

{ #category : #seam }
RHSatelliteClip >> endDrawWith:	aRHArgumentsForClip [
	
	aRHArgumentsForClip rhaExampleResource  cursors
		do:
		[ :each |
			each remove.
		]
]

{ #category : #effects }
RHSatelliteClip >> radiusFor:	aNumber
with:		aRHArgumentsForClip [
	
	^ aRHArgumentsForClip rhaExampleResource  baseRadius.
]

{ #category : #effects }
RHSatelliteClip >> radiusWith:	aRHArgumentsForClip [
	
	^ aRHArgumentsForClip rhaExampleResource  baseRadius.
]
