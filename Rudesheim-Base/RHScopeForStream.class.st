Class {
	#name : #RHScopeForStream,
	#superclass : #Object,
	#traits : 'TRHShouldntNew',
	#classTraits : 'TRHShouldntNew classTrait',
	#instVars : [
		'stream'
	],
	#category : #'Rudesheim-Base-Streaming'
}

{ #category : #'instance creation' }
RHScopeForStream class >> on:	aStream [
	
	^ super new
		setStream:	aStream.
]

{ #category : #enumerating }
RHScopeForStream >> do: aBlock [

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
RHScopeForStream >> setStream: aStream [

	stream := aStream.
]

{ #category : #accessing }
RHScopeForStream >> stream [

	^ stream
]
