Class {
	#name : #BasicTimeStampForWorkRudesheim,
	#superclass : #Object,
	#traits : 'TTimeStampForWorkRudesheim + TAggregatedWorkingHoursRudesheim + TShouldntNewRudesheim',
	#classTraits : 'TTimeStampForWorkRudesheim classTrait + TAggregatedWorkingHoursRudesheim classTrait + TShouldntNewRudesheim classTrait',
	#instVars : [
		'tRangeRudesheimOfWorkTime',
		'tWorkingConditionRudesheim'
	],
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #'instance creation' }
BasicTimeStampForWorkRudesheim class >> fromTCoreTimeStampForWorkRudesheim:	aTRHTimeStampForWork [
	
	^ self basicNew
		setTTimeStampForWorkRudesheim:	aTRHTimeStampForWork.
]

{ #category : #accessing }
BasicTimeStampForWorkRudesheim >> aggregate [

	^ self
]

{ #category : #accessing }
BasicTimeStampForWorkRudesheim >> overtime [

	^ self tRangeRudesheimOfWorkTime extent.
]

{ #category : #initialization }
BasicTimeStampForWorkRudesheim >> setTTimeStampForWorkRudesheim:	aTTimeStampForWorkRudesheim [
	
	tRangeRudesheimOfWorkTime := aTTimeStampForWorkRudesheim tRangeRudesheimOfWorkTime.
	tWorkingConditionRudesheim := aTTimeStampForWorkRudesheim tWorkingConditionRudesheim.
]

{ #category : #accessing }
BasicTimeStampForWorkRudesheim >> tRangeRudesheimOfWorkTime [

	^ tRangeRudesheimOfWorkTime.
]

{ #category : #accessing }
BasicTimeStampForWorkRudesheim >> tWorkingConditionRudesheim [

	^ tWorkingConditionRudesheim.
]

{ #category : #accessing }
BasicTimeStampForWorkRudesheim >> workingHours [

	^ self tRangeRudesheimOfWorkTime extent.
]
