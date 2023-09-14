"
A RHTimeCardWithRangeTest is a test class for testing the behavior of RHTimeCardWithRange
"
Class {
	#name : #TimeCardWithRangeRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Example-Tests-TimeCard'
}

{ #category : #accessing }
TimeCardWithRangeRudesheimTest class >> targetClass [

	^ TimeCardWithRangeRudesheim.
]

{ #category : #accessing }
TimeCardWithRangeRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		withTRangeRudesheim:	self sourceValue.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> runDo0 [
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
TimeCardWithRangeRudesheimTest >> runTotal0 [
	
	self
		assertCollection:	self expectedValue
		equals:				self basicTarget total.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testDo [

	self
		testDo0_0;
		tearDown;
		setUp;
		testDo0_1;
		tearDown;
		setUp;
		testDo0_2;
		tearDown;
		setUp;
		testDo0_3;
		tearDown;
		setUp;
		testDo0_4.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testDo0_0 [

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-3'
					'2000-1-5'
				)
		);
		expectedValue:
		{
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-3 10:00'
							'2000-1-3 18:00'
						)
				).
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-4 10:00'
							'2000-1-4 18:00'
						)
				).
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-5 10:00'
							'2000-1-5 18:00'
						)
				).
		};
		runDo0.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testDo0_1 [
	|
		expectedTimeStamp
	|
	
	expectedTimeStamp :=
		WorkDurationRudesheim
			fromTRangeRudesheim:
			(
				DateAndTimeRangeRudesheim
					fromTRangeRudesheim:
					#(
						'2000-1-4 11:00'
						'2000-1-4 12:00'
					)
			).

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-3'
					'2000-1-5'
				)
		);
		expectedValue:
		{
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-3 10:00'
							'2000-1-3 18:00'
						)
				).
			expectedTimeStamp.
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-5 10:00'
							'2000-1-5 18:00'
						)
				).
		}.
	
	self basicTarget records
		at:		expectedTimeStamp first asDate
		put:	expectedTimeStamp.
	
	self runDo0.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testDo0_2 [

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-7'
					'2000-1-10'
				)
		);
		expectedValue:
		{
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-7 10:00'
							'2000-1-7 18:00'
						)
				).
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-10 10:00'
							'2000-1-10 18:00'
						)
				).
		};
		runDo0.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testDo0_3 [
	|
		expectedTimeStamp
	|
	
	expectedTimeStamp :=
		WorkDurationRudesheim
			fromTRangeRudesheim:
			(
				DateAndTimeRangeRudesheim
					fromTRangeRudesheim:
					#(
						'2000-1-9 11:00'
						'2000-1-9 12:00'
					)
			).

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-7'
					'2000-1-10'
				)
		);
		expectedValue:
		{
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-7 10:00'
							'2000-1-7 18:00'
						)
				).
			expectedTimeStamp.
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-10 10:00'
							'2000-1-10 18:00'
						)
				).
		}.
	
	self basicTarget records
		at:		expectedTimeStamp first asDate
		put:	expectedTimeStamp.
	
	self runDo0.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testDo0_4 [
	|
		paidLeave
	|
	
	paidLeave := '2000-1-4' asDate.

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-3'
					'2000-1-5'
				)
		);
		expectedValue:
		{
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-3 10:00'
							'2000-1-3 18:00'
						)
				).
			WorkDurationRudesheim
				fromTRangeRudesheim:
				(
					DateAndTimeRangeRudesheim
						fromTRangeRudesheim:
						#(
							'2000-1-5 10:00'
							'2000-1-5 18:00'
						)
				)
		}.

	self basicTarget paidLeaves
		add:	paidLeave.
	
	self runDo0.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testTotal [

	self
		testTotal0_0.
]

{ #category : #tests }
TimeCardWithRangeRudesheimTest >> testTotal0_0 [
	|
		sourceTimeStamp
	|
	
	sourceTimeStamp :=
		WorkDurationRudesheim
			fromTRangeRudesheim:
			(
				DateAndTimeRangeRudesheim
					fromTRangeRudesheim:
					#(
						'2000-1-3 10:00'
						'2000-1-3 19:00'
					)
			).

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-3'
					'2000-1-4'
				)
		);
		expectedValue:
		{
			Duration
				hours:	17.
			Duration
				hours:	1.
		}.

	self basicTarget records
		at:		sourceTimeStamp first asDate
		put:	sourceTimeStamp.

	self runTotal0.
]
