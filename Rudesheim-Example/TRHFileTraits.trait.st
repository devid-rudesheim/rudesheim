Trait {
	#name : #TRHFileTraits,
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
TRHFileTraits classSide >> extention [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TRHFileTraits classSide >> trhFileSurfaceProvider [
	"^ TRHFileSurfaceProvider"

	^ self subclassResponsibility.
]

{ #category : #accessing }
TRHFileTraits >> extention [

	^ self class extention.
]

{ #category : #accessing }
TRHFileTraits >> trhFileSurfaceProvider [
	"^ TRHFileSurfaceProvider"

	^ self class trhFileSurfaceProvider.
]
