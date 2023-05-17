"
A RHAbstractRangeTest is a test class for testing the behavior of RHAbstractRange
"
Class {
	#name : #RHAbstractRangeTest,
	#superclass : #TRHRangeTest,
	#category : #'Rudesheim-Base-Tests-Collections'
}

{ #category : #accessing }
RHAbstractRangeTest >> defaultBasicTarget [

	^ self targetClass
		fromTRHRange:
		{
			self sourceFirst.
			self sourceLast.
		}
]
