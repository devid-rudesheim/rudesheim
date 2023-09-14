Class {
	#name : #SatelliteClipRudesheim,
	#superclass : #ClipRudesheim,
	#category : #'Rudesheim-Example'
}

{ #category : #seam }
SatelliteClipRudesheim >> beginDrawWith:	aRHArgumentsForClip [
	
	aRHArgumentsForClip rsCanvas 
		addAllShapes:	aRHArgumentsForClip aExampleResourceRudesheim cursors.
]

{ #category : #drawing }
SatelliteClipRudesheim >> drawWith:	aRHArgumentsForClip [
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

	resource := aRHArgumentsForClip aExampleResourceRudesheim.
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
SatelliteClipRudesheim >> duration [

	^ Duration
		milliSeconds:  100.
]

{ #category : #seam }
SatelliteClipRudesheim >> endDrawWith:	aRHArgumentsForClip [
	
	aRHArgumentsForClip aExampleResourceRudesheim  cursors
		do:
		[ :each |
			each remove.
		]
]

{ #category : #effects }
SatelliteClipRudesheim >> radiusFor:	aNumber
with:		aRHArgumentsForClip [
	
	^ aRHArgumentsForClip aExampleResourceRudesheim  baseRadius.
]

{ #category : #effects }
SatelliteClipRudesheim >> radiusWith:	aRHArgumentsForClip [
	
	^ aRHArgumentsForClip aExampleResourceRudesheim  baseRadius.
]
