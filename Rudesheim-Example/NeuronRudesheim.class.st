Class {
	#name : #NeuronRudesheim,
	#superclass : #Array,
	#type : #variable,
	#instVars : [
		'activationFunction',
		'errorFunction'
	],
	#category : #'Rudesheim-Example-Learning'
}

{ #category : #accessing }
NeuronRudesheim class >> activationFunction [

	^ [ :value | ( 0 < value ) asInteger ].

]

{ #category : #accessing }
NeuronRudesheim class >> errorFunction [

	^
	[ :inputNumbersCollection :outputNumbersCollection :expectedNumber |
		inputNumbersCollection * ( expectedNumber - outputNumbersCollection ).
	]
]

{ #category : #'instance creation' }
NeuronRudesheim class >> new: aSizeInterger [
	|
		object
	|
	
	object :=
		super
			new:	aSizeInterger.
	
	Random new
		next: 	object size
		into:	object.
	
	^ object.
]

{ #category : #accessing }
NeuronRudesheim >> activationFunction [

	^ self class activationFunction.

]

{ #category : #accessing }
NeuronRudesheim >> errorFunction [

	^ self class errorFunction.
]

{ #category : #learning }
NeuronRudesheim >> learnAll:	aExpectedWithInputNumbersCollection [
	|
		weights
	|

	weights := self.
	[
		(
			aExpectedWithInputNumbersCollection
				collect: 
				[ :each |
					|
						tuple
					|

					tuple :=
						weights
							learnFrom: 		each last
							to: 			each first.

					weights := tuple first.
					
					each first = tuple last.
				]
		)
			includes:	false.
	] whileTrue.

	^ weights.
]

{ #category : #learning }
NeuronRudesheim >> learnFrom:	aInputNumbersCollection
to:			aExpectedNumber [
	|
		result
	|
	
	result :=
		self
			thought: aInputNumbersCollection.

	^
	{
		self +
		(
			(
				self errorFunction
					value: 	aInputNumbersCollection
					value: 	result
					value:	aExpectedNumber
			) * 0.001
		).
		result
	}.
]

{ #category : #evaluation }
NeuronRudesheim >> thought: aInputNumbersCollection [

	Processor yield.	
	self size = aInputNumbersCollection size
		ifFalse:
		[
			self
				error: 'Should aInputValuesCollection size to equal self size'
		].

	^ self activationFunction
		value:	( aInputNumbersCollection * self ) sumNumbers.
]
