Class {
	#name : #ColumnForDateAndTimeRudesheim,
	#superclass : #BasicColumnRudesheim,
	#category : #'Rudesheim-Base-Visitor'
}

{ #category : #visiting }
ColumnForDateAndTimeRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForDateAndTimeRudesheim: self
]
