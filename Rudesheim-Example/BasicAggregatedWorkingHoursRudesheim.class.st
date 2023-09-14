Class {
	#name : #BasicAggregatedWorkingHoursRudesheim,
	#superclass : #Object,
	#traits : 'TAggregatedWorkingHoursRudesheim',
	#classTraits : 'TAggregatedWorkingHoursRudesheim classTrait',
	#instVars : [
		'overtime',
		'workingHours'
	],
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #'instance creation' }
BasicAggregatedWorkingHoursRudesheim class >> fromCollectionWithTCoreTimeStampForWorkRudesheim:	aCollectionWithTCoreTimeStampForWorkRudesheim [

	^ self basicNew
		setCollectionWithTCoreTimeStampForWorkRudesheim:	aCollectionWithTCoreTimeStampForWorkRudesheim.
]

{ #category : #'instance creation' }
BasicAggregatedWorkingHoursRudesheim class >> fromTCoreTimeStampForWorkRudesheim:	aTCoreTimeStampForWorkRudesheim [

	^ self basicNew
		setTCoreTimeStampForWorkRudesheim:	aTCoreTimeStampForWorkRudesheim.
]

{ #category : #accessing }
BasicAggregatedWorkingHoursRudesheim >> overtime [

	^ overtime
]

{ #category : #initialization }
BasicAggregatedWorkingHoursRudesheim >> setCollectionWithTCoreTimeStampForWorkRudesheim:	aCollectionWithTCoreTimeStampForWorkRudesheim [

	workingHours := Duration zero.
	overtime := Duration zero.

	aCollectionWithTCoreTimeStampForWorkRudesheim
		do: 
		[ :each |
			|
				aggregated
			|

			aggregated := each aggregate.

			workingHours := aggregated workingHours + workingHours.
			overtime := aggregated overtime + overtime.
		].
]

{ #category : #initialization }
BasicAggregatedWorkingHoursRudesheim >> setTCoreTimeStampForWorkRudesheim:	aTCoreTimeStampForWorkRudesheim [
	|
		range
	|
	
	range := aTCoreTimeStampForWorkRudesheim tRangeRudesheimOfWorkTime.

	workingHours := range extent - ( Duration hours: 1 ).
	overtime :=
		Duration zero
			max: ( workingHours - aTCoreTimeStampForWorkRudesheim tWorkingConditionRudesheim workOnTime ).
]

{ #category : #accessing }
BasicAggregatedWorkingHoursRudesheim >> workingHours [

	^ workingHours
]
