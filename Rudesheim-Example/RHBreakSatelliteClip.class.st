Class {
	#name : #RHBreakSatelliteClip,
	#superclass : #RHSatelliteClip,
	#category : #'Rudesheim-Example'
}

{ #category : #effects }
RHBreakSatelliteClip >> radiusFor:	aNumber
with:		aRHArgumentsForClip [
	|
		resource
	|
	
	resource := aRHArgumentsForClip rhExampleResource.
	
	^ resource baseRadius * ( resource deltaForCircle * aNumber ) cos.
]
