"
A RHTimeCardWithRangeTest is a test class for testing the behavior of RHTimeCardWithRange
"
Class {
	#name : #RHTimeCardWithRangeTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Example-Tests-TimeCard'
}

{ #category : #accessing }
RHTimeCardWithRangeTest class >> targetClass [

	^ RHTimeCardWithRange.
]

{ #category : #accessing }
RHTimeCardWithRangeTest >> defaultBasicTarget [

	^ self targetClass
		withRHTRange:	self sourceValue.
]

{ #category : #tests }
RHTimeCardWithRangeTest >> runDo0 [
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
RHTimeCardWithRangeTest >> runTotal0 [
	
	self
		assertCollection:	self actualValue
		equals:				self basicTarget total.
]

{ #category : #tests }
RHTimeCardWithRangeTest >> testDo [

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
RHTimeCardWithRangeTest >> testDo0_0 [

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-3'
					'2000-1-5'
				)
		);
		actualValue:
		{
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-3 10:00'
							'2000-1-3 18:00'
						)
				).
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-4 10:00'
							'2000-1-4 18:00'
						)
				).
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-5 10:00'
							'2000-1-5 18:00'
						)
				).
		};
		runDo0.
]

{ #category : #tests }
RHTimeCardWithRangeTest >> testDo0_1 [
	|
		expectedTimeStamp
	|
	
	expectedTimeStamp :=
		RHWorkDuration
			fromTRHRange:
			(
				RHDateAndTimeRange
					fromTRHRange:
					#(
						'2000-1-4 11:00'
						'2000-1-4 12:00'
					)
			).

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-3'
					'2000-1-5'
				)
		);
		actualValue:
		{
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-3 10:00'
							'2000-1-3 18:00'
						)
				).
			expectedTimeStamp.
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
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
RHTimeCardWithRangeTest >> testDo0_2 [

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-7'
					'2000-1-10'
				)
		);
		actualValue:
		{
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-7 10:00'
							'2000-1-7 18:00'
						)
				).
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-10 10:00'
							'2000-1-10 18:00'
						)
				).
		};
		runDo0.
]

{ #category : #tests }
RHTimeCardWithRangeTest >> testDo0_3 [
	|
		expectedTimeStamp
	|
	
	expectedTimeStamp :=
		RHWorkDuration
			fromTRHRange:
			(
				RHDateAndTimeRange
					fromTRHRange:
					#(
						'2000-1-9 11:00'
						'2000-1-9 12:00'
					)
			).

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-7'
					'2000-1-10'
				)
		);
		actualValue:
		{
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-7 10:00'
							'2000-1-7 18:00'
						)
				).
			expectedTimeStamp.
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
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
RHTimeCardWithRangeTest >> testDo0_4 [
	|
		paidLeave
	|
	
	paidLeave := '2000-1-4' asDate.

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-3'
					'2000-1-5'
				)
		);
		actualValue:
		{
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
						#(
							'2000-1-3 10:00'
							'2000-1-3 18:00'
						)
				).
			RHWorkDuration
				fromTRHRange:
				(
					RHDateAndTimeRange
						fromTRHRange:
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
RHTimeCardWithRangeTest >> testTotal [

	self
		testTotal0_0.
]

{ #category : #tests }
RHTimeCardWithRangeTest >> testTotal0_0 [
	|
		sourceTimeStamp
	|
	
	sourceTimeStamp :=
		RHWorkDuration
			fromTRHRange:
			(
				RHDateAndTimeRange
					fromTRHRange:
					#(
						'2000-1-3 10:00'
						'2000-1-3 19:00'
					)
			).

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-3'
					'2000-1-4'
				)
		);
		actualValue:
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
