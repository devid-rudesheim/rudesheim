"
A RHDateAndTimeRangeTest is a test class for testing the behavior of RHDateAndTimeRange
"
Class {
	#name : #DateAndTimeRangeRudesheimTest,
	#superclass : #AbstractRangeRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
DateAndTimeRangeRudesheimTest class >> targetClass [

	^ DateAndTimeRangeRudesheim.
]

{ #category : #tests }
DateAndTimeRangeRudesheimTest >> testFirst [

	self
		testFirst0_0.
]

{ #category : #tests }
DateAndTimeRangeRudesheimTest >> testFirst0_0 [

	self
		expectedValue: 	'2020-1-1 1:00' asDateAndTime;
		sourceFirst: 	'2020-1-1 1:00';
		sourceLast: 	'2020-1-1 2:00';
		runFirst0.
]

{ #category : #tests }
DateAndTimeRangeRudesheimTest >> testLast [

	self
		testLast0_0.
]

{ #category : #tests }
DateAndTimeRangeRudesheimTest >> testLast0_0 [

	self
		expectedValue: 	'2020-1-1 2:00' asDateAndTime;
		sourceFirst: 	'2020-1-1 1:00';
		sourceLast: 	'2020-1-1 2:00';
		runLast0.
]
