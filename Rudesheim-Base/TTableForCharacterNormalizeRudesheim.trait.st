Trait {
	#name : #TTableForCharacterNormalizeRudesheim,
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #accessing }
TTableForCharacterNormalizeRudesheim classSide >> associations [

	^ self subclassResponsibility.

]

{ #category : #accessing }
TTableForCharacterNormalizeRudesheim classSide >> dictionary [

	^ self subclassResponsibility.

]

{ #category : #accessing }
TTableForCharacterNormalizeRudesheim >> associations [

	^ self class associations.

]

{ #category : #accessing }
TTableForCharacterNormalizeRudesheim >> dictionary [

	^ self class dictionary.
]
