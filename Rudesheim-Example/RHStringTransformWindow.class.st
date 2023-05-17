Class {
	#name : #RHStringTransformWindow,
	#superclass : #SpPresenter,
	#instVars : [
		'trhModelForString',
		'trhStringModel',
		'textBoxForInput',
		'textBoxForOutput',
		'buttonForTransform'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #specs }
RHStringTransformWindow class >> defaultSpec [
	|
		baseLayout
	|
	
	baseLayout := SpBoxLayout.

	^ baseLayout newVertical 
		add:	#buttonForTransform
		withConstraints:
		[ :constraints |
			constraints
				expand:	false
		];
		add:
		(
			baseLayout newHorizontal
				add:	#textBoxForInput;
				add:	#textBoxForOutput;
				yourself
		);
		yourself

]

{ #category : #specs }
RHStringTransformWindow class >> value [ 
	<script>
	
	^ self new openWithSpec.
]

{ #category : #accessing }
RHStringTransformWindow >> buttonForTransform [

	^ buttonForTransform
		ifNil:
		[ 
			buttonForTransform := self defaultButtonForTransform.
		]
]

{ #category : #initialization }
RHStringTransformWindow >> connectPresenters [

	super connectPresenters.
	
	self buttonForTransform
		action: 
		[
			self announcer
				announce:	RHClickedTransform new.
		].
]

{ #category : #accessing }
RHStringTransformWindow >> defaultButtonForTransform [

	^self newButton
		label:	'変換';
		yourself .
]

{ #category : #accessing }
RHStringTransformWindow >> defaultTRHModelForString [

	 ^ NewValueHolder new.
]

{ #category : #accessing }
RHStringTransformWindow >> defaultTextBoxForInput [

	^ self newText.
]

{ #category : #accessing }
RHStringTransformWindow >> defaultTextBoxForOutput [

	^ self newText.
]

{ #category : #initialization }
RHStringTransformWindow >> initializePresenters [

	super initializePresenters.
		
	self focusOrder
		addAll:
		{ 
			self buttonForTransform.
			self textBoxForOutput.
			self textBoxForInput.
		}.
]

{ #category : #accessing }
RHStringTransformWindow >> textBoxForInput [

	^ textBoxForInput
		ifNil:
		[
			textBoxForInput  := self defaultTextBoxForInput. 
		]
]

{ #category : #accessing }
RHStringTransformWindow >> textBoxForOutput [

	^ textBoxForOutput
		ifNil:
		[
			textBoxForOutput := self defaultTextBoxForOutput. 
		]
]

{ #category : #accessing }
RHStringTransformWindow >> title [ 

	^ 'Example'.
]

{ #category : #accessing }
RHStringTransformWindow >> trhModelForString [

	^ trhModelForString
		ifNil:
		[
			self
				trhModelForString: self defaultTRHModelForString.
			
			trhModelForString
		].
]

{ #category : #accessing }
RHStringTransformWindow >> trhModelForString: aTRHModelForString [

	trhModelForString
		ifNotNil:
		[
			trhModelForString announcer
				unsubscribe:	self.
		].

	trhModelForString := aTRHModelForString.
	
	trhModelForString
		whenChangedSend: 	#updateOutput:
		to: 						self.
]

{ #category : #updating }
RHStringTransformWindow >> updateOutput: anObjectOrNil [

	self textBoxForOutput 
		text:	self trhModelForString value.

]
