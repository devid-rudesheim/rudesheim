Class {
	#name : #RHWorkDuration,
	#superclass : #RHRange,
	#category : #'Rudesheim-Example-TimeCard'
}

{ #category : #accessing }
RHWorkDuration >> overtime [
	
	^ Duration zero
		max:
			self extent -
			(		
				Duration
					hours:	8
			).
]

{ #category : #accessing }
RHWorkDuration >> workingHours [

	^ self extent.
]
