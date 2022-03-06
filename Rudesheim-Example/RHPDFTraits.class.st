Class {
	#name : #RHPDFTraits,
	#superclass : #Object,
	#traits : 'TRHFileTraits',
	#classTraits : 'TRHFileTraits classTrait',
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
RHPDFTraits class >> extention [

	^ 'pdf'.
]

{ #category : #accessing }
RHPDFTraits class >> trhFileSurfaceProvider [

	^ AthensCairoPDFSurface.
]
