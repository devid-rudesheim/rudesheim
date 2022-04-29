Class {
	#name : #RHTQIterator,
	#superclass : #Object,
	#traits : 'TRHShouldntNew',
	#classTraits : 'TRHShouldntNew classTrait',
	#instVars : [
		'rows',
		'loop'
	],
	#category : #'Rudesheim-Base-Table-Query'
}

{ #category : #'instance creation' }
RHTQIterator class >> fromCollections: aCollection [

	^ super new
			collections: aCollection.

]

{ #category : #accessing }
RHTQIterator >> collections: aCollection [
	|
		collections
	|

	collections := aCollection.
	rows := self defaultRows.

	collections isEmpty
		ifTrue:
		[
			loop := [ :block |].

			^ self.
		].

	loop :=
		collections
			inject:
			[ :block |
				block value. 
			]
			into:
			[ :subLoop :table |
				|
					rowProxy
				|

				rowProxy := self defaultRowProxy.
				rows
					add:
					(
						"RHDelegationForNumberByAccessing"
						RHDelegatorForAccessing
							targetFrom:	#value
							of:				rowProxy
					).

				[ :block |

					table
						do:
						[ :row |
							rowProxy
								value:		row.
							subLoop
								value:		block.
						]

				].
			].

]

{ #category : #accessing }
RHTQIterator >> defaultRowProxy [

	^ NewValueHolder new.
]

{ #category : #accessing }
RHTQIterator >> defaultRows [

	^ OrderedCollection new.
]

{ #category : #accessing }
RHTQIterator >> rows [

	^ rows
		ifNil:
		[
			rows := self defaultRows.
		].
]

{ #category : #accessing }
RHTQIterator >> rows: anObject [

	rows := anObject
]

{ #category : #iteration }
RHTQIterator >> timesRepeat: aBlock [

	loop
		value: aBlock.
]
