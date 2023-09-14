Class {
	#name : #PDFTraitsRudesheim,
	#superclass : #Object,
	#traits : 'TFileTraitsRudesheim',
	#classTraits : 'TFileTraitsRudesheim classTrait',
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
PDFTraitsRudesheim class >> extention [

	^ 'pdf'.
]

{ #category : #accessing }
PDFTraitsRudesheim class >> tFileSurfaceProviderRudesheim [

	^ AthensCairoPDFSurface.
]
