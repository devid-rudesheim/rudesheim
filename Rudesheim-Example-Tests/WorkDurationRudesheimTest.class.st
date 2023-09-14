"
A RHWorkDurationTest is a test class for testing the behavior of RHWorkDuration
"
Class {
	#name : #WorkDurationRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Example-Tests-TimeCard'
}

{ #category : #accessing }
WorkDurationRudesheimTest class >> targetClass [

	^ WorkDurationRudesheim
]

{ #category : #accessing }
WorkDurationRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		fromTRangeRudesheim:	self sourceValue.
]

{ #category : #tests }
WorkDurationRudesheimTest >> runOvertime0 [

	self
		assert:	self expectedValue
		equals:	self basicTarget overtime
]

{ #category : #tests }
WorkDurationRudesheimTest >> testOvertime [

	self
		testOvertime0_0.
]

{ #category : #tests }
WorkDurationRudesheimTest >> testOvertime0_0 [

	self
		sourceValue:
		(
			DateAndTimeRangeRudesheim
				fromTRangeRudesheim:
				#(
					'2000-1-1 0:00'
					'2000-1-1 9:00'
				)
		);
		expectedValue:
		(
			Duration
				hours:	1
		);
		runOvertime0.
]
