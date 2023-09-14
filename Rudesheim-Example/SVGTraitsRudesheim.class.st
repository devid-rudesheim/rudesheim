Class {
	#name : #SVGTraitsRudesheim,
	#superclass : #Object,
	#traits : 'TFileTraitsRudesheim',
	#classTraits : 'TFileTraitsRudesheim classTrait',
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
SVGTraitsRudesheim class >> extention [

	^ 'svg'.
]

{ #category : #accessing }
SVGTraitsRudesheim class >> tFileSurfaceProviderRudesheim [

	^ AthensCairoSVGSurface.
]
