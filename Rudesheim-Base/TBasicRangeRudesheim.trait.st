Trait {
	#name : #TBasicRangeRudesheim,
	#traits : 'TRangeRudesheim',
	#classTraits : 'TRangeRudesheim classTrait',
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
TBasicRangeRudesheim classSide >> intervalSpecies [

	^ Interval.
]

{ #category : #accessing }
TBasicRangeRudesheim classSide >> separator [

	^ ' - '
]

{ #category : #accessing }
TBasicRangeRudesheim >> extent [

	^ self last - self first.
]

{ #category : #printing }
TBasicRangeRudesheim >> printOn:	aWriteStream [
	
	self first
		printOn:		aWriteStream.
	
	aWriteStream
		nextPutAll:		self separator.

	self last
		printOn:		aWriteStream.
]

{ #category : #testing }
TBasicRangeRudesheim >> rangeIncludes:	aNumber [
	
	^ aNumber
		between:	self first
		and:		self last
]

{ #category : #accessing }
TBasicRangeRudesheim >> separator [

	^ self class separator.
]

{ #category : #accessing }
TBasicRangeRudesheim >> size [

	^ self extent
]

{ #category : #conversion }
TBasicRangeRudesheim >> withStep: anInteger [

	^ self class intervalSpecies
		from:	self first
		to:		self last
		by: 	anInteger.
]
