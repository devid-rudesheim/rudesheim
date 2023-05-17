Class {
	#name : #RHPipeEcho,
	#superclass : #RHPipeCommand,
	#category : #'Rudesheim-Base-Pipe'
}

{ #category : #evaluating }
RHPipeEcho class >> executeWithPipeStream: aPipeStream [

	aPipeStream stdout
		nextPutAll: aPipeStream stdin.

]
