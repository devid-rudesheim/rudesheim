Class {
	#name : #WideToNarrowForAsciiRudesheim,
	#superclass : #Object,
	#traits : 'TPositionForCharacterNormalizeRudesheim',
	#classTraits : 'TPositionForCharacterNormalizeRudesheim classTrait',
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #accessing }
WideToNarrowForAsciiRudesheim class >> offset [

	^ 16rFEE0.
]

{ #category : #accessing }
WideToNarrowForAsciiRudesheim class >> rangeByInterval [

	^ 16r21
		to:	16r7E.

]
