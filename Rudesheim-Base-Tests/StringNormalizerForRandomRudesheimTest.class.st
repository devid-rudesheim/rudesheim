"
A RHStringNormalizerForRandomTest is a test class for testing the behavior of RHStringNormalizerForRandom
"
Class {
	#name : #StringNormalizerForRandomRudesheimTest,
	#superclass : #StringNormalizerRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Normalizer'
}

{ #category : #accessing }
StringNormalizerForRandomRudesheimTest class >> targetClass [

	^ StringNormalizerForRandomRudesheim.
]

{ #category : #tests }
StringNormalizerForRandomRudesheimTest >> testOnWithTTableForCharacterNormalizeRudesheim [

	self
		basicTarget:
		(
			self targetClass
				on: self sourceValue readStream
				withTTableForCharacterNormalizeRudesheim: KanaTableRudesheim
		);
		testPeek.
]

{ #category : #tests }
StringNormalizerForRandomRudesheimTest >> testPeek [

	self
		testPeek0_0.
]

{ #category : #tests }
StringNormalizerForRandomRudesheimTest >> testPeek0_0 [

	self
		expectedValue:	'0０9９AＡZＺaａzｚアア 　';
		runPeek0.
]

{ #category : #tests }
StringNormalizerForRandomRudesheimTest >> testPeek0_1 [

	self
		expectedValue:	'0０9９AＡZＺaａzｚアア 　';
		runPeek0.
]
