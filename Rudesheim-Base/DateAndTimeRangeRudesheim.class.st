Class {
	#name : #DateAndTimeRangeRudesheim,
	#superclass : #AbstractRangeRudesheim,
	#instVars : [
		'range'
	],
	#category : #'Rudesheim-Base-Collections'
}

{ #category : #accessing }
DateAndTimeRangeRudesheim >> first [

	^ range first asDateAndTime.
]

{ #category : #accessing }
DateAndTimeRangeRudesheim >> last [

	^ range last asDateAndTime.
]

{ #category : #initialization }
DateAndTimeRangeRudesheim >> setTRangeRudesheim: aTRangeRudesheim [

	range := aTRangeRudesheim
]
