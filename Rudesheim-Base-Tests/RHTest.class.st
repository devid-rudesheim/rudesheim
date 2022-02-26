Class {
	#name : #RHTest,
	#superclass : #TestCase,
	#instVars : [
		'basicTarget',
		'expectedValue',
		'sourceValue'
	],
	#category : #'Rudesheim-Base-Tests'
}

{ #category : #accessing }
RHTest class >> targetClass [

	^ self subclassResponsibility.
]

{ #category : #accessing }
RHTest >> basicTarget [

	^ basicTarget
		ifNil:
		[
			basicTarget := self defaultBasicTarget. 
		].
]

{ #category : #accessing }
RHTest >> basicTarget: anObject [

	basicTarget := anObject.
]

{ #category : #accessing }
RHTest >> defaultBasicTarget [

	^ self targetClass new.
]

{ #category : #accessing }
RHTest >> defaultExpectedValue [

	^ 0
]

{ #category : #accessing }
RHTest >> defaultSourceValue [

	^ 0
]

{ #category : #accessing }
RHTest >> expectedValue [

	^ expectedValue
		ifNil:
		[
			expectedValue :=  self defaultExpectedValue. 
		]
]

{ #category : #accessing }
RHTest >> expectedValue: anObject [

	expectedValue := anObject
]

{ #category : #running }
RHTest >> setUp [

	self
		expectedValue: 		nil;
		sourceValue: 		nil;
		basicTarget:		nil.
]

{ #category : #accessing }
RHTest >> sourceValue [

	^ sourceValue
		ifNil:
		[ 
			sourceValue := self defaultSourceValue.
		].
]

{ #category : #accessing }
RHTest >> sourceValue: anObject [

	sourceValue := anObject
]

{ #category : #accessing }
RHTest >> targetClass [
	
	^ self class targetClass.
]

{ #category : #tests }
RHTest >> testBasicInstanceCreation [

	self
		testBasicInstanceCreation0.
]

{ #category : #tests }
RHTest >> testBasicInstanceCreation0 [

	self
		assert:	self basicTarget class
		equals:	self targetClass.
]
