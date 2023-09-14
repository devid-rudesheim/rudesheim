"
A RHTQStatementTest is a test class for testing the behavior of RHTQStatement
"
Class {
	#name : #StatementTableQueryRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#instVars : [
		'expectValues',
		'sourceCollections',
		'result',
		'iterator'
	],
	#category : #'Rudesheim-Base-Tests-Table-Query'
}

{ #category : #accessing }
StatementTableQueryRudesheimTest class >> targetClass [

	^ StatementTableQueryRudesheim.
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		send:		#add:
		to:			self result
		by:			self iterator.
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> defaultExpectValues [

	^ #().
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> defaultIterator [

	^ IteratorTableQueryRudesheim
		fromCollections: self sourceCollections.
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> defaultResult [

	^ OrderedCollection new.
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> defaultSourceCollections [

	^ #().
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> expectValues [

	^ expectValues
		ifNil:
		[
			expectValues := self defaultExpectValues.
		].
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> expectValues: anObject [

	expectValues := anObject
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> iterator [

	^ iterator
		ifNil:
		[
			iterator := self defaultIterator.
		].
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> iterator: anObject [

	iterator := anObject
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> result [

	^ result
		ifNil:
		[
			result := self defaultResult.
		]
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> result: anObject [

	result := anObject
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> runWhereCollect0 [
	
	self basicTarget
		where:		true asValueHolder
		collect:	0 asValueHolder.

	self
		assert:	self expectValues
		equals:	self result asArray.
	
]

{ #category : #running }
StatementTableQueryRudesheimTest >> setUp [

	super setUp.
	
	self
		sourceCollections:	nil;
		iterator: 			nil;
		result:				nil.
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> sourceCollections [

	^ sourceCollections
		ifNil:
		[
			sourceCollections := self defaultSourceCollections.
		].
]

{ #category : #accessing }
StatementTableQueryRudesheimTest >> sourceCollections: anObject [

	sourceCollections := anObject
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect [

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
StatementTableQueryRudesheimTest >> testWhereCollect0_0 [

	self runWhereCollect0.
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect0_1 [

	self
		sourceCollections:	#( () );
		expectValues:		#();
		runWhereCollect0.
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect0_2 [

	self
		sourceCollections:	#( ( 1 ) );
		expectValues:		#( 0 );
		runWhereCollect0.
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect0_3 [

	self
		sourceCollections:	#( ( 1 ) () );
		expectValues:		#( );
		runWhereCollect0.
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect0_4 [

	self
		sourceCollections:	#( ( 1 ) ( 1 ) );
		expectValues:		#( 0 );
		runWhereCollect0.
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect0_5 [

	self
		sourceCollections:	#( ( 1 1 ) ( 1 ) );
		expectValues:		#( 0 0 );
		runWhereCollect0.
]

{ #category : #tests }
StatementTableQueryRudesheimTest >> testWhereCollect0_6 [

	self
		sourceCollections:	#( ( 1 1 ) ( 1 1 ) );
		expectValues:		#( 0 0 0 0 );
		runWhereCollect0.
]
