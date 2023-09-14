Class {
	#name : #StatementTableQueryRudesheim,
	#superclass : #Object,
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#instVars : [
		'iterator',
		'target',
		'selector'
	],
	#category : #'Rudesheim-Base-Table-Query'
}

{ #category : #'instance creation' }
StatementTableQueryRudesheim class >> send:	aRHTQStatement
to:		anObject
by:		aRHTQIterator [

	^ super new
		setSend:	aRHTQStatement
		to:			anObject
		by:			aRHTQIterator.
]

{ #category : #initialization }
StatementTableQueryRudesheim >> setSend: aRHTQStatement
to:			anObject
by:			aRHTQIterator [

	iterator	:= aRHTQIterator.
	selector	:= aRHTQStatement.
	target		:= anObject.
]

{ #category : #evaluating }
StatementTableQueryRudesheim >> where:		aWhereBlock
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
