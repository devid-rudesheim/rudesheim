"
A RHRangeTest is a test class for testing the behavior of RHRange
"
Class {
	#name : #RHRangeTest,
	#superclass : #RHAbstractRangeTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
RHRangeTest class >> targetClass [

	^ RHRange.
]

{ #category : #tests }
RHRangeTest >> runExtent0 [

	self
		assert: self basicTarget extent
		equals: self actualValue.
]

{ #category : #tests }
RHRangeTest >> runFromTRHRange0 [
	|
		target
	|
	
	target := self basicTarget.
	
	self
		assert:	self actualFirst
		equals:	target first;
		
		assert:	self actualLast
		equals:	target last.
]

{ #category : #tests }
RHRangeTest >> runFromTRHRange1 [
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
RHRangeTest >> runPrintOn0 [

	self
		assert: self basicTarget printString
		equals: self actualValue.
]

{ #category : #tests }
RHRangeTest >> runRangeIncludes0 [
	
	self
		assert:
		(
			self basicTarget
				rangeIncludes:	self sourceValue
		).
]

{ #category : #tests }
RHRangeTest >> runRangeIncludes1 [
	
	self
		deny:
		(
			self basicTarget
				rangeIncludes:	self sourceValue
		).
]

{ #category : #tests }
RHRangeTest >> runSize0 [

	self
		assert: self basicTarget size
		equals: self actualValue.
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

{ #category : #tests }
RHRangeTest >> testEqualsSign [

	self
		testEqualsSign0_0;
		tearDown;
		setUp;
		testEqualsSign1_0.
]

{ #category : #tests }
RHRangeTest >> testEqualsSign0_0 [

	self
		sourceFirst: 	1;
		sourceLast: 	2;
		actualValue:
		(
			self targetClass
				fromTRHRange:
				#(
					1
					2
				)
		);
		runEqualsSign0.
]

{ #category : #tests }
RHRangeTest >> testEqualsSign1_0 [

	self
		sourceFirst: 	2;
		sourceLast: 	3;
		actualValue:
		(
			self targetClass
				fromTRHRange:
				#(
					1
					2
				)
		);
		runEqualsSign1.
]

{ #category : #tests }
RHRangeTest >> testExtent [

	self
		testExtent0_0;
		tearDown;
		setUp;
		testExtent0_1.
]

{ #category : #tests }
RHRangeTest >> testExtent0_0 [

	self
		actualValue:  	1;
		sourceFirst: 	1;
		sourceLast: 	2;
		runExtent0.
]

{ #category : #tests }
RHRangeTest >> testExtent0_1 [

	self
		actualValue:  	2;
		sourceFirst: 	1;
		sourceLast: 	3;
		runExtent0.
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
		testFromTRHRange0_0;
		tearDown;
		setUp;
		testFromTRHRange1_0.
]

{ #category : #tests }
RHRangeTest >> testFromTRHRange0_0 [

	self
		sourceFirst:	2;
		sourceLast: 	1;
		actualFirst:	1;
		actualLast: 	2;
		runFromTRHRange0.
]

{ #category : #tests }
RHRangeTest >> testFromTRHRange1_0 [

	self
		actualFirst: 	1;
		sourceFirst: 	self actualFirst;
		actualLast:		2;
		sourceLast: 	self actualLast;
		runFromTRHRange1.
]

{ #category : #tests }
RHRangeTest >> testHash [

	self
		testHash0_0;
		tearDown;
		setUp;
		testHash1_0.
]

{ #category : #tests }
RHRangeTest >> testHash0_0 [

	self
		sourceFirst: 	1;
		sourceLast: 	2;
		actualValue:
		(
			self targetClass
				fromTRHRange:
				#(
					1
					2
				)
		);
		runHash0.
]

{ #category : #tests }
RHRangeTest >> testHash1_0 [

	self
		sourceFirst: 	2;
		sourceLast: 	3;
		actualValue:
		(
			self targetClass
				fromTRHRange:
				#(
					1
					2
				)
		);
		runHash1.
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
RHRangeTest >> testPrintOn [

	self
		testPrintOn0_0;
		tearDown;
		setUp;
		testPrintOn0_1.
]

{ #category : #tests }
RHRangeTest >> testPrintOn0_0 [

	self
		actualValue:  	'1 - 2';
		sourceFirst: 	1;
		sourceLast: 	2;
		runPrintOn0.
]

{ #category : #tests }
RHRangeTest >> testPrintOn0_1 [

	self
		actualValue:  	'3 - 4';
		sourceFirst: 	3;
		sourceLast: 	4;
		runPrintOn0.
]

{ #category : #tests }
RHRangeTest >> testRangeIncludes [
	
	self
		testRangeIncludes0_0;
		tearDown;
		setUp;
		testRangeIncludes0_1;
		tearDown;
		setUp;
		testRangeIncludes1_0;
		tearDown;
		setUp;
		testRangeIncludes1_1.

]

{ #category : #tests }
RHRangeTest >> testRangeIncludes0_0 [
	
	self
		sourceValue:	1;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes0.
]

{ #category : #tests }
RHRangeTest >> testRangeIncludes0_1 [
	
	self
		sourceValue:	1;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes0.
]

{ #category : #tests }
RHRangeTest >> testRangeIncludes1_0 [
	
	self
		sourceValue:	0;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes1.
]

{ #category : #tests }
RHRangeTest >> testRangeIncludes1_1 [
	
	self
		sourceValue:	3;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes1.
]

{ #category : #tests }
RHRangeTest >> testSize [

	self
		testSize0_0;
		tearDown;
		setUp;
		testSize0_1.
]

{ #category : #tests }
RHRangeTest >> testSize0_0 [

	self
		actualValue:  	1;
		sourceFirst: 	1;
		sourceLast: 	2;
		runSize0.
]

{ #category : #tests }
RHRangeTest >> testSize0_1 [

	self
		actualValue:  	2;
		sourceFirst: 	1;
		sourceLast: 	3;
		runSize0.
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
