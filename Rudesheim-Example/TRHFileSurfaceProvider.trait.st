Trait {
	#name : #TRHFileSurfaceProvider,
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
TRHFileSurfaceProvider classSide >> extent:			anExtent
fileName:		aFileName [
		
	^ self subclassResponsibility.
]

{ #category : #'instance creation' }
TRHFileSurfaceProvider >> extent:			anExtent
fileName:		aFileName [
	
	^ self class 
		extent:			anExtent
		fileName:		aFileName

]
