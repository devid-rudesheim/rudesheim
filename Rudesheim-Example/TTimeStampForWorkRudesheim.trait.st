Trait {
	#name : #TTimeStampForWorkRudesheim,
	#traits : 'TAggregatableRudesheim + TCoreTimeStampForWorkRudesheim',
	#classTraits : 'TAggregatableRudesheim classTrait + TCoreTimeStampForWorkRudesheim classTrait',
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #'instance creation' }
TTimeStampForWorkRudesheim classSide >> newFrom:	aSequenceableCollection [
	
	^ TimeStampForWorkFromSequenceableCollectionRudesheim
		newFrom:	aSequenceableCollection.
]

{ #category : #accessing }
TTimeStampForWorkRudesheim >> aggregate [

	^ BasicAggregatedWorkingHoursRudesheim
		fromTCoreTimeStampForWorkRudesheim:	self.
]

{ #category : #accessing }
TTimeStampForWorkRudesheim >> tRangeRudesheimOfWorkTime [

	^ self subclassResponsibility.
]
