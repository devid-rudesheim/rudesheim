Class {
	#name : #ScopeForStreamRudesheim,
	#superclass : #Object,
	#traits : 'TShouldntNewRudesheim',
	#classTraits : 'TShouldntNewRudesheim classTrait',
	#instVars : [
		'stream'
	],
	#category : #'Rudesheim-Base-Streaming'
}

{ #category : #'instance creation' }
ScopeForStreamRudesheim class >> on:	aStream [
	
	^ super new
		setStream:	aStream.
]

{ #category : #enumerating }
ScopeForStreamRudesheim >> do: aBlock [

	^
	[
		aBlock
			cull:	self stream.
	]
		ensure:
		[
			self stream close.
		].
]

{ #category : #initialization }
ScopeForStreamRudesheim >> setStream: aStream [

	stream := aStream.
]

{ #category : #accessing }
ScopeForStreamRudesheim >> stream [

	^ stream
]
