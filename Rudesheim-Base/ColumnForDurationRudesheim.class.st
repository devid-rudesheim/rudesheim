Class {
	#name : #ColumnForDurationRudesheim,
	#superclass : #BasicColumnRudesheim,
	#category : #'Rudesheim-Base-Visitor'
}

{ #category : #visiting }
ColumnForDurationRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitColumnForDurationRudesheim: self
]
