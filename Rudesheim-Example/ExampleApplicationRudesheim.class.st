Class {
	#name : #ExampleApplicationRudesheim,
	#superclass : #StPharoApplication,
	#instVars : [
		'exampleWindow'
	],
	#category : #'Rudesheim-Example-Applications'
}

{ #category : #running }
ExampleApplicationRudesheim class >> run [
	< script >
	
	self new
		"useBackend:  #Gtk;"
		run.
]

{ #category : #accessing }
ExampleApplicationRudesheim >> defaultExampleWidget [

	^ self
		new:	StringTransformWindowRudesheim. 

]

{ #category : #accessing }
ExampleApplicationRudesheim >> exampleWidget [

	^ exampleWindow
		ifNil:
		[
			 exampleWindow := self defaultExampleWidget.
		].
]

{ #category : #running }
ExampleApplicationRudesheim >> start [

	<script: 'self run'>
	| window |
	window := self exampleWidget.

	window announcer
		when: ClickedTransformRudesheim
		send: #cull:
		to: [ window tModelForStringRudesheim value: window textBoxForInput text ].

	window open
]
