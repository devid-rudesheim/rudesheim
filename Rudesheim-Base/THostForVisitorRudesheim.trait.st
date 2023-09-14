Trait {
	#name : #THostForVisitorRudesheim,
	#category : #'Rudesheim-Base-Visitor'
}

{ #category : #visiting }
THostForVisitorRudesheim >> acceptTVisitorRudesheim: aTVisitorRudesheim [

	^ aTVisitorRudesheim
		visitObject: self
]
