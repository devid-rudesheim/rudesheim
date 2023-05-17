Class {
	#name : #RHSharedQueue,
	#superclass : #SharedQueue,
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #constants }
RHSharedQueue class >> endOfStream [

	^ self endOfStreamError.
]

{ #category : #constants }
RHSharedQueue class >> endOfStreamError [

	^ RHEndOfStream.
]

{ #category : #testing }
RHSharedQueue >> atEnd [
	
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
RHSharedQueue >> close [

	self
		nextPut:  self class endOfStream.
]

{ #category : #accessing }
RHSharedQueue >> next [
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
RHSharedQueue >> peek [
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
