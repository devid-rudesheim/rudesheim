Class {
	#name : #RHRange,
	#superclass : #Object,
	#traits : 'TRHRange + TRHShouldntNew',
	#classTraits : 'TRHRange classTrait + TRHShouldntNew classTrait',
	#instVars : [
		'first',
		'last'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #'instance creation' }
RHRange class >> from: 	aFirstMagnitude
to:		aLastMagnitude [
	
	^ super new
		setFrom:	aFirstMagnitude
		to:			aLastMagnitude.
]

{ #category : #'instance creation' }
RHRange class >> fromTRHRange: aTRHRange [ 

	^ super new
		setTRHRange:	aTRHRange.
]

{ #category : #accessing }
RHRange >> first [

	^ first.
]

{ #category : #accessing }
RHRange >> last [
	^ last
]

{ #category : #initialization }
RHRange >> setFrom:	aFirstMagnitude
to:			aLastMagnitude [ 
	
	aFirstMagnitude > aLastMagnitude
		ifTrue:
		[
			first := aLastMagnitude.
			last :=  aFirstMagnitude.
			
			^ self.
		].
	
	first := aFirstMagnitude.
	last := aLastMagnitude.
]

{ #category : #initialization }
RHRange >> setTRHRange:	aTRHRange [ 

	first := aTRHRange first.
	last := aTRHRange last.
]
