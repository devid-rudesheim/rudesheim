Trait {
	#name : #TRHTypeAssistantProvider,
	#category : #'Rudesheim-Base-Type-Assistant'
}

{ #category : #factory }
TRHTypeAssistantProvider classSide >> assistantForFloatWith:	aTRHTypeProperties [

	^ self
		assistantForNumberWith:	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider classSide >> assistantForIntegerWith:	aTRHTypeProperties [

	^ self
		assistantForNumberWith:	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider classSide >> assistantForNilWith:	aTRHTypeProperties [

	^ self subclassResponsibility.
]

{ #category : #factory }
TRHTypeAssistantProvider classSide >> assistantForNumberWith:	aTRHTypeProperties [

	^ self
		assistantForNilWith: 	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider classSide >> assistantForStringWith:	aTRHTypeProperties [

	^ self
		assistantForNilWith: 	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider >> assistantForFloatWith:	aTRHTypeProperties [

	^ self class
		assistantForFloatWith:	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider >> assistantForIntegerWith:	aTRHTypeProperties [

	^ self class
		assistantForIntegerWith:	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider >> assistantForNilWith:	aTRHTypeProperties [

	^ self class
		assistantForNilWith: 	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider >> assistantForNumberWith:	aTRHTypeProperties [

	^ self class
		assistantForNumberWith:	aTRHTypeProperties.
]

{ #category : #factory }
TRHTypeAssistantProvider >> assistantForStringWith:	aTRHTypeProperties [

	^ self class
		assistantForStringWith:	aTRHTypeProperties. 
]
