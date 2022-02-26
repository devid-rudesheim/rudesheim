"
A RHTQIteratorTest is a test class for testing the behavior of RHTQIterator
"
Class {
	#name : #RHTQIteratorTest,
	#superclass : #RHTest,
	#instVars : [
		'sourceCollections',
		'expectCount'
	],
	#category : #'Rudesheim-Base-Tests-Table-Query'
}

{ #category : #accessing }
RHTQIteratorTest class >> targetClass [

	^ RHTQIterator.
]

{ #category : #accessing }
RHTQIteratorTest >> defaultBasicTarget [

	^ self targetClass
		fromCollections: self sourceCollections.
]

{ #category : #accessing }
RHTQIteratorTest >> defaultExpectCount [

	^ 0.
]

{ #category : #accessing }
RHTQIteratorTest >> defaultSourceCollections [

	^ { {}. {{}}. {{}. {}} }.
]

{ #category : #accessing }
RHTQIteratorTest >> expectCount [

	^ expectCount
		ifNil:
		[
			expectCount := self defaultExpectCount.
		].
]

{ #category : #accessing }
RHTQIteratorTest >> expectCount: anObject [

	expectCount := anObject
]

{ #category : #tests }
RHTQIteratorTest >> runRows0 [
	
	self
		assert:	self expectCount
		equals:	self basicTarget rows size.

]

{ #category : #tests }
RHTQIteratorTest >> runTimesRepeat0 [
	|
		count
		block
	|
	
	count := 0.
	block :=
	[
		count := 1 + count.
	].

	self basicTarget
		timesRepeat: block.

	self
		assert:	self expectCount
		equals:	count.
]

{ #category : #running }
RHTQIteratorTest >> setUp [

	super setUp.
	
	self
		expectCount: 3;
		sourceCollections: nil.
]

{ #category : #accessing }
RHTQIteratorTest >> sourceCollections [

	^ sourceCollections
		ifNil:
		[
			sourceCollections := self defaultSourceCollections.
		].
]

{ #category : #accessing }
RHTQIteratorTest >> sourceCollections: anObject [

	sourceCollections := anObject
]

{ #category : #tests }
RHTQIteratorTest >> testRows [

	self
		testRows0_0;
		tearDown;
		setUp;
		testRows0_1;
		tearDown;
		setUp;
		testRows0_2;
		tearDown;
		setUp;
		testRows0_3;
		tearDown;
		setUp;
		testRows0_4;
		tearDown;
		setUp;
		testRows0_5.
]

{ #category : #tests }
RHTQIteratorTest >> testRows0_0 [

 	self
		sourceCollections:	#();
		expectCount:			0;
		runRows0.
]

{ #category : #tests }
RHTQIteratorTest >> testRows0_1 [

 	self
		sourceCollections:	#( ( 1 ) );
		expectCount:			1;
		runRows0.
]

{ #category : #tests }
RHTQIteratorTest >> testRows0_2 [

 	self
		sourceCollections:	#( ( 1 2 ) );
		expectCount:			1;
		runRows0.
]

{ #category : #tests }
RHTQIteratorTest >> testRows0_3 [

 	self
		sourceCollections:	#( () () );
		expectCount:			2;
		runRows0.
]

{ #category : #tests }
RHTQIteratorTest >> testRows0_4 [

 	self
		sourceCollections:	#( ( 1 ) ( 1 ) );
		expectCount:			2;
		runRows0.
]

{ #category : #tests }
RHTQIteratorTest >> testRows0_5 [

 	self
		sourceCollections:	#( ( 1 2 ) ( 1 2 ) );
		expectCount:			2;
		runRows0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat [

	self
		testTimesRepeat0_0;
		tearDown;
		setUp;
		testTimesRepeat0_1;
		tearDown;
		setUp;
		testTimesRepeat0_2;
		tearDown;
		setUp;
		testTimesRepeat0_3;
		tearDown;
		setUp;
		testTimesRepeat0_4;
		tearDown;
		setUp;
		testTimesRepeat0_5;
		tearDown;
		setUp;
		testTimesRepeat0_6.

]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_0 [

	self
		sourceCollections:	#();
		expectCount:			0;
		runTimesRepeat0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_1 [

	self
		sourceCollections:	#( () );
		expectCount:			0;
		runTimesRepeat0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_2 [

	self
		sourceCollections:	#( ( 1 ) );
		expectCount:			1;
		runTimesRepeat0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_3 [

	self
		sourceCollections:	#( ( 1 2 ) );
		expectCount:			2;
		runTimesRepeat0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_4 [

	self
		sourceCollections:	#( () () );
		expectCount:			0;
		runTimesRepeat0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_5 [

	self
		sourceCollections:	#( ( 1 ) ( 1 ) );
		expectCount:			1;
		runTimesRepeat0.
]

{ #category : #tests }
RHTQIteratorTest >> testTimesRepeat0_6 [

	self
		sourceCollections:	#( ( 1 2 ) ( 1 2 ) );
		expectCount:			4;
		runTimesRepeat0.
]
