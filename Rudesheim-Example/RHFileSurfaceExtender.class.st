Class {
	#name : #RHFileSurfaceExtender,
	#superclass : #Object,
	#instVars : [
		'extent',
		'file',
		'trhFileTraits'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
RHFileSurfaceExtender class >> extent:			aPoint
trhFileTraits:	aTRHFileTraits
file:				anAbstractFileReference [

	^ super new
		setExtent:		aPoint
		trhFileTraits:	aTRHFileTraits
		file:				anAbstractFileReference.
]

{ #category : #'instance creation' }
RHFileSurfaceExtender class >> new [

	^ self shouldNotImplement.
]

{ #category : #accessing }
RHFileSurfaceExtender >> extent [

	^ extent
]

{ #category : #accessing }
RHFileSurfaceExtender >> file [

	^ file
]

{ #category : #initialization }
RHFileSurfaceExtender >> setExtent:		aPoint
trhFileTraits:	aTRHFileTraits
file:				anAbstractFileReference [

	extent := aPoint.
	trhFileTraits := aTRHFileTraits.
	file := anAbstractFileReference.
]

{ #category : #enumerating }
RHFileSurfaceExtender >> surfaceDo: aBlock [
	|
		surface
	|
	
	surface :=
		trhFileTraits trhFileSurfaceProvider
			extent:		self extent
			fileName:	self file pathString, '.', self trhFileTraits  extention.
	[
		aBlock
			value:	surface.
	]
		ensure:
		[
			surface close.
		].
]

{ #category : #accessing }
RHFileSurfaceExtender >> trhFileTraits [

	^ trhFileTraits
]
