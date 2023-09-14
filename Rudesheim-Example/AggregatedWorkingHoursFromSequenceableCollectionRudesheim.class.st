Class {
	#name : #AggregatedWorkingHoursFromSequenceableCollectionRudesheim,
	#superclass : #FromSequenceableCollectionRudesheim,
	#traits : 'TShouldntNewRudesheim + TAggregatedWorkingHoursRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait + TAggregatedWorkingHoursRudesheim classTrait',
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #'instance creation' }
AggregatedWorkingHoursFromSequenceableCollectionRudesheim class >> newFrom:	aSequenceableCollection [
	
	"To avoid　Traits"
	^ super
		newFrom: aSequenceableCollection.
]

{ #category : #accessing }
AggregatedWorkingHoursFromSequenceableCollectionRudesheim >> overtime [

	^ self sequenceableCollection
		at:	2.
]

{ #category : #accessing }
AggregatedWorkingHoursFromSequenceableCollectionRudesheim >> workingHours [
]
