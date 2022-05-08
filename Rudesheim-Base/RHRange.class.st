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
RHRange >> setTRHRange:	aTRHRange [ 

	aTRHRange first > aTRHRange last
		ifTrue:
		[
			first := aTRHRange last.
			last :=  aTRHRange first.
			
			^ self.
		].
	
	first := aTRHRange first.
	last := aTRHRange last.
]
