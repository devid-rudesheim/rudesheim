"
A RHAbstractRangeTest is a test class for testing the behavior of RHAbstractRange
"
Class {
	#name : #AbstractRangeRudesheimTest,
	#superclass : #TRangeRudesheimTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
AbstractRangeRudesheimTest >> defaultBasicTarget [

	^ self targetClass
		fromTRangeRudesheim:
		{
			self sourceFirst.
			self sourceLast.
		}
]
