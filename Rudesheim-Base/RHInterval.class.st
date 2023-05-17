Class {
	#name : #RHInterval,
	#superclass : #SequenceableCollection,
	#traits : 'TRHBasicRange + TRHShouldntNew',
	#classTraits : 'TRHBasicRange classTrait + TRHShouldntNew classTrait',
	#instVars : [
		'range',
		'step'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #'instance creation' }
RHInterval class >> from:	aFromNumber
to:		aToNumber
by:		aStepNumber [
	
	^ self
		withTRHRange:
		(
			RHRange
				fromTRHRange:
				{
					aFromNumber.
					aToNumber.
				}
		)
		by:	aStepNumber.
]

{ #category : #accessing }
RHInterval class >> intervalSpecies [

	^ self.
]

{ #category : #private }
RHInterval class >> species [

	^ Array
]

{ #category : #accessing }
RHInterval class >> streamSpecies [

	^ Array
]

{ #category : #'instance creation' }
RHInterval class >> withTRHRange:	aTRHRange
by:				aStepNumber [

	^ self basicNew
		setTRHRange:	aTRHRange
		stepNumber:		aStepNumber 
]

{ #category : #adding }
RHInterval >> add:	newObject [ 

	self shouldNotImplement.
]

{ #category : #accessing }
RHInterval >> at: anInteger [
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
RHInterval >> at:		anInteger
put:	anObject [

	self shouldNotImplement.
]

{ #category : #enumerating }
RHInterval >> do: aBlock [
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
RHInterval >> first [

	^ range first
]

{ #category : #accessing }
RHInterval >> last [

	^ range last
]

{ #category : #adding }
RHInterval >> remove:		oldObject
ifAbsent:	anExceptionBlock [ 

	self shouldNotImplement.
]

{ #category : #initialization }
RHInterval >> setTRHRange:	aTRHRange
stepNumber:		aStepNumber [

	range := aTRHRange.
	step := aStepNumber.
]

{ #category : #accessing }
RHInterval >> size [
	"#(a b c d e) size >>> 5"
	"#(x y z) size >>> 3"
	
	^ ( self extent / self step + 1 ) asInteger.
]

{ #category : #private }
RHInterval >> species [

	^ self class species.
]

{ #category : #accessing }
RHInterval >> step [

	^ step
]

{ #category : #printing }
RHInterval >> stringForSpecTitle [

	^self printString 
]
