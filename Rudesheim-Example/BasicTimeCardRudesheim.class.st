Class {
	#name : #BasicTimeCardRudesheim,
	#superclass : #Model,
	#traits : 'TModelRudesheim + TTimeCardRudesheim',
	#classTraits : 'TModelRudesheim classTrait + TTimeCardRudesheim classTrait',
	#instVars : [
		'actualTimeCard',
		'expectedTimeCard'
	],
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #accessing }
BasicTimeCardRudesheim >> actualTimeCard [

	^ actualTimeCard
		ifNil:
		[
			actualTimeCard := self defaultActualTimeCard.
		].

]

{ #category : #accessing }
BasicTimeCardRudesheim >> defaultActualTimeCard [

	^ ActualTimeCardRudesheim new.
]

{ #category : #accessing }
BasicTimeCardRudesheim >> defaultExpectedTimeCard [

	^ ExpetedTimeCardRudesheim new.

]

{ #category : #accessing }
BasicTimeCardRudesheim >> expectedTimeCard [

	^ expectedTimeCard
		ifNil:
		[
			expectedTimeCard := self defaultExpectedTimeCard.
		].

]

{ #category : #accessing }
BasicTimeCardRudesheim >> rows [
	|
		workingCondition
		
		rows
	|
	
	workingCondition := BasicWorkingConditionRudesheim new.

	rows :=	
		Dictionary
			newFrom:
			(
				self expectedTimeCard rows
					collect:
					[ :each |
						each tRangeRudesheimOfWorkTime first -> each
					]
			).
	
	self actualTimeCard rows
		do:
		[ :each |
		
			rows
				at:				each tRangeRudesheimOfWorkTime first
				ifAbsentPut:	each.

		].

	^ rows asArray
		sort:
		[ :left :right |
			left tRangeRudesheimOfWorkTime first < right tRangeRudesheimOfWorkTime first
		].
]
