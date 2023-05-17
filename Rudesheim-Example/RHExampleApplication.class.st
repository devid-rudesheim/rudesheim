Class {
	#name : #RHExampleApplication,
	#superclass : #SpApplication,
	#instVars : [
		'exampleWindow'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #running }
RHExampleApplication class >> run [
	< script >
	
	self new
		"useBackend:  #Gtk;"
		run.
]

{ #category : #accessing }
RHExampleApplication >> defaultExampleWidget [

	^ self
		new:	RHStringTransformWindow. 

]

{ #category : #accessing }
RHExampleApplication >> exampleWidget [

	^ exampleWindow
		ifNil:
		[
			 exampleWindow := self defaultExampleWidget.
		].
]

{ #category : #running }
RHExampleApplication >> start [
	<script: 'self run'>
	|
		window
	|
	
	window := self exampleWidget.
	
	window announcer 
		when: 	RHClickedTransform
		send: 	#cull:
		to:
		[
			window trhModelForString
				value:	window textBoxForInput text.
		].
		
	window openWithSpec.
]
