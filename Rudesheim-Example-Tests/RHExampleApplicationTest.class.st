"
A RHExampleApplicationTest is a test class for testing the behavior of RHExampleApplication
"
Class {
	#name : #RHExampleApplicationTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Example-Tests'
}

{ #category : #accessing }
RHExampleApplicationTest class >> targetClass [

	^ RHExampleApplication
]

{ #category : #test }
RHExampleApplicationTest >> runStart0 [
	|
		windows
	|
	
	self basicTarget start.

	windows := self basicTarget windows.
	self
		assert:		windows size
		equals: 		1.
	
	self basicTarget closeAllWindows.
]

{ #category : #test }
RHExampleApplicationTest >> runStart1 [
	|
		widget
	|

	widget := self basicTarget exampleWidget.
	
	self basicTarget start.
	
	widget textBoxForInput
		text:	'value'.
	
	widget textBoxForOutput
		text:	''.
	
	widget buttonForTransform action value.
	
	self
		assert:		widget textBoxForOutput text
		equals: 		'value'.
	
	self basicTarget closeAllWindows.
	
]

{ #category : #test }
RHExampleApplicationTest >> testStart [

	self
		testStart0_0;
		tearDown;
		setUp;
		testStart1_0.
]

{ #category : #test }
RHExampleApplicationTest >> testStart0_0 [

	self
		runStart0.
]

{ #category : #test }
RHExampleApplicationTest >> testStart1_0 [

	self
		runStart1.
]
