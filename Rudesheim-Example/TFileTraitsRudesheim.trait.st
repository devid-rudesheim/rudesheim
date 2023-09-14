Trait {
	#name : #TFileTraitsRudesheim,
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
TFileTraitsRudesheim classSide >> extention [

	^ self subclassResponsibility.
]

{ #category : #accessing }
TFileTraitsRudesheim classSide >> tFileSurfaceProviderRudesheim [
	"^ TRHFileSurfaceProvider"

	^ self subclassResponsibility.
]

{ #category : #accessing }
TFileTraitsRudesheim >> extention [

	^ self class extention.
]

{ #category : #accessing }
TFileTraitsRudesheim >> tFileSurfaceProviderRudesheim [
	"^ TRHFileSurfaceProvider"

	^ self class tFileSurfaceProviderRudesheim.
]
