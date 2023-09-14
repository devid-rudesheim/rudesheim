Class {
	#name : #ElasticitySatelliteClipRudesheim,
	#superclass : #SatelliteClipRudesheim,
	#category : #'Rudesheim-Example'
}

{ #category : #effects }
ElasticitySatelliteClipRudesheim >> radiusFor:	aNumber
with:		aRHArgumentsForClip [
	|
		resource
	|
	
	resource := aRHArgumentsForClip aExampleResourceRudesheim.
	
	^ resource baseRadius * ( resource deltaForCircle * aNumber ) cos.
]
