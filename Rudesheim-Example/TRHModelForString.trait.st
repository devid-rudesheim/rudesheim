Trait {
	#name : #TRHModelForString,
	#traits : 'TRHModel',
	#classTraits : 'TRHModel classTrait',
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
TRHModelForString >> announcer [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TRHModelForString >> value [

	^ self subclassResponsibility.
]
