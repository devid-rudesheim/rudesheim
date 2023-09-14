Class {
	#name : #TRangeRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#instVars : [
		'sourceFirst',
		'actualFirst',
		'sourceLast',
		'actualLast'
	],
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
TRangeRudesheimTest >> actualFirst [

	^ actualFirst 
		ifNil:
		[
			actualFirst  := self defaultActualFirst.
		].
]

{ #category : #accessing }
TRangeRudesheimTest >> actualFirst: aMagnitude [

	actualFirst := aMagnitude
]

{ #category : #accessing }
TRangeRudesheimTest >> actualLast [

	^ actualLast 
		ifNil:
		[
			actualLast  := self defaultActualLast.
		].
]

{ #category : #accessing }
TRangeRudesheimTest >> actualLast: aMagnitude [

	actualLast := aMagnitude
]

{ #category : #accessing }
TRangeRudesheimTest >> defaultActualFirst [

	^ 0.
]

{ #category : #accessing }
TRangeRudesheimTest >> defaultActualLast [

	^ 0.
]

{ #category : #accessing }
TRangeRudesheimTest >> defaultSourceFirst [

	^ 0.
]

{ #category : #accessing }
TRangeRudesheimTest >> defaultSourceLast [

	^ 0.
]

{ #category : #tests }
TRangeRudesheimTest >> runEqualsSign0 [

	self
		assert:	self expectedValue 
		equals:	self basicTarget.
]

{ #category : #tests }
TRangeRudesheimTest >> runEqualsSign1 [

	self
		deny:	self expectedValue
		equals:	self basicTarget.
]

{ #category : #tests }
TRangeRudesheimTest >> runFirst0 [

	self
		assert: 	self basicTarget first
		equals: 	self expectedValue.
]

{ #category : #tests }
TRangeRudesheimTest >> runHash0 [

	self
		assert: self expectedValue hash
		equals: self basicTarget hash.
]

{ #category : #tests }
TRangeRudesheimTest >> runHash1 [

	self
		deny: 	self expectedValue hash
		equals:	self basicTarget hash.
]

{ #category : #tests }
TRangeRudesheimTest >> runLast0 [

	self
		assert: 	self basicTarget last
		equals: 	self expectedValue.
]

{ #category : #running }
TRangeRudesheimTest >> setUp [

	super
		setUp.

	self
		sourceFirst:	nil;
		sourceLast: 	nil;
		actualFirst:	nil;
		actualLast: 	nil.
]

{ #category : #accessing }
TRangeRudesheimTest >> sourceFirst [

	^ sourceFirst 
		ifNil:
		[
			sourceFirst  := self defaultSourceFirst.
		].
]

{ #category : #accessing }
TRangeRudesheimTest >> sourceFirst: anObject [

	sourceFirst := anObject
]

{ #category : #accessing }
TRangeRudesheimTest >> sourceLast [

	^ sourceLast 
		ifNil:
		[
			sourceLast  := self defaultSourceLast.
		].
]

{ #category : #accessing }
TRangeRudesheimTest >> sourceLast: anObject [

	sourceLast := anObject
]
