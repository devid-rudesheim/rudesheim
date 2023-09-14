Trait {
	#name : #TCoreTimeStampForWorkRudesheim,
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #accessing }
TCoreTimeStampForWorkRudesheim >> tRangeRudesheimOfWorkTime [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TCoreTimeStampForWorkRudesheim >> tWorkingConditionRudesheim [

	^ BasicWorkingConditionRudesheim new.
]
