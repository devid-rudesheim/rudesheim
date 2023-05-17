Class {
	#name : #RHDateAndTimeRange,
	#superclass : #RHAbstractRange,
	#instVars : [
		'range'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
RHDateAndTimeRange >> first [

	^ range first asDateAndTime.
]

{ #category : #accessing }
RHDateAndTimeRange >> last [

	^ range last asDateAndTime.
]

{ #category : #initialization }
RHDateAndTimeRange >> setTRHRange:	aTRHRange [ 

	range := aTRHRange.
]
