"
A RHWorkDurationTest is a test class for testing the behavior of RHWorkDuration
"
Class {
	#name : #RHWorkDurationTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Example-Tests-TimeCard'
}

{ #category : #accessing }
RHWorkDurationTest class >> targetClass [

	^ RHWorkDuration
]

{ #category : #accessing }
RHWorkDurationTest >> defaultBasicTarget [

	^ self targetClass
		fromTRHRange:	self sourceValue.
]

{ #category : #tests }
RHWorkDurationTest >> runOvertime0 [

	self
		assert:	self actualValue
		equals:	self basicTarget overtime
]

{ #category : #tests }
RHWorkDurationTest >> testOvertime [

	self
		testOvertime0_0.
]

{ #category : #tests }
RHWorkDurationTest >> testOvertime0_0 [

	self
		sourceValue:
		(
			RHDateAndTimeRange
				fromTRHRange:
				#(
					'2000-1-1 0:00'
					'2000-1-1 9:00'
				)
		);
		actualValue:
		(
			Duration
				hours:	1
		);
		runOvertime0.
]
