"
A RHIntervalTest is a test class for testing the behavior of RHInterval
"
Class {
	#name : #IntervalRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
IntervalRudesheimTest class >> targetClass [

	^ IntervalRudesheim.
]

{ #category : #accessing }
IntervalRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		from:	self sourceValue first
		to:		self sourceValue last
		by:
		(
			Duration
				days: 1
		).
]

{ #category : #tests }
IntervalRudesheimTest >> runDo0 [
	|
		expected
	|
	
	expected :=	
		self basicTarget
			collect:
			[ :each |
				each
			].
	
	self
		assertCollection:	self expectedValue
		equals:				expected asArray.
]

{ #category : #tests }
IntervalRudesheimTest >> runSize0 [

	self
		assert:		self expectedValue
		equals:		self basicTarget size.
]

{ #category : #tests }
IntervalRudesheimTest >> testDo [

	self
		testDo0_0.
]

{ #category : #tests }
IntervalRudesheimTest >> testDo0_0 [

	self
		sourceValue:
		(
			RangeRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-1'
							'2000-1-3'
						)
				)
		);
		expectedValue:
		{
			'2000-1-1' asDateAndTime.
			'2000-1-2' asDateAndTime.
			'2000-1-3' asDateAndTime.
		};
		runDo0.
]

{ #category : #tests }
IntervalRudesheimTest >> testSize [

	self
		testSize0_0.
]

{ #category : #tests }
IntervalRudesheimTest >> testSize0_0 [

	self
		sourceValue:
		(
			RangeRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2020-1-1'
							'2020-1-3'
						)
				)
		);
		expectedValue:	3;
		runSize0.
]
