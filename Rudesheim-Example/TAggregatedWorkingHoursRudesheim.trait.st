Trait {
	#name : #TAggregatedWorkingHoursRudesheim,
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #accessing }
TAggregatedWorkingHoursRudesheim >> overtime [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TAggregatedWorkingHoursRudesheim >> workingHours [

	^ self subclassResponsibility.
]
