Trait {
	#name : #TVisitorRudesheim,
	#category : #'Rudesheim-Base-Visitor'
}

{ #category : #visiting }
TVisitorRudesheim >> visit: aTRHHostForVisitor [

	^ aTRHHostForVisitor
		acceptTVisitorRudesheim:	self.
]

{ #category : #visiting }
TVisitorRudesheim >> visitColumnForDateAndTimeRudesheim: aColumnForDateAndTimeRudesheim [

	^ self
		visitObject: aColumnForDateAndTimeRudesheim
]

{ #category : #visiting }
TVisitorRudesheim >> visitColumnForDurationRudesheim: aColumnForDurationRudesheim [

	^ self
		visitObject: aColumnForDurationRudesheim
]

{ #category : #visiting }
TVisitorRudesheim >> visitObject:	anObject [
	
	^ self subclassResponsibility.
]
