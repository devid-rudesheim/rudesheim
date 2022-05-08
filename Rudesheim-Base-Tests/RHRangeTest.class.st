"
A RHRangeTest is a test class for testing the behavior of RHRange
"
Class {
	#name : #RHRangeTest,
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
RHRangeTest class >> targetClass [

	^ RHRange.
]

{ #category : #accessing }
RHRangeTest >> actualFirst [

	^ actualFirst 
		ifNil:
		[
			actualFirst  := self defaultActualFirst.
		].
]

{ #category : #accessing }
RHRangeTest >> actualFirst: aMagnitude [

	actualFirst := aMagnitude
]

{ #category : #accessing }
RHRangeTest >> actualLast [

	^ actualLast 
		ifNil:
		[
			actualLast  := self defaultActualLast.
		].
]

{ #category : #accessing }
RHRangeTest >> actualLast: aMagnitude [

	actualLast := aMagnitude
]

{ #category : #accessing }
RHRangeTest >> defaultActualFirst [

	^ 0.
]

{ #category : #accessing }
RHRangeTest >> defaultActualLast [

	^ 0.
]

{ #category : #accessing }
RHRangeTest >> defaultBasicTarget [

	^ self targetClass
		from:	self sourceFirst
		to:		self sourceLast. 
]

{ #category : #accessing }
RHRangeTest >> defaultSourceFirst [

	^ 0.
]

{ #category : #accessing }
RHRangeTest >> defaultSourceLast [

	^ 0.
]

{ #category : #tests }
RHRangeTest >> runFirst0 [

	self
		assert: 	self basicTarget first
		equals: 	self actualValue.
]

{ #category : #tests }
RHRangeTest >> runFromTRHRange0 [
	|
		target
	|
	
	target :=
		self class targetClass
			fromTRHRange:	self basicTarget.
	
	self
		assert:	self actualFirst
		equals: target first;
		
		assert:	self actualLast
		equals: target last.
]

{ #category : #tests }
RHRangeTest >> runFromTo0 [
	|
		target
	|
	
	target := self basicTarget.
	
	self
		assert:	self actualFirst
		equals: 	target first;
		
		assert:	self actualLast
		equals: 	target last.
]

{ #category : #tests }
RHRangeTest >> runLast0 [

	self
		assert: 	self basicTarget last
		equals: 	self actualValue.
]

{ #category : #tests }
RHRangeTest >> runWithStep0 [
	|
		times
	|
	
	times := 0.

	(
		self basicTarget
			withStep:	1
	)
		do:
		[ :each |
			times := 1.
		].
	
	self
		assert: 	1
		equals: 	times.
]

{ #category : #running }
RHRangeTest >> setUp [

	super
		setUp.

	self
		sourceFirst:		nil;
		sourceLast: 	nil;
		actualFirst:	nil;
		actualLast: 	nil.
]

{ #category : #accessing }
RHRangeTest >> sourceFirst [

	^ sourceFirst 
		ifNil:
		[
			sourceFirst  := self defaultSourceFirst.
		].
]

{ #category : #accessing }
RHRangeTest >> sourceFirst: anObject [

	sourceFirst := anObject
]

{ #category : #accessing }
RHRangeTest >> sourceLast [

	^ sourceLast 
		ifNil:
		[
			sourceLast  := self defaultSourceLast.
		].
]

{ #category : #accessing }
RHRangeTest >> sourceLast: anObject [

	sourceLast := anObject
]

{ #category : #tests }
RHRangeTest >> testFirst [

	self
		testFirst0_0.
]

{ #category : #tests }
RHRangeTest >> testFirst0_0 [

	self
		actualValue: 		1;
		sourceFirst: 		self actualValue;
		sourceLast: 		2;
		runFirst0.
]

{ #category : #tests }
RHRangeTest >> testFromTRHRange [

	self
		testFromTRHRange0_0.
]

{ #category : #tests }
RHRangeTest >> testFromTRHRange0_0 [

	self
		actualFirst: 	1;
		sourceFirst: 	self actualFirst;
		actualLast:	2;
		sourceLast: 	self actualLast;
		runFromTRHRange0.
]

{ #category : #tests }
RHRangeTest >> testFromTo [

	self
		testFromTo0_0.
]

{ #category : #tests }
RHRangeTest >> testFromTo0_0 [

	self
		sourceFirst:		2;
		sourceLast: 	1;
		actualFirst:	1;
		actualLast: 	2;
		runFromTo0.
]

{ #category : #tests }
RHRangeTest >> testLast [

	self
		testLast0_0.
]

{ #category : #tests }
RHRangeTest >> testLast0_0 [

	self
		actualValue:	1;
		sourceLast: 	self actualValue ;
		runLast0.
]

{ #category : #tests }
RHRangeTest >> testWithStep [

	self
		testWithStep0_0.
]

{ #category : #tests }
RHRangeTest >> testWithStep0_0 [

	self runWithStep0.
]
