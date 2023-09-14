Class {
	#name : #AbstractRangeRudesheim,
	#superclass : #Object,
	#traits : 'TBasicRangeRudesheim + TShouldntNewRudesheim',
	#classTraits : 'TBasicRangeRudesheim classTrait + TShouldntNewRudesheim classTrait',
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #'instance creation' }
AbstractRangeRudesheim class >> fromTRangeRudesheim: aTRangeRudesheim [ 

	^ super new
		setTRangeRudesheim:	aTRangeRudesheim.
]

{ #category : #initialization }
AbstractRangeRudesheim >> setTRangeRudesheim: aTRangeRudesheim [

	^ self subclassResponsibility
]
