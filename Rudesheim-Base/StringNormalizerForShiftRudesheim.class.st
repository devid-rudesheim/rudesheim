Class {
	#name : #StringNormalizerForShiftRudesheim,
	#superclass : #StringNormalizerRudesheim,
	#instVars : [
		'tPositionForCharacterNormalizeRudesheim'
	],
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #'instance creation' }
StringNormalizerForShiftRudesheim class >> on: aReadStream
withTPositionForCharacterNormalizeRudesheim: aTPositionForCharacterNormalizeRudesheim [

	^
	(
		super
			on: aReadStream
	)
		tPositionForCharacterNormalizeRudesheim: aTPositionForCharacterNormalizeRudesheim;
		yourself
]

{ #category : #accessing }
StringNormalizerForShiftRudesheim >> defaultTPositionForCharacterNormalizeRudesheim [

	^ WideToNarrowForAsciiRudesheim.
]

{ #category : #accessing }
StringNormalizerForShiftRudesheim >> peek [
	|
		value
		codePoint
		position
	|
	
	value := super peek.
	value
		ifNil:
		[
			^ value.
		].
	
	position := self tPositionForCharacterNormalizeRudesheim.
	codePoint := value codePoint - position offset.
		
	(
		position rangeByInterval
			rangeIncludes:	codePoint
	)	
		ifFalse:
		[
			^ value
		].
	
	^ codePoint asCharacter.
]

{ #category : #accessing }
StringNormalizerForShiftRudesheim >> tPositionForCharacterNormalizeRudesheim [

	^ tPositionForCharacterNormalizeRudesheim
		ifNil:
		[
			tPositionForCharacterNormalizeRudesheim := self defaultTPositionForCharacterNormalizeRudesheim.
		].

]

{ #category : #accessing }
StringNormalizerForShiftRudesheim >> tPositionForCharacterNormalizeRudesheim: aTPositionForCharacterNormalizeRudesheim [

	tPositionForCharacterNormalizeRudesheim := aTPositionForCharacterNormalizeRudesheim
]
