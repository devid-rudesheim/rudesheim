"
A RHTQQueryTest is a test class for testing the behavior of RHTQQuery
"
Class {
	#name : #QueryTableQueryRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#instVars : [
		'expectValues',
		'sourceCollections'
	],
	#category : #'Rudesheim-Base-Tests-Table-Query'
}

{ #category : #accessing }
QueryTableQueryRudesheimTest class >> targetClass [

	^ QueryTableQueryRudesheim.
]

{ #category : #accessing }
QueryTableQueryRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		fromCollections: self sourceCollections.
]

{ #category : #accessing }
QueryTableQueryRudesheimTest >> defaultExpectValues [

	^ 1
		to:		5.
]

{ #category : #accessing }
QueryTableQueryRudesheimTest >> defaultSourceCollections [

	^
	{
		1
			to:		5.
		1
			to:		10.
	}.
]

{ #category : #accessing }
QueryTableQueryRudesheimTest >> expectValues [

	^ expectValues
		ifNil:
		[
			expectValues := self defaultExpectValues.
		].
]

{ #category : #accessing }
QueryTableQueryRudesheimTest >> expectValues: anObject [

	expectValues := anObject
]

{ #category : #test }
QueryTableQueryRudesheimTest >> runAsk0 [
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
QueryTableQueryRudesheimTest >> runInquire0 [

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
QueryTableQueryRudesheimTest >> sourceCollections [

	^ sourceCollections
		ifNil:
		[
			sourceCollections := self defaultSourceCollections.
		]
]

{ #category : #accessing }
QueryTableQueryRudesheimTest >> sourceCollections: anObject [

	sourceCollections := anObject
]

{ #category : #test }
QueryTableQueryRudesheimTest >> testAsk [

	self
		testAsk0_0;
		tearDown;
		setUp;
		testAsk0_1.
]

{ #category : #test }
QueryTableQueryRudesheimTest >> testAsk0_0 [

	self runAsk0.
]

{ #category : #test }
QueryTableQueryRudesheimTest >> testAsk0_1 [
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
QueryTableQueryRudesheimTest >> testInquire [

	self
		testInquire0_0;
		tearDown;
		setUp;
		testInquire0_1.
]

{ #category : #test }
QueryTableQueryRudesheimTest >> testInquire0_0 [

	self runInquire0.
]

{ #category : #test }
QueryTableQueryRudesheimTest >> testInquire0_1 [
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
