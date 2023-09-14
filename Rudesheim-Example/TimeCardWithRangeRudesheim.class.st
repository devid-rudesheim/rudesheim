Class {
	#name : #TimeCardWithRangeRudesheim,
	#superclass : #Collection,
	#instVars : [
		'dateRange',
		'intervalForDateRange',
		'records',
		'paidLeaves'
	],
	#category : #'Rudesheim-Example-TimeCard'
}

{ #category : #private }
TimeCardWithRangeRudesheim class >> species [

	^ OrderedCollection
]

{ #category : #'instance creation' }
TimeCardWithRangeRudesheim class >> withTRangeRudesheim: aTRangeRudesheim [

	^ super new
		setTRangeRudesheim: aTRangeRudesheim
]

{ #category : #adding }
TimeCardWithRangeRudesheim >> add:	newObject [ 

	self shouldBeImplemented.
]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> dateRange [

	^ dateRange
		ifNil:
		[
			dateRange := self defaultDateRange.
		].
]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> defaultDateRange [

	^ RangeRudesheim
		fromTRangeRudesheim:
		{
			DateAndTime new.
			DateAndTime new.
		}

]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> defaultIntervalForDateRange [

	^ IntervalRudesheim
		withTRangeRudesheim:	self dateRange
		by:
		(
			Duration
 				days:	1
		)

]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> defaultPaidLeaves [

	^ Set new.
]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> defaultRecords [

	^ Dictionary new.
]

{ #category : #enumerating }
TimeCardWithRangeRudesheim >> do: aBlock [

	self intervalForDateRange
		do:
		[ :each |
			|
				continueMaker
				continue
			|
			
			continueMaker := thisContext.
			continue :=
			[
				continueMaker return.
			].

			self records
				at:	each asDate
				ifPresent:
				[ :value |
					aBlock
						value:	value.
					continue value.
				].
		
			(
				#( 1 7 )
					includes:	each asDate weekdayIndex
			)
				ifTrue:	continue.
			
			(
				self paidLeaves
					includes:	each asDate
			)
				ifTrue:	continue.
			
			aBlock
				value:
				(
					WorkDurationRudesheim
						fromTRangeRudesheim:
						{
							DateAndTime
								date:	each
								time:	'10:00' asTime.
							
							DateAndTime
								date:	each
								time:	'18:00' asTime.
						}
				)
		].
]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> intervalForDateRange [

	^ intervalForDateRange
		ifNil:
		[
			intervalForDateRange := self defaultIntervalForDateRange.
		].
]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> paidLeaves [

	^ paidLeaves
		ifNil:
		[
			paidLeaves := self defaultPaidLeaves.
		].
]

{ #category : #accessing }
TimeCardWithRangeRudesheim >> records [

	^ records
		ifNil:
		[
			records := self defaultRecords.
		].
]

{ #category : #removing }
TimeCardWithRangeRudesheim >> remove:		oldObject
ifAbsent:	anExceptionBlock [ 

	self shouldBeImplemented.
]

{ #category : #initialization }
TimeCardWithRangeRudesheim >> setTRangeRudesheim: aTRangeRudesheim [

	dateRange := aTRangeRudesheim
]

{ #category : #private }
TimeCardWithRangeRudesheim >> species [

	^ self class species.
]

{ #category : #'math functions' }
TimeCardWithRangeRudesheim >> total [

	^ self
		inject:
		{
			Duration zero.
			Duration zero.
		}
		into:
		[ :value :each |
			{
				each extent.
				each overtime.
			} + value.
		].
]
