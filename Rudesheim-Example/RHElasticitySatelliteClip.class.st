Class {
	#name : #RHElasticitySatelliteClip,
	#superclass : #RHSatelliteClip,
	#category : #'Rudesheim-Example'
}

{ #category : #effects }
RHElasticitySatelliteClip >> radiusFor:	aNumber
with:		aRHArgumentsForClip [
	|
		resource
	|
	
	resource := aRHArgumentsForClip rhExampleResource.
	
	^ resource baseRadius * ( resource deltaForCircle * aNumber ) cos.
]
