Class {
	#name : #SharedQueueRudesheim,
	#superclass : #SharedQueue,
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #constants }
SharedQueueRudesheim class >> endOfStream [

	^ self endOfStreamError.
]

{ #category : #constants }
SharedQueueRudesheim class >> endOfStreamError [

	^ EndOfStreamRudesheim.
]

{ #category : #testing }
SharedQueueRudesheim >> atEnd [
	
	^ monitor
		critical: 
		[
			monitor
				waitWhile:
				[
					items isEmpty.
				].
			
			self class endOfStream = super peek.
		].
]

{ #category : #'open/close' }
SharedQueueRudesheim >> close [

	self
		nextPut:  self class endOfStream.
]

{ #category : #accessing }
SharedQueueRudesheim >> next [
	|
		item
	|
	
	item := super next.
	
	self class endOfStream = item 
		ifTrue:
		[
			self class endOfStreamError signal.
		].
	
	^ item.
]

{ #category : #accessing }
SharedQueueRudesheim >> peek [
	|
		item
	|
	
	item := super peek.
	
	self class endOfStream = item 
		ifTrue:
		[
			self class endOfStreamError signal.
		].
	
	^ item.
]
