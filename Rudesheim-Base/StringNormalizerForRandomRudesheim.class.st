Class {
	#name : #StringNormalizerForRandomRudesheim,
	#superclass : #StringNormalizerRudesheim,
	#instVars : [
		'tTableForCharacterNormalizeRudesheim'
	],
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #'instance creation' }
StringNormalizerForRandomRudesheim class >> on: aReadStream withTTableForCharacterNormalizeRudesheim: aTTableForCharacterNormalizeRudesheim [

	^
	(
		super
			on: aReadStream
	)
		  tTableForCharacterNormalizeRudesheim: 	aTTableForCharacterNormalizeRudesheim;
		  yourself
]

{ #category : #accessing }
StringNormalizerForRandomRudesheim >> defaultTTableForCharacterNormalizeRudesheim [

	^ KanaTableRudesheim.

]

{ #category : #accessing }
StringNormalizerForRandomRudesheim >> peek [
	|
		value		
	|
	
	value := super peek.
	value
		ifNil:
		[
			^ value.
		].
		
	^
	(
		self tTableForCharacterNormalizeRudesheim dictionary 
			at:	value codePoint
			ifAbsent:
			[
				^ value.
			]
	) asCharacter.
]

{ #category : #accessing }
StringNormalizerForRandomRudesheim >> tTableForCharacterNormalizeRudesheim [

	^ tTableForCharacterNormalizeRudesheim
		ifNil:
		[
			tTableForCharacterNormalizeRudesheim := self defaultTTableForCharacterNormalizeRudesheim.
		].

]

{ #category : #accessing }
StringNormalizerForRandomRudesheim >> tTableForCharacterNormalizeRudesheim: aTTableForCharacterNormalizeRudesheim [

	tTableForCharacterNormalizeRudesheim := aTTableForCharacterNormalizeRudesheim.
]
