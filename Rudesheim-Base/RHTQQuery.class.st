Class {
	#name : #RHTQQuery,
	#superclass : #Object,
	#traits : 'TRHShouldntNew',
	#classTraits : 'TRHShouldntNew classTrait',
	#instVars : [
		'iterator'
	],
	#category : #'Rudesheim-Base-Table-Query'
}

{ #category : #'instance creation' }
RHTQQuery class >> fromCollections: aCollection [

	^ super new
		collections: aCollection.
]

{ #category : #evaluating }
RHTQQuery >> ask: aBlock [
	|
		statement
	|

	statement :=
		self statementClass
			send:	#value:
			to:		[ :each | ]
			by:		iterator.

	self
		askRHTQStatement:	statement
		to:						aBlock.
]

{ #category : #evaluating }
RHTQQuery >> askRHTQStatement:	aRHTQStatement
to:						aBlock [

	| arguments |

	arguments := { aRHTQStatement } asOrderedCollection.

	iterator rows
		do:
		[ :each |
			arguments
				add: each.
		].

	aBlock
		valueWithArguments: arguments asArray.
]

{ #category : #accessing }
RHTQQuery >> collections: aCollection [

	iterator :=
		self iteratorClass
			fromCollections: aCollection
]

{ #category : #accessing }
RHTQQuery >> defaultAnswer [

	^ OrderedCollection new.
]

{ #category : #evaluating }
RHTQQuery >> inquire: aBlock [
	|
		statement
		answer
	|

	answer := self defaultAnswer.
	
	statement :=
		self statementClass
			send:	#add:
			to:		answer
			by:		iterator.

	self
		askRHTQStatement:	statement
		to:						aBlock.

	^ answer. 
]

{ #category : #accessing }
RHTQQuery >> iteratorClass [

	^ RHTQIterator.
]

{ #category : #accessing }
RHTQQuery >> statementClass [

	^ RHTQStatement.
]
