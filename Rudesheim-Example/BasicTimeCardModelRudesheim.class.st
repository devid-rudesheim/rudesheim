Class {
	#name : #BasicTimeCardModelRudesheim,
	#superclass : #NewValueHolder,
	#traits : 'TModelRudesheim + TTimeCardRudesheim + TAggregatableRudesheim',
	#classTraits : 'TModelRudesheim classTrait + TTimeCardRudesheim classTrait + TAggregatableRudesheim classTrait',
	#instVars : [
		'rowsSources',
		'rowsModel',
		'aggregatedModel'
	],
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #accessing }
BasicTimeCardModelRudesheim >> aggregate [

	^ BasicAggregatedWorkingHoursRudesheim
		fromCollectionWithTCoreTimeStampForWorkRudesheim:	self rows.
]

{ #category : #accessing }
BasicTimeCardModelRudesheim >> defaultRowsSources [
	|
		source
	|
	
	source := BasicTimeCardRudesheim new.

	^
	{
		source.
		source actualTimeCard.
		source expectedTimeCard.
	}.


]

{ #category : #accessing }
BasicTimeCardModelRudesheim >> rows [

	^ self value rows.
]

{ #category : #accessing }
BasicTimeCardModelRudesheim >> rowsSources [

	^ rowsSources
		ifNil:
		[
			rowsSources := self defaultRowsSources.
		].

]
