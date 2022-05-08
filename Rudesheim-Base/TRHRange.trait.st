Trait {
	#name : #TRHRange,
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
TRHRange >> extent [

	^ self last - self first.
]

{ #category : #accessing }
TRHRange >> first [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TRHRange >> last [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TRHRange >> size [

	^ self extent
]

{ #category : #devid }
TRHRange >> withStep: anInteger [

	^ Interval
		from:	self first
		to:		self last
		by: 	anInteger.
]
