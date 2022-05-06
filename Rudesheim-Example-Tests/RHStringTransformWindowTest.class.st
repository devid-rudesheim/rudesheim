"
A RHStringTransformWindowTest is a test class for testing the behavior of RHStringTransformWindow
"
Class {
	#name : #RHStringTransformWindowTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Example-Tests'
}

{ #category : #accessing }
RHStringTransformWindowTest class >> targetClass [

	^ RHStringTransformWindow
]

{ #category : #tests }
RHStringTransformWindowTest >> runConnectPresenters0 [
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
		equals: 		self actualValue.
]

{ #category : #tests }
RHStringTransformWindowTest >> runInitializePresenters0 [

	self
		assert:		self basicTarget focusOrder size
		equals: 		3.
]

{ #category : #tests }
RHStringTransformWindowTest >> runUpdateOutput0 [

	self basicTarget trhModelForString
		value:	'1'.

	self basicTarget textBoxForOutput
		text:	'0'.

	self basicTarget
		updateOutput:	nil.

	self
		assert:		self basicTarget textBoxForOutput text 
		equals: 		self actualValue.
]

{ #category : #tests }
RHStringTransformWindowTest >> testConnectPresenters [

	self
		testConnectPresenters0_0;
		tearDown;
		setUp;
		testConnectPresenters0_1.

]

{ #category : #tests }
RHStringTransformWindowTest >> testConnectPresenters0_0 [

	self
		actualValue:		1;
		sourceValue:		RHClickedTransform;
		runConnectPresenters0.
]

{ #category : #tests }
RHStringTransformWindowTest >> testConnectPresenters0_1 [

	self
		actualValue:		0;
		sourceValue:		AnnouncementMockA;
		runConnectPresenters0.
]

{ #category : #tests }
RHStringTransformWindowTest >> testInitializePresenters [

	self
		testInitializePresenters0_0.
]

{ #category : #tests }
RHStringTransformWindowTest >> testInitializePresenters0_0 [

	self
		actualValue:		1;
		sourceValue:		RHClickedTransform;
		runInitializePresenters0.
]

{ #category : #tests }
RHStringTransformWindowTest >> testUpdateOutput [

	self
		testUpdateOutput0_0.
]

{ #category : #tests }
RHStringTransformWindowTest >> testUpdateOutput0_0 [

	self
		actualValue:		'1';
		runUpdateOutput0.
]
