"
A RHRangeTest is a test class for testing the behavior of RHRange
"
Class {
	#name : #RangeRudesheimTest,
	#superclass : #AbstractRangeRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
RangeRudesheimTest class >> targetClass [

	^ RangeRudesheim.
]

{ #category : #tests }
RangeRudesheimTest >> runExtent0 [

	self
		assert: self basicTarget extent
		equals: self expectedValue.
]

{ #category : #tests }
RangeRudesheimTest >> runFromTRangeRudesheim0 [
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
RangeRudesheimTest >> runFromTRangeRudesheim1 [
	|
		target
	|
	
	target :=
		self class targetClass
			fromTRangeRudesheim:	self basicTarget.
	
	self
		assert:	self actualFirst
		equals: target first;
		
		assert:	self actualLast
		equals: target last.
]

{ #category : #tests }
RangeRudesheimTest >> runPrintOn0 [

	self
		assert: self basicTarget printString
		equals: self expectedValue.
]

{ #category : #tests }
RangeRudesheimTest >> runRangeIncludes0 [
	
	self
		assert:
		(
			self basicTarget
				rangeIncludes:	self sourceValue
		).
]

{ #category : #tests }
RangeRudesheimTest >> runRangeIncludes1 [
	
	self
		deny:
		(
			self basicTarget
				rangeIncludes:	self sourceValue
		).
]

{ #category : #tests }
RangeRudesheimTest >> runSize0 [

	self
		assert: self basicTarget size
		equals: self expectedValue.
]

{ #category : #tests }
RangeRudesheimTest >> runWithStep0 [
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
RangeRudesheimTest >> testEqualsSign [

	self
		testEqualsSign0_0;
		tearDown;
		setUp;
		testEqualsSign1_0.
]

{ #category : #tests }
RangeRudesheimTest >> testEqualsSign0_0 [

	self
		sourceFirst: 	1;
		sourceLast: 	2;
		expectedValue:
		(
			self targetClass
				fromTRangeRudesheim:
				#(
					1
					2
				)
		);
		runEqualsSign0.
]

{ #category : #tests }
RangeRudesheimTest >> testEqualsSign1_0 [

	self
		sourceFirst: 	2;
		sourceLast: 	3;
		expectedValue:
		(
			self targetClass
				fromTRangeRudesheim:
				#(
					1
					2
				)
		);
		runEqualsSign1.
]

{ #category : #tests }
RangeRudesheimTest >> testExtent [

	self
		testExtent0_0;
		tearDown;
		setUp;
		testExtent0_1.
]

{ #category : #tests }
RangeRudesheimTest >> testExtent0_0 [

	self
		expectedValue:  	1;
		sourceFirst: 	1;
		sourceLast: 	2;
		runExtent0.
]

{ #category : #tests }
RangeRudesheimTest >> testExtent0_1 [

	self
		expectedValue:  	2;
		sourceFirst: 	1;
		sourceLast: 	3;
		runExtent0.
]

{ #category : #tests }
RangeRudesheimTest >> testFirst [

	self
		testFirst0_0.
]

{ #category : #tests }
RangeRudesheimTest >> testFirst0_0 [

	self
		expectedValue: 		1;
		sourceFirst: 		self expectedValue;
		sourceLast: 		2;
		runFirst0.
]

{ #category : #tests }
RangeRudesheimTest >> testFromTRangeRudesheim [

	self
		testFromTRangeRudesheim0_0;
		tearDown;
		setUp;
		testFromTRangeRudesheim1_0.
]

{ #category : #tests }
RangeRudesheimTest >> testFromTRangeRudesheim0_0 [

	self
		sourceFirst:	2;
		sourceLast: 	1;
		actualFirst:	1;
		actualLast: 	2;
		runFromTRangeRudesheim0.
]

{ #category : #tests }
RangeRudesheimTest >> testFromTRangeRudesheim1_0 [

	self
		actualFirst: 	1;
		sourceFirst: 	self actualFirst;
		actualLast:		2;
		sourceLast:		self actualLast;
		runFromTRangeRudesheim1.
]

{ #category : #tests }
RangeRudesheimTest >> testHash [

	self
		testHash0_0;
		tearDown;
		setUp;
		testHash1_0.
]

{ #category : #tests }
RangeRudesheimTest >> testHash0_0 [

	self
		sourceFirst: 	1;
		sourceLast: 	2;
		expectedValue:
		(
			self targetClass
				fromTRangeRudesheim:
				#(
					1
					2
				)
		);
		runHash0.
]

{ #category : #tests }
RangeRudesheimTest >> testHash1_0 [

	self
		sourceFirst: 	2;
		sourceLast: 	3;
		expectedValue:
		(
			self targetClass
				fromTRangeRudesheim:
				#(
					1
					2
				)
		);
		runHash1.
]

{ #category : #tests }
RangeRudesheimTest >> testLast [

	self
		testLast0_0.
]

{ #category : #tests }
RangeRudesheimTest >> testLast0_0 [

	self
		expectedValue:	1;
		sourceLast: 	self expectedValue ;
		runLast0.
]

{ #category : #tests }
RangeRudesheimTest >> testPrintOn [

	self
		testPrintOn0_0;
		tearDown;
		setUp;
		testPrintOn0_1.
]

{ #category : #tests }
RangeRudesheimTest >> testPrintOn0_0 [

	self
		expectedValue:  	'1 - 2';
		sourceFirst: 	1;
		sourceLast: 	2;
		runPrintOn0.
]

{ #category : #tests }
RangeRudesheimTest >> testPrintOn0_1 [

	self
		expectedValue:  	'3 - 4';
		sourceFirst: 	3;
		sourceLast: 	4;
		runPrintOn0.
]

{ #category : #tests }
RangeRudesheimTest >> testRangeIncludes [
	
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
RangeRudesheimTest >> testRangeIncludes0_0 [
	
	self
		sourceValue:	1;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes0.
]

{ #category : #tests }
RangeRudesheimTest >> testRangeIncludes0_1 [
	
	self
		sourceValue:	1;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes0.
]

{ #category : #tests }
RangeRudesheimTest >> testRangeIncludes1_0 [
	
	self
		sourceValue:	0;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes1.
]

{ #category : #tests }
RangeRudesheimTest >> testRangeIncludes1_1 [
	
	self
		sourceValue:	3;
		sourceFirst: 	1;
		sourceLast:		2;
		runRangeIncludes1.
]

{ #category : #tests }
RangeRudesheimTest >> testSize [

	self
		testSize0_0;
		tearDown;
		setUp;
		testSize0_1.
]

{ #category : #tests }
RangeRudesheimTest >> testSize0_0 [

	self
		expectedValue:  	1;
		sourceFirst: 	1;
		sourceLast: 	2;
		runSize0.
]

{ #category : #tests }
RangeRudesheimTest >> testSize0_1 [

	self
		expectedValue:  	2;
		sourceFirst: 	1;
		sourceLast: 	3;
		runSize0.
]

{ #category : #tests }
RangeRudesheimTest >> testWithStep [

	self
		testWithStep0_0.
]

{ #category : #tests }
RangeRudesheimTest >> testWithStep0_0 [

	self runWithStep0.
]
