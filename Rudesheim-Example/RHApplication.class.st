Class {
	#name : #RHApplication,
	#superclass : #CommandLineHandler,
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
RHApplication class >> commandName [

	^  'Rudesheim'
]

{ #category : #accessing }
RHApplication class >> description [

	^ 'none'
]

{ #category : #activation }
RHApplication >> activate [
]
