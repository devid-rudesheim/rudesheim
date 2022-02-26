"
A RHPipeStreamsTest is a test class for testing the behavior of RHPipeStreams
"
Class {
	#name : #RHPipeStreamsTest,
	#superclass : #RHTest,
	#category : #'Rudesheim-Base-Tests-Pipe'
}

{ #category : #accessing }
RHPipeStreamsTest class >> targetClass [

	^ RHPipeStreams
]

{ #category : #asserting }
RHPipeStreamsTest >> assertStreamByScaler: aStream [

	aStream
		nextPut: self expectedScalerValue.
]

{ #category : #accessing }
RHPipeStreamsTest >> expectedScalerValue [

	^ 1.
]

{ #category : #tests }
RHPipeStreamsTest >> testBasicInstanceCreation [

	super testBasicInstanceCreation.
]

{ #category : #tests }
RHPipeStreamsTest >> testInputPipeStreamsOutputPipeStreams [
	|
		input
		output
		expecteds
	|

	expecteds :=
	{
		1
			to: 3.
		3
			to: 1
			by: -1.
	}.
	
	input :=
	{
		self targetClass new.
		self targetClass new.
	}.
	
	output :=
		self targetClass
			inputPipeStreams: input first
			outputPipeStreams: input second.
			
	expecteds first
		do:
		[ :each |
			input first stdin
				nextPut: each.
		].
	
	expecteds second
		do:
		[ :each |
			input second stdin
				nextPut: each.
		].

	expecteds first
		do:
		[ :each |
			self
				assert: output stdin next 
				equals: each.
		].

]

{ #category : #tests }
RHPipeStreamsTest >> testInverse [
	|
		expecteds
		input
		output
	|
	
	expecteds :=
		1
			to: 3.

	input := self basicTarget.
	
	output := input inverse.
	
	expecteds 
		do: 
		[ :each |
			input stdout
				nextPut: each 
		].
	
	expecteds 
		do: 
		[ :each |
			self
				assert: output stdin next 
				equals: each.
		].

]

{ #category : #tests }
RHPipeStreamsTest >> testShiftStream [

	self
		testShiftStream0;
		tearDown;
		setUp;
		testShiftStream1.
]

{ #category : #tests }
RHPipeStreamsTest >> testShiftStream0 [
	|
		base 
		derived
	|
	
	base := self basicTarget.

	derived :=
		self targetClass
				shiftStream: base.
	
	derived stdout 
		nextPut: 1.
	base stdin
		nextPut: 2.
	base stdout
		nextPut: 3.
	
	self
		assert: base stdin next
		equals: 2.
]

{ #category : #tests }
RHPipeStreamsTest >> testShiftStream1 [
	|
		expecteds
		input
		output
		forProcess
	|

	expecteds :=
		1
			to: 3.

	input := self basicTarget.
	
	forProcess :=
		self targetClass 
			shiftStream: input.
	
	output :=
		self targetClass 
			shiftStream: forProcess.

	[
		RHPipeEcho
			executeWithPipeStream: forProcess.
	] fork.

	expecteds 
		do: 
		[ :each |
			input stdout 
				nextPut: each.
		].

	expecteds 
		do: 
		[ :each |
			self
				assert: output stdin next
				equals: each 
		].

]

{ #category : #tests }
RHPipeStreamsTest >> testStdin [

	self
		assertStreamByScaler: self basicTarget stdin.
]

{ #category : #tests }
RHPipeStreamsTest >> testStdout [

	self
		assertStreamByScaler: self basicTarget stdout.
]
