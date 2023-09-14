Class {
	#name : #WorkDurationRudesheim,
	#superclass : #RangeRudesheim,
	#category : #'Rudesheim-Example-TimeCard'
}

{ #category : #accessing }
WorkDurationRudesheim >> overtime [
	
	^ Duration zero
		max:
			self extent -
			(		
				Duration
					hours:	8
			).
]

{ #category : #accessing }
WorkDurationRudesheim >> workingHours [

	^ self extent.
]
