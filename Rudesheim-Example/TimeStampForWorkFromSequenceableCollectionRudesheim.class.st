Class {
	#name : #TimeStampForWorkFromSequenceableCollectionRudesheim,
	#superclass : #FromSequenceableCollectionRudesheim,
	#traits : 'TShouldntNewRudesheim + TTimeStampForWorkRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait + TTimeStampForWorkRudesheim classTrait',
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #'instance creation' }
TimeStampForWorkFromSequenceableCollectionRudesheim class >> newFrom:	aSequenceableCollection [
	
	"To avoid　Traits"
	^ super
		newFrom: aSequenceableCollection.
]

{ #category : #accessing }
TimeStampForWorkFromSequenceableCollectionRudesheim >> tRangeRudesheimOfWorkTime [

	^ self sequenceableCollection
		at:	1.
]

{ #category : #accessing }
TimeStampForWorkFromSequenceableCollectionRudesheim >> tWorkingConditionRudesheim [

	^ self sequenceableCollection
		at:	2.
]
