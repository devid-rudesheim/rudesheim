Trait {
	#name : #TColumnRudesheim,
	#traits : 'THostForVisitorRudesheim',
	#classTraits : 'THostForVisitorRudesheim classTrait',
	#category : #'Rudesheim-Base-Visitor'
}

{ #category : #accessing }
TColumnRudesheim >> defaultEvaluationForRead [

	^
	[ :row |
		row value.
	].
]

{ #category : #visiting }
TColumnRudesheim >> defaultEvaluationForWrite [

	^
	[ :row :value |
		row
			value:	value.
	].
]

{ #category : #accessing }
TColumnRudesheim >> evaluationForRead [

	^ self defaultEvaluationForRead.
]

{ #category : #accessing }
TColumnRudesheim >> evaluationForWrite [

	^
	[ :row :value |
		row
			value:	value.
	].
]

{ #category : #accessing }
TColumnRudesheim >> title [

	^ ''
]
