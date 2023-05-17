Class {
	#name : #RHTQStatement,
	#superclass : #Object,
	#traits : 'TRHShouldntNew',
	#classTraits : 'TRHShouldntNew classTrait',
	#instVars : [
		'iterator',
		'target',
		'selector'
	],
	#category : #'Rudesheim-Base-Table-Query'
}

{ #category : #'instance creation' }
RHTQStatement class >> send:	aRHTQStatement
to:		anObject
by:		aRHTQIterator [

	^ super new
		setSend:	aRHTQStatement
		to:			anObject
		by:			aRHTQIterator.
]

{ #category : #initialization }
RHTQStatement >> setSend: aRHTQStatement
to:			anObject
by:			aRHTQIterator [

	iterator	:= aRHTQIterator.
	selector	:= aRHTQStatement.
	target		:= anObject.
]

{ #category : #evaluating }
RHTQStatement >> where:		aWhereBlock
collect:	aCollectBlock [
	|
		block
	|

	block :=
	[
		aWhereBlock value
			ifTrue: 
			[
				target
					perform:	selector
					with:		aCollectBlock value.
			].
	].

	iterator
		timesRepeat: block.

]
