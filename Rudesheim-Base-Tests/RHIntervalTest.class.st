"
A RHIntervalTest is a test class for testing the behavior of RHInterval
"
Class {
	#name : #RHIntervalTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
RHIntervalTest class >> targetClass [

	^ RHInterval.
]

{ #category : #accessing }
RHIntervalTest >> defaultBasicTarget [

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
RHIntervalTest >> runDo0 [
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
		assertCollection:	self actualValue
		equals:				expected asArray.
]

{ #category : #tests }
RHIntervalTest >> runSize0 [

	self
		assert:		self actualValue
		equals:		self basicTarget size.
]

{ #category : #tests }
RHIntervalTest >> testDo [

	self
		testDo0_0.
]

{ #category : #tests }
RHIntervalTest >> testDo0_0 [

	self
		sourceValue:
		(
			RHRange
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-1'
							'2000-1-3'
						)
				)
		);
		actualValue:
		{
			'2000-1-1' asDateAndTime.
			'2000-1-2' asDateAndTime.
			'2000-1-3' asDateAndTime.
		};
		runDo0.
]

{ #category : #tests }
RHIntervalTest >> testSize [

	self
		testSize0_0.
]

{ #category : #tests }
RHIntervalTest >> testSize0_0 [

	self
		sourceValue:
		(
			RHRange
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2020-1-1'
							'2020-1-3'
						)
				)
		);
		actualValue:	3;
		runSize0.
]
