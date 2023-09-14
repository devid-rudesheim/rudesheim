Class {
	#name : #BreakSatelliteClipRudesheim,
	#superclass : #SatelliteClipRudesheim,
	#category : #'Rudesheim-Example'
}

{ #category : #effects }
BreakSatelliteClipRudesheim >> radiusFor:	aNumber
with:		aRHArgumentsForClip [
	|
		resource
	|
	
	resource := aRHArgumentsForClip aExampleResourceRudesheim.
	
	^ resource baseRadius * ( resource deltaForCircle * aNumber ) cos.
]
