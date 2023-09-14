Class {
	#name : #InversePositionForCharacterNormalizeRudesheim,
	#superclass : #Object,
	#traits : 'TPositionForCharacterNormalizeRudesheim + TShouldntNewRudesheim',
	#classTraits : 'TPositionForCharacterNormalizeRudesheim classTrait + TShouldntNewRudesheim classTrait',
	#instVars : [
		'trhPositionForCharacterNormalize'
	],
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #accessing }
InversePositionForCharacterNormalizeRudesheim class >> offset [

	^ self shouldNotImplement.
]

{ #category : #accessing }
InversePositionForCharacterNormalizeRudesheim class >> rangeByInterval [

	^ self shouldNotImplement.
]

{ #category : #'instance creation' }
InversePositionForCharacterNormalizeRudesheim class >> withTPositionForCharacterNormalizeRudesheim: aTPositionForCharacterNormalizeRudesheim [

	^ self basicNew
		setTPositionForCharacterNormalizeRudesheim: aTPositionForCharacterNormalizeRudesheim.
]

{ #category : #accessing }
InversePositionForCharacterNormalizeRudesheim >> offset [

	^ self tPositionForCharacterNormalizeRudesheim offset negated.
]

{ #category : #accessing }
InversePositionForCharacterNormalizeRudesheim >> rangeByInterval [
	|
		source
	|
	
	source := self tPositionForCharacterNormalizeRudesheim.

	^ source rangeByInterval + source offset

]

{ #category : #initialization }
InversePositionForCharacterNormalizeRudesheim >> setTPositionForCharacterNormalizeRudesheim: aTPositionForCharacterNormalizeRudesheim [

	ShouldNotNilRudesheim
		assertNotNil:	aTPositionForCharacterNormalizeRudesheim
		withName: 		'aTRHPositionForCharacterNormalize'.

	trhPositionForCharacterNormalize := aTPositionForCharacterNormalizeRudesheim
]

{ #category : #accessing }
InversePositionForCharacterNormalizeRudesheim >> tPositionForCharacterNormalizeRudesheim [

	^ trhPositionForCharacterNormalize
]
