Class {
	#name : #PipeEchoRudesheim,
	#superclass : #PipeCommandRudesheim,
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #evaluating }
PipeEchoRudesheim class >> executeWithPipeStream: aPipeStream [

	aPipeStream stdout
		nextPutAll: aPipeStream stdin.

]
