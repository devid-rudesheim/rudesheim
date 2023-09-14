Class {
	#name : #DFileSurfaceExtenderRudesheim,
	#superclass : #Object,
	#instVars : [
		'extent',
		'file',
		'tFileTraitsRudesheim'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #'instance creation' }
DFileSurfaceExtenderRudesheim class >> extent:					aPoint
tFileTraitsRudesheim:	aTFileTraitsRudesheim
file:						anAbstractFileReference [

	^ super new
		setExtent:				aPoint
		tFileTraitsRudesheim:	aTFileTraitsRudesheim
		file:						anAbstractFileReference.
]

{ #category : #'instance creation' }
DFileSurfaceExtenderRudesheim class >> new [

	^ self shouldNotImplement.
]

{ #category : #accessing }
DFileSurfaceExtenderRudesheim >> extent [

	^ extent
]

{ #category : #accessing }
DFileSurfaceExtenderRudesheim >> file [

	^ file
]

{ #category : #initialization }
DFileSurfaceExtenderRudesheim >> setExtent: 					aPoint
tFileTraitsRudesheim: 	aTFileTraitsRudesheim
file: 							anAbstractFileReference [

	extent 			:= aPoint.
	tFileTraitsRudesheim	:= aTFileTraitsRudesheim.
	file				:= anAbstractFileReference
]

{ #category : #enumerating }
DFileSurfaceExtenderRudesheim >> surfaceDo: aBlock [

	(
		tFileTraitsRudesheim tFileSurfaceProviderRudesheim
			extent:		self extent
			fileName:	self file pathString, '.', self tFileTraitsRudesheim extention
	) intoRHScope
		do:	aBlock.
]

{ #category : #accessing }
DFileSurfaceExtenderRudesheim >> tFileTraitsRudesheim [

	^ tFileTraitsRudesheim
]
