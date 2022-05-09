Trait {
	#name : #TRHRange,
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
TRHRange classSide >> separator [

	^ ' - '
]

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

{ #category : #printing }
TRHRange >> printOn:	aWriteStream [
	
	self first
		printOn:		aWriteStream.
	
	aWriteStream
		nextPutAll:		self separator.

	self last
		printOn:		aWriteStream.
]

{ #category : #accessing }
TRHRange >> separator [

	^ self class separator.
]

{ #category : #accessing }
TRHRange >> size [

	^ self extent
]

{ #category : #conversion }
TRHRange >> withStep: anInteger [

	^ Interval
		from:	self first
		to:		self last
		by: 	anInteger.
]
