Class {
	#name : #RHTimeCardWithRange,
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
RHTimeCardWithRange class >> species [

	^ OrderedCollection
]

{ #category : #'instance creation' }
RHTimeCardWithRange class >> withRHTRange:	aRHTRange [
	
	^ super new
		setRHTRange:	aRHTRange.
]

{ #category : #adding }
RHTimeCardWithRange >> add:	newObject [ 

	self shouldBeImplemented.
]

{ #category : #accessing }
RHTimeCardWithRange >> dateRange [

	^ dateRange
		ifNil:
		[
			dateRange := self defaultDateRange.
		].
]

{ #category : #accessing }
RHTimeCardWithRange >> defaultDateRange [

	^ RHRange
		fromTRHRange:
		{
			DateAndTime new.
			DateAndTime new.
		}

]

{ #category : #accessing }
RHTimeCardWithRange >> defaultIntervalForDateRange [

	^ RHInterval
		withTRHRange:	self dateRange
		by:
		(
			Duration
 				days:	1
		)

]

{ #category : #accessing }
RHTimeCardWithRange >> defaultPaidLeaves [

	^ Set new.
]

{ #category : #accessing }
RHTimeCardWithRange >> defaultRecords [

	^ Dictionary new.
]

{ #category : #enumerating }
RHTimeCardWithRange >> do: aBlock [

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
					RHWorkDuration
						fromTRHRange:
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
RHTimeCardWithRange >> intervalForDateRange [

	^ intervalForDateRange
		ifNil:
		[
			intervalForDateRange := self defaultIntervalForDateRange.
		].
]

{ #category : #accessing }
RHTimeCardWithRange >> paidLeaves [

	^ paidLeaves
		ifNil:
		[
			paidLeaves := self defaultPaidLeaves.
		].
]

{ #category : #accessing }
RHTimeCardWithRange >> records [

	^ records
		ifNil:
		[
			records := self defaultRecords.
		].
]

{ #category : #removing }
RHTimeCardWithRange >> remove:		oldObject
ifAbsent:	anExceptionBlock [ 

	self shouldBeImplemented.
]

{ #category : #initialization }
RHTimeCardWithRange >> setRHTRange:	aRHTRange [
	
	dateRange := aRHTRange.
]

{ #category : #private }
RHTimeCardWithRange >> species [

	^ self class species.
]

{ #category : #'math functions' }
RHTimeCardWithRange >> total [

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
