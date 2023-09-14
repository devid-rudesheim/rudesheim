Class {
	#name : #IntervalRudesheim,
	#superclass : #SequenceableCollection,
	#traits : 'TBasicRangeRudesheim + TShouldntNewRudesheim',
	#classTraits : 'TBasicRangeRudesheim classTrait + TShouldntNewRudesheim classTrait',
	#instVars : [
		'range',
		'step'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #'instance creation' }
IntervalRudesheim class >> from:	aFromNumber
to:		aToNumber
by:		aStepNumber [
	
	^ self
		withTRangeRudesheim:
		(
			RangeRudesheim
				fromTRangeRudesheim:
				{
					aFromNumber.
					aToNumber.
				}
		)
		by:	aStepNumber.
]

{ #category : #accessing }
IntervalRudesheim class >> intervalSpecies [

	^ self.
]

{ #category : #private }
IntervalRudesheim class >> species [

	^ Array
]

{ #category : #accessing }
IntervalRudesheim class >> streamSpecies [

	^ Array
]

{ #category : #'instance creation' }
IntervalRudesheim class >> withTRangeRudesheim:	aTRangeRudesheim
by:							aStepNumber [

	^ self basicNew
		setTRangeRudesheim:	aTRangeRudesheim
		stepNumber:				aStepNumber 
]

{ #category : #adding }
IntervalRudesheim >> add:	newObject [ 

	self shouldNotImplement.
]

{ #category : #accessing }
IntervalRudesheim >> at: anInteger [
	"Answer the anInteger'th element."

	(
		anInteger
			between:	1
			and:		self size
	)
		ifFalse:
		[
			self
				errorSubscriptBounds: anInteger
		].
	
	^ self first + ( self step * ( anInteger - 1 ) )
]

{ #category : #accessing }
IntervalRudesheim >> at:		anInteger
put:	anObject [

	self shouldNotImplement.
]

{ #category : #enumerating }
IntervalRudesheim >> do: aBlock [
	|
		day
		result
		last
	|

	result := OrderedCollection new.
	
	day := self first.
	last := self last + self step.
	[
		last = day
	]
		whileFalse:
		[
			aBlock
				value:	day.
			
			day := day + step.
		].
]

{ #category : #accessing }
IntervalRudesheim >> first [

	^ range first
]

{ #category : #accessing }
IntervalRudesheim >> last [

	^ range last
]

{ #category : #adding }
IntervalRudesheim >> remove:		oldObject
ifAbsent:	anExceptionBlock [ 

	self shouldNotImplement.
]

{ #category : #initialization }
IntervalRudesheim >> setTRangeRudesheim:	aTRangeRudesheim
stepNumber:				aStepNumber [

	range := aTRangeRudesheim.
	step := aStepNumber.
]

{ #category : #accessing }
IntervalRudesheim >> size [
	"#(a b c d e) size >>> 5"
	"#(x y z) size >>> 3"
	
	^ ( self extent / self step + 1 ) asInteger.
]

{ #category : #private }
IntervalRudesheim >> species [

	^ self class species.
]

{ #category : #accessing }
IntervalRudesheim >> step [

	^ step
]

{ #category : #printing }
IntervalRudesheim >> stringForSpecTitle [

	^self printString 
]
