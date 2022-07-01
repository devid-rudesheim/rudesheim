Trait {
	#name : #TRHRange,
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #comparing }
TRHRange >> = anObject [

	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue:
		[
			^ true.
		].
	
	self first = anObject first
		ifFalse:
		[
			^ false.
		].

	self last = anObject last
		ifFalse:
		[
			^ false.
		].

	^ true.
]

{ #category : #accessing }
TRHRange >> first [

	^ self subclassResponsibility.
]

{ #category : #comparing }
TRHRange >> hash [

	"Answer an integer value that is related to the identity of the receiver."

	^
	{
		self first.
		self last.
	} hash.
]

{ #category : #accessing }
TRHRange >> last [

	^ self subclassResponsibility.
]
