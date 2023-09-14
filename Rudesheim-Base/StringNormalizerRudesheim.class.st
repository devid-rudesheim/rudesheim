Class {
	#name : #StringNormalizerRudesheim,
	#superclass : #DecoratorStream,
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #accessing }
StringNormalizerRudesheim >> next [
	|
		value
	|
	
	value := self peek.
	super next.
	
	^ value.
]
