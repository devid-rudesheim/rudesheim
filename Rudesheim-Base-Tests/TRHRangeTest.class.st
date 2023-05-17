Class {
	#name : #TRHRangeTest,
	#superclass : #RHTest,
	#instVars : [
		'sourceFirst',
		'actualFirst',
		'sourceLast',
		'actualLast'
	],
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
TRHRangeTest >> actualFirst [

	^ actualFirst 
		ifNil:
		[
			actualFirst  := self defaultActualFirst.
		].
]

{ #category : #accessing }
TRHRangeTest >> actualFirst: aMagnitude [

	actualFirst := aMagnitude
]

{ #category : #accessing }
TRHRangeTest >> actualLast [

	^ actualLast 
		ifNil:
		[
			actualLast  := self defaultActualLast.
		].
]

{ #category : #accessing }
TRHRangeTest >> actualLast: aMagnitude [

	actualLast := aMagnitude
]

{ #category : #accessing }
TRHRangeTest >> defaultActualFirst [

	^ 0.
]

{ #category : #accessing }
TRHRangeTest >> defaultActualLast [

	^ 0.
]

{ #category : #accessing }
TRHRangeTest >> defaultSourceFirst [

	^ 0.
]

{ #category : #accessing }
TRHRangeTest >> defaultSourceLast [

	^ 0.
]

{ #category : #tests }
TRHRangeTest >> runEqualsSign0 [

	self
		assert:	self actualValue 
		equals:	self basicTarget.
]

{ #category : #tests }
TRHRangeTest >> runEqualsSign1 [

	self
		deny:	self actualValue
		equals:	self basicTarget.
]

{ #category : #tests }
TRHRangeTest >> runFirst0 [

	self
		assert: 	self basicTarget first
		equals: 	self actualValue.
]

{ #category : #tests }
TRHRangeTest >> runHash0 [

	self
		assert: self actualValue hash
		equals: self basicTarget hash.
]

{ #category : #tests }
TRHRangeTest >> runHash1 [

	self
		deny: 	self actualValue hash
		equals:	self basicTarget hash.
]

{ #category : #tests }
TRHRangeTest >> runLast0 [

	self
		assert: 	self basicTarget last
		equals: 	self actualValue.
]

{ #category : #running }
TRHRangeTest >> setUp [

	super
		setUp.

	self
		sourceFirst:	nil;
		sourceLast: 	nil;
		actualFirst:	nil;
		actualLast: 	nil.
]

{ #category : #accessing }
TRHRangeTest >> sourceFirst [

	^ sourceFirst 
		ifNil:
		[
			sourceFirst  := self defaultSourceFirst.
		].
]

{ #category : #accessing }
TRHRangeTest >> sourceFirst: anObject [

	sourceFirst := anObject
]

{ #category : #accessing }
TRHRangeTest >> sourceLast [

	^ sourceLast 
		ifNil:
		[
			sourceLast  := self defaultSourceLast.
		].
]

{ #category : #accessing }
TRHRangeTest >> sourceLast: anObject [

	sourceLast := anObject
]
