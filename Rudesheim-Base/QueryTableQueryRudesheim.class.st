Class {
	#name : #QueryTableQueryRudesheim,
	#superclass : #Object,
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#instVars : [
		'iterator'
	],
	#category : #'Rudesheim-Base-Table-Query'
}

{ #category : #'instance creation' }
QueryTableQueryRudesheim class >> fromCollections: aCollection [

	^ super new
		collections: aCollection.
]

{ #category : #evaluating }
QueryTableQueryRudesheim >> ask: aBlock [
	|
		statement
	|

	statement :=
		self statementClass
			send:	#value:
			to:		[ :each | ]
			by:		iterator.

	self
		askStatementTableQueryRudesheim:	statement
		to:											aBlock.
]

{ #category : #evaluating }
QueryTableQueryRudesheim >> askStatementTableQueryRudesheim:	aStatementTableQueryRudesheim
to:											aBlock [

	| arguments |

	arguments := { aStatementTableQueryRudesheim } asOrderedCollection.

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
QueryTableQueryRudesheim >> collections: aCollection [

	iterator :=
		self iteratorClass
			fromCollections: aCollection
]

{ #category : #accessing }
QueryTableQueryRudesheim >> defaultAnswer [

	^ OrderedCollection new.
]

{ #category : #evaluating }
QueryTableQueryRudesheim >> inquire: aBlock [
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
		askStatementTableQueryRudesheim:	statement
		to:											aBlock.

	^ answer. 
]

{ #category : #accessing }
QueryTableQueryRudesheim >> iteratorClass [

	^ IteratorTableQueryRudesheim.
]

{ #category : #accessing }
QueryTableQueryRudesheim >> statementClass [

	^ StatementTableQueryRudesheim.
]
