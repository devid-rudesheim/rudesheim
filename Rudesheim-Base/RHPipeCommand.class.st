Class {
	#name : #RHPipeCommand,
	#superclass : #Object,
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #evaluating }
RHPipeCommand class >> executeWithPipeStream: aPipeStream [

	self subclassResponsibility.
]

{ #category : #evaluating }
RHPipeCommand >> executeWithPipeStream: aPipeStream [

	self class
		executeWithPipeStream: aPipeStream.
]
