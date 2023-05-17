"
A RHTQStatementTest is a test class for testing the behavior of RHTQStatement
"
Class {
	#name : #RHTQStatementTest,
	#superclass : #RHTest,
	#instVars : [
		'expectValues',
		'sourceCollections',
		'result',
		'iterator'
	],
	#category : #'Rudesheim-Base-Tests-Table-Query'
}

{ #category : #accessing }
RHTQStatementTest class >> targetClass [

	^ RHTQStatement.
]

{ #category : #accessing }
RHTQStatementTest >> defaultBasicTarget [

	^ self targetClass
		send:		#add:
		to:			self result
		by:			self iterator.
]

{ #category : #accessing }
RHTQStatementTest >> defaultExpectValues [

	^ #().
]

{ #category : #accessing }
RHTQStatementTest >> defaultIterator [

	^ RHTQIterator
		fromCollections: self sourceCollections.
]

{ #category : #accessing }
RHTQStatementTest >> defaultResult [

	^ OrderedCollection new.
]

{ #category : #accessing }
RHTQStatementTest >> defaultSourceCollections [

	^ #().
]

{ #category : #accessing }
RHTQStatementTest >> expectValues [

	^ expectValues
		ifNil:
		[
			expectValues := self defaultExpectValues.
		].
]

{ #category : #accessing }
RHTQStatementTest >> expectValues: anObject [

	expectValues := anObject
]

{ #category : #accessing }
RHTQStatementTest >> iterator [

	^ iterator
		ifNil:
		[
			iterator := self defaultIterator.
		].
]

{ #category : #accessing }
RHTQStatementTest >> iterator: anObject [

	iterator := anObject
]

{ #category : #accessing }
RHTQStatementTest >> result [

	^ result
		ifNil:
		[
			result := self defaultResult.
		]
]

{ #category : #accessing }
RHTQStatementTest >> result: anObject [

	result := anObject
]

{ #category : #tests }
RHTQStatementTest >> runWhereCollect0 [
	
	self basicTarget
		where:		true asValueHolder
		collect:	0 asValueHolder.

	self
		assert:	self expectValues
		equals:	self result asArray.
	
]

{ #category : #running }
RHTQStatementTest >> setUp [

	super setUp.
	
	self
		sourceCollections:	nil;
		iterator: 			nil;
		result:				nil.
]

{ #category : #accessing }
RHTQStatementTest >> sourceCollections [

	^ sourceCollections
		ifNil:
		[
			sourceCollections := self defaultSourceCollections.
		].
]

{ #category : #accessing }
RHTQStatementTest >> sourceCollections: anObject [

	sourceCollections := anObject
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect [

	self
		testWhereCollect0_0;
		tearDown;
		setUp;
		testWhereCollect0_1;
		tearDown;
		setUp;
		testWhereCollect0_2;
		tearDown;
		setUp;
		testWhereCollect0_3;
		tearDown;
		setUp;
		testWhereCollect0_4;
		tearDown;
		setUp;
		testWhereCollect0_5;
		tearDown;
		setUp;
		testWhereCollect0_6.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_0 [

	self runWhereCollect0.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_1 [

	self
		sourceCollections:	#( () );
		expectValues:		#();
		runWhereCollect0.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_2 [

	self
		sourceCollections:	#( ( 1 ) );
		expectValues:		#( 0 );
		runWhereCollect0.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_3 [

	self
		sourceCollections:	#( ( 1 ) () );
		expectValues:		#( );
		runWhereCollect0.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_4 [

	self
		sourceCollections:	#( ( 1 ) ( 1 ) );
		expectValues:		#( 0 );
		runWhereCollect0.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_5 [

	self
		sourceCollections:	#( ( 1 1 ) ( 1 ) );
		expectValues:		#( 0 0 );
		runWhereCollect0.
]

{ #category : #tests }
RHTQStatementTest >> testWhereCollect0_6 [

	self
		sourceCollections:	#( ( 1 1 ) ( 1 1 ) );
		expectValues:		#( 0 0 0 0 );
		runWhereCollect0.
]
