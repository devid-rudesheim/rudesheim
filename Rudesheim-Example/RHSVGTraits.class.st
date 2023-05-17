Class {
	#name : #RHSVGTraits,
	#superclass : #Object,
	#traits : 'TRHFileTraits',
	#classTraits : 'TRHFileTraits classTrait',
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
RHSVGTraits class >> extention [

	^ 'svg'.
]

{ #category : #accessing }
RHSVGTraits class >> trhFileSurfaceProvider [

	^ AthensCairoSVGSurface.
]
