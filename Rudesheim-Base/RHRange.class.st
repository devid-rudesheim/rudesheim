Class {
	#name : #RHRange,
	#superclass : #RHAbstractRange,
	#instVars : [
		'first',
		'last'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
RHRange >> first [

	^ first.
]

{ #category : #accessing }
RHRange >> last [

	^ last
]

{ #category : #initialization }
RHRange >> setTRHRange:	aTRHRange [ 

	aTRHRange first > aTRHRange last
		ifTrue:
		[
			first := aTRHRange last.
			last :=  aTRHRange first.
			
			^ self.
		].
	
	first := aTRHRange first.
	last := aTRHRange last.
]
