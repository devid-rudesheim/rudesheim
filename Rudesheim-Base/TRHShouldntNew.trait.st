Trait {
	#name : #TRHShouldntNew,
	#category : #'Rudesheim-Base-Utility'
}

{ #category : #'instance creation' }
TRHShouldntNew classSide >> new [

	^ self shouldNotImplement.
]

{ #category : #'instance creation' }
TRHShouldntNew classSide >> new: anIndex [

	^ self shouldNotImplement.
]
