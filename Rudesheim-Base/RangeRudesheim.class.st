Class {
	#name : #RangeRudesheim,
	#superclass : #AbstractRangeRudesheim,
	#instVars : [
		'first',
		'last'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
RangeRudesheim >> first [

	^ first.
]

{ #category : #accessing }
RangeRudesheim >> last [

	^ last
]

{ #category : #initialization }
RangeRudesheim >> setTRangeRudesheim: aTRangeRudesheim [

	aTRangeRudesheim first > aTRangeRudesheim last ifTrue: [
		first := aTRangeRudesheim last.
		last := aTRangeRudesheim first.

		^ self ].

	first := aTRangeRudesheim first.
	last := aTRangeRudesheim last
]
