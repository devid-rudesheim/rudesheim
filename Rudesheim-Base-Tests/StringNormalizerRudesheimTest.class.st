"
A RHStringNormalizerTest is a test class for testing the behavior of RHStringNormalizer
"
Class {
	#name : #StringNormalizerRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Normalizer'
}

{ #category : #accessing }
StringNormalizerRudesheimTest class >> targetClass [

	^ StringNormalizerRudesheim.
]

{ #category : #accessing }
StringNormalizerRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		on:	self sourceValue readStream.
]

{ #category : #tests }
StringNormalizerRudesheimTest >> runNext0 [

	self expectedValue
		do:
		[ :each |
			self
				assert:	each 
				equals:	self basicTarget next.
		].

]

{ #category : #tests }
StringNormalizerRudesheimTest >> runPeek0 [
	|
		target
	|
	
	target :=	self basicTarget.
	self expectedValue
		do:
		[ :each |
			self
				assert:	each 
				equals:	target peek.
			
			target next.
		].
]

{ #category : #running }
StringNormalizerRudesheimTest >> setUp [

	super setUp.

	self
		sourceValue: 	'0０9９AＡZＺaａzｚｱア 　'.
]

{ #category : #tests }
StringNormalizerRudesheimTest >> testNext [

	self
		testNext0_0.
]

{ #category : #tests }
StringNormalizerRudesheimTest >> testNext0_0 [

	self
		expectedValue:	self sourceValue;
		runNext0.
]
