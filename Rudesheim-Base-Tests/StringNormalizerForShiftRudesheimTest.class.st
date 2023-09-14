Class {
	#name : #StringNormalizerForShiftRudesheimTest,
	#superclass : #StringNormalizerRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Normalizer'
}

{ #category : #accessing }
StringNormalizerForShiftRudesheimTest class >> targetClass [

	^ StringNormalizerForShiftRudesheim.
]

{ #category : #tests }
StringNormalizerForShiftRudesheimTest >> testOnWithTPositionForCharacterNormalizeRudesheim [

	self
		basicTarget:
		(
			self targetClass
				on: self sourceValue readStream
				withTPositionForCharacterNormalizeRudesheim: WideToNarrowForAsciiRudesheim
		);
		testPeek.

]

{ #category : #tests }
StringNormalizerForShiftRudesheimTest >> testPeek [

	self
		testPeek0_0;
		tearDown;
		setUp;
		testPeek0_1.
]

{ #category : #tests }
StringNormalizerForShiftRudesheimTest >> testPeek0_0 [

	self
		expectedValue:	'0099AAZZaazzｱア 　';
		runPeek0.
]

{ #category : #tests }
StringNormalizerForShiftRudesheimTest >> testPeek0_1 [

	self basicTarget
		tPositionForCharacterNormalizeRudesheim:	WideToNarrowForAsciiRudesheim inverse.

	self
		expectedValue:	'００９９ＡＡＺＺａａｚｚｱア 　';
		runPeek0.
]
