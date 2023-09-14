Class {
	#name : #FromSequenceableCollectionRudesheim,
	#superclass : #Model,
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#instVars : [
		'sequenceableCollection'
	],
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #'instance creation' }
FromSequenceableCollectionRudesheim class >> newFrom:	aSequenceableCollection [
	
	^ self basicNew
		setSequenceableCollection:	aSequenceableCollection.
]

{ #category : #accessing }
FromSequenceableCollectionRudesheim >> sequenceableCollection [

	^ sequenceableCollection
]

{ #category : #initialization }
FromSequenceableCollectionRudesheim >> setSequenceableCollection:	aSequenceableCollection [
	
	sequenceableCollection := aSequenceableCollection.
]
