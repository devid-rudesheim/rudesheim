Class {
	#name : #PipeCommandRudesheim,
	#superclass : #Object,
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #evaluating }
PipeCommandRudesheim class >> executeWithPipeStream: aPipeStream [

	self subclassResponsibility.
]

{ #category : #evaluating }
PipeCommandRudesheim >> executeWithPipeStream: aPipeStream [

	self class
		executeWithPipeStream: aPipeStream.
]
