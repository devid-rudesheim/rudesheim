"
A RHStringTransformWindowTest is a test class for testing the behavior of RHStringTransformWindow
"
Class {
	#name : #StringTransformWindowRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Example-Tests'
}

{ #category : #accessing }
StringTransformWindowRudesheimTest class >> targetClass [

	^ StringTransformWindowRudesheim
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> runConnectPresenters0 [
	|
		actual
		subscription
	|
	
	actual := 0.

	subscription :=
		self basicTarget announcer
			when:	self sourceValue 
			send:	#value:
			to:
			[ :annoucement |
				actual := 1.
			].

	self
		assert:		actual
		equals: 		0.
	
	self basicTarget buttonForTransform action value.

	self
		assert:		actual
		equals: 		self expectedValue.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> runInitializePresenters0 [

	self
		assert:		self basicTarget focusOrder size
		equals: 		3.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> runUpdateOutput0 [

	self basicTarget tModelForStringRudesheim
		value:	'1'.

	self basicTarget textBoxForOutput
		text:	'0'.

	self basicTarget
		updateOutput:	nil.

	self
		assert:		self basicTarget textBoxForOutput text 
		equals: 		self expectedValue.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testConnectPresenters [

	self
		testConnectPresenters0_0;
		tearDown;
		setUp;
		testConnectPresenters0_1.

]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testConnectPresenters0_0 [

	self
		expectedValue:		1;
		sourceValue:		ClickedTransformRudesheim;
		runConnectPresenters0.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testConnectPresenters0_1 [

	self
		expectedValue:		0;
		sourceValue:		AnnouncementMockA;
		runConnectPresenters0.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testInitializePresenters [

	self
		testInitializePresenters0_0.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testInitializePresenters0_0 [

	self
		expectedValue:		1;
		sourceValue:		ClickedTransformRudesheim;
		runInitializePresenters0.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testUpdateOutput [

	self
		testUpdateOutput0_0.
]

{ #category : #tests }
StringTransformWindowRudesheimTest >> testUpdateOutput0_0 [

	self
		expectedValue:		'1';
		runUpdateOutput0.
]
