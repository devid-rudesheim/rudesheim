Class {
	#name : #RHDFileSurfaceExtender,
	#superclass : #Object,
	#instVars : [
		'extent',
		'file',
		'trhFileTraits'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
RHDFileSurfaceExtender class >> extent:			aPoint
trhFileTraits:	aTRHFileTraits
file:				anAbstractFileReference [

	^ super new
		setExtent:		aPoint
		trhFileTraits:	aTRHFileTraits
		file:			anAbstractFileReference.
]

{ #category : #'instance creation' }
RHDFileSurfaceExtender class >> new [

	^ self shouldNotImplement.
]

{ #category : #accessing }
RHDFileSurfaceExtender >> extent [

	^ extent
]

{ #category : #accessing }
RHDFileSurfaceExtender >> file [

	^ file
]

{ #category : #initialization }
RHDFileSurfaceExtender >> setExtent:		aPoint
trhFileTraits:	aTRHFileTraits
file:				anAbstractFileReference [

	extent := aPoint.
	trhFileTraits := aTRHFileTraits.
	file := anAbstractFileReference.
]

{ #category : #enumerating }
RHDFileSurfaceExtender >> surfaceDo: aBlock [

	(
		trhFileTraits trhFileSurfaceProvider
			extent:		self extent
			fileName:	self file pathString, '.', self trhFileTraits extention
	) intoRHScope
		do:	aBlock.
]

{ #category : #accessing }
RHDFileSurfaceExtender >> trhFileTraits [

	^ trhFileTraits
]
