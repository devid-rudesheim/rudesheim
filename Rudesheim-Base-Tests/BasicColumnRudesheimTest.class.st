"
A RHBasicColumnTest is a test class for testing the behavior of RHBasicColumn
"
Class {
	#name : #BasicColumnRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Visitor'
}

{ #category : #accessing }
BasicColumnRudesheimTest class >> targetClass [

	^ BasicColumnRudesheim.
]

{ #category : #tests }
BasicColumnRudesheimTest >> runAcceptTVisitorRudesheim0 [
	|
		visitor
	|

	visitor :=
		MockObject new
			on:			#visitObject:
			with:		self basicTarget
			respond:	self sourceValue.

	self
		assert:
		(
			self basicTarget
				acceptTVisitorRudesheim: visitor
		)
		equals: self expectedValue.
	
	visitor
		verifyIn: self.
]

{ #category : #tests }
BasicColumnRudesheimTest >> runEvaluationForRead0 [

	self
		assert:
		(
			self basicTarget evaluationForRead
				value: self sourceValue asValueHolder
		)
		equals: self expectedValue.
]

{ #category : #tests }
BasicColumnRudesheimTest >> runEvaluationForWrite0 [

	self basicTarget evaluationForWrite
		value:
		[ :value |
			self
				assert:		value
				equals:		self expectedValue.
			
			^ self.
		]
		value: 	self sourceValue.

	self fail.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testAcceptTVisitorRudesheim [

	self
		testAcceptTVisitorRudesheim0_0.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testAcceptTVisitorRudesheim0_0 [

	self
		sourceValue:	1;
		expectedValue:	1;
		runAcceptTVisitorRudesheim0.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testEvaluationForRead [

	self
		testEvaluationForRead0_0;
		tearDown;
		setUp;
		testEvaluationForRead0_1.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testEvaluationForRead0_0 [

	self
		sourceValue:	1;
		expectedValue:	1;
		runEvaluationForRead0.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testEvaluationForRead0_1 [

	self basicTarget
		evaluationForRead:
		[ :row |
			1 + row value.
		].

	self
		sourceValue:	1;
		expectedValue:	2;
		runEvaluationForRead0.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testEvaluationForWrite [

	self
		testEvaluationForWrite0_0;
		tearDown;
		setUp;
		testEvaluationForWrite0_1.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testEvaluationForWrite0_0 [

	self
		sourceValue:	1;
		expectedValue:	1;
		runEvaluationForWrite0.
]

{ #category : #tests }
BasicColumnRudesheimTest >> testEvaluationForWrite0_1 [

	self basicTarget
		evaluationForWrite:
		[ :row :value |
			row
				value:	1 + value.
		].

	self
		sourceValue:	1;
		expectedValue:	2;
		runEvaluationForWrite0.
]
