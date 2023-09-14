Trait {
	#name : #TPositionForCharacterNormalizeRudesheim,
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #accessing }
TPositionForCharacterNormalizeRudesheim classSide >> classForInverse [

	^ InversePositionForCharacterNormalizeRudesheim.
]

{ #category : #operations }
TPositionForCharacterNormalizeRudesheim classSide >> inverse [

	^ self classForInverse
		withTPositionForCharacterNormalizeRudesheim:	self.
]

{ #category : #accessing }
TPositionForCharacterNormalizeRudesheim classSide >> offset [

	^ 16r0.
]

{ #category : #accessing }
TPositionForCharacterNormalizeRudesheim classSide >> rangeByInterval [

	^ 0
		to:	1.
]

{ #category : #operations }
TPositionForCharacterNormalizeRudesheim >> inverse [
	
	^ self class classForInverse
		withTPositionForCharacterNormalizeRudesheim:	self.
]

{ #category : #accessing }
TPositionForCharacterNormalizeRudesheim >> offset [

	^ self class offset.
]

{ #category : #accessing }
TPositionForCharacterNormalizeRudesheim >> rangeByInterval [

	^ self class rangeByInterval.
]
