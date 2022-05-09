Class {
	#name : #RHAbstractRange,
	#superclass : #Object,
	#traits : 'TRHBasicRange + TRHShouldntNew',
	#classTraits : 'TRHBasicRange classTrait + TRHShouldntNew classTrait',
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #'instance creation' }
RHAbstractRange class >> fromTRHRange: aTRHRange [ 

	^ super new
		setTRHRange:	aTRHRange.
]

{ #category : #initialization }
RHAbstractRange >> setTRHRange:	aTRHRange [ 

	^ self subclassResponsibility.
]
