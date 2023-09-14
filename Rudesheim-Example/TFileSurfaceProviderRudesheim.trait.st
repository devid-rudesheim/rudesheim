Trait {
	#name : #TFileSurfaceProviderRudesheim,
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
TFileSurfaceProviderRudesheim classSide >> extent:			anExtent
fileName:		aFileName [
		
	^ self subclassResponsibility.
]

{ #category : #'instance creation' }
TFileSurfaceProviderRudesheim >> extent:			anExtent
fileName:		aFileName [
	
	^ self class 
		extent:			anExtent
		fileName:		aFileName

]
