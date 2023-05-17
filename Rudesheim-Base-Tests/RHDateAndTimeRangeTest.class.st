"
A RHDateAndTimeRangeTest is a test class for testing the behavior of RHDateAndTimeRange
"
Class {
	#name : #RHDateAndTimeRangeTest,
	#superclass : #RHAbstractRangeTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
RHDateAndTimeRangeTest class >> targetClass [

	^ RHDateAndTimeRange.
]

{ #category : #tests }
RHDateAndTimeRangeTest >> testFirst [

	self
		testFirst0_0.
]

{ #category : #tests }
RHDateAndTimeRangeTest >> testFirst0_0 [

	self
		actualValue: 	'2020-1-1 1:00' asDateAndTime;
		sourceFirst: 	'2020-1-1 1:00';
		sourceLast: 	'2020-1-1 2:00';
		runFirst0.
]

{ #category : #tests }
RHDateAndTimeRangeTest >> testLast [

	self
		testLast0_0.
]

{ #category : #tests }
RHDateAndTimeRangeTest >> testLast0_0 [

	self
		actualValue: 	'2020-1-1 2:00' asDateAndTime;
		sourceFirst: 	'2020-1-1 1:00';
		sourceLast: 	'2020-1-1 2:00';
		runLast0.
]
