Trait {
	#name : #TRHBasicRange,
	#traits : 'TRHRange',
	#classTraits : 'TRHRange classTrait',
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
TRHBasicRange classSide >> intervalSpecies [

	^ Interval.
]

{ #category : #accessing }
TRHBasicRange classSide >> separator [

	^ ' - '
]

{ #category : #accessing }
TRHBasicRange >> extent [

	^ self last - self first.
]

{ #category : #printing }
TRHBasicRange >> printOn:	aWriteStream [
	
	self first
		printOn:		aWriteStream.
	
	aWriteStream
		nextPutAll:		self separator.

	self last
		printOn:		aWriteStream.
]

{ #category : #testing }
TRHBasicRange >> rangeIncludes:	aNumber [
	
	^ aNumber
		between:	self first
		and:		self last
]

{ #category : #accessing }
TRHBasicRange >> separator [

	^ self class separator.
]

{ #category : #accessing }
TRHBasicRange >> size [

	^ self extent
]

{ #category : #conversion }
TRHBasicRange >> withStep: anInteger [

	^ self class intervalSpecies
		from:	self first
		to:		self last
		by: 	anInteger.
]
