"
A RHTQQueryTest is a test class for testing the behavior of RHTQQuery
"
Class {
	#name : #RHTQQueryTest,
	#superclass : #RHTest,
	#instVars : [
		'expectValues',
		'sourceCollections'
	],
	#category : #'Rudesheim-Base-Tests-Table-Query'
}

{ #category : #accessing }
RHTQQueryTest class >> targetClass [

	^ RHTQQuery.
]

{ #category : #accessing }
RHTQQueryTest >> defaultBasicTarget [

	^ self targetClass
		fromCollections: self sourceCollections.
]

{ #category : #accessing }
RHTQQueryTest >> defaultExpectValues [

	^ 1
		to:		5.
]

{ #category : #accessing }
RHTQQueryTest >> defaultSourceCollections [

	^
	{
		1
			to:		5.
		1
			to:		10.
	}.
]

{ #category : #accessing }
RHTQQueryTest >> expectValues [

	^ expectValues
		ifNil:
		[
			expectValues := self defaultExpectValues.
		].
]

{ #category : #accessing }
RHTQQueryTest >> expectValues: anObject [

	expectValues := anObject
]

{ #category : #test }
RHTQQueryTest >> runAsk0 [
	|
		actual
	|
	
	actual := OrderedCollection new.

	self basicTarget
		ask:
		[ :statement :row1 :row2 |

			statement
				where:
				[
					row1 asNumber = row2 asNumber
				]
				collect:
				[
					actual
						add: row1 copy
				].
		].
	
	self
		assert:	self expectValues
		equals:	actual asArray.

]

{ #category : #test }
RHTQQueryTest >> runInquire0 [

	self
		assert:
		(
			self basicTarget 
				inquire:
				[ :statement :row1 :row2 |

					statement
						where:
						[
							row1 asNumber = row2 asNumber
						]
						collect:
						[
							row1 copy
						].
				]
		) asArray
		equals:	self expectValues.

]

{ #category : #accessing }
RHTQQueryTest >> sourceCollections [

	^ sourceCollections
		ifNil:
		[
			sourceCollections := self defaultSourceCollections.
		]
]

{ #category : #accessing }
RHTQQueryTest >> sourceCollections: anObject [

	sourceCollections := anObject
]

{ #category : #test }
RHTQQueryTest >> testAsk [

	self
		testAsk0_0;
		tearDown;
		setUp;
		testAsk0_1.
]

{ #category : #test }
RHTQQueryTest >> testAsk0_0 [

	self runAsk0.
]

{ #category : #test }
RHTQQueryTest >> testAsk0_1 [
	|
		array
	|

	array :=
			3
				to:		5.

	self
		expectValues:	array;
		sourceCollections:
		{
			array.
			1
				to:		10
		};
		runAsk0.
]

{ #category : #test }
RHTQQueryTest >> testInquire [

	self
		testInquire0_0;
		tearDown;
		setUp;
		testInquire0_1.
]

{ #category : #test }
RHTQQueryTest >> testInquire0_0 [

	self runInquire0.
]

{ #category : #test }
RHTQQueryTest >> testInquire0_1 [
	|
		array
	|

	array :=
			3
				to:		5.

	self
		expectValues:	array;
		sourceCollections:
		{
			array.
			1
				to:		10
		};
		runInquire0.
]
