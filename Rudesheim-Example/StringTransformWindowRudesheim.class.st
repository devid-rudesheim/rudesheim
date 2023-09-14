Class {
	#name : #StringTransformWindowRudesheim,
	#superclass : #SpPresenter,
	#instVars : [
		'trhStringModel',
		'textBoxForInput',
		'textBoxForOutput',
		'buttonForTransform',
		'tModelForStringRudesheim'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #layout }
StringTransformWindowRudesheim class >> defaultLayout [
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
StringTransformWindowRudesheim class >> value [ 
	<script>
	
	^ self new openWithSpec.
]

{ #category : #accessing }
StringTransformWindowRudesheim >> buttonForTransform [

	^ buttonForTransform
		ifNil:
		[ 
			buttonForTransform := self defaultButtonForTransform.
		]
]

{ #category : #initialization }
StringTransformWindowRudesheim >> connectPresenters [

	super connectPresenters.
	
	self buttonForTransform
		action: 
		[
			self announcer
				announce:	ClickedTransformRudesheim new.
		].
]

{ #category : #accessing }
StringTransformWindowRudesheim >> defaultButtonForTransform [

	^self newButton
		label:	'変換';
		yourself .
]

{ #category : #accessing }
StringTransformWindowRudesheim >> defaultTModelForStringRudesheim [

	 ^ NewValueHolder new.
]

{ #category : #accessing }
StringTransformWindowRudesheim >> defaultTextBoxForInput [

	^ self newText.
]

{ #category : #accessing }
StringTransformWindowRudesheim >> defaultTextBoxForOutput [

	^ self newText.
]

{ #category : #initialization }
StringTransformWindowRudesheim >> initializePresenters [

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
StringTransformWindowRudesheim >> tModelForStringRudesheim [

	^ tModelForStringRudesheim
		ifNil:
		[
			self
				tModelForStringRudesheim: self defaultTModelForStringRudesheim.
			
			tModelForStringRudesheim
		].
]

{ #category : #accessing }
StringTransformWindowRudesheim >> tModelForStringRudesheim: aTModelForStringRudesheim [

	tModelForStringRudesheim
		ifNotNil:
		[
			tModelForStringRudesheim announcer
				unsubscribe:	self.
		].

	tModelForStringRudesheim := aTModelForStringRudesheim.
	
	tModelForStringRudesheim
		whenChangedSend: 	#updateOutput:
		to: 						self.
]

{ #category : #accessing }
StringTransformWindowRudesheim >> textBoxForInput [

	^ textBoxForInput
		ifNil:
		[
			textBoxForInput  := self defaultTextBoxForInput. 
		]
]

{ #category : #accessing }
StringTransformWindowRudesheim >> textBoxForOutput [

	^ textBoxForOutput
		ifNil:
		[
			textBoxForOutput := self defaultTextBoxForOutput. 
		]
]

{ #category : #accessing }
StringTransformWindowRudesheim >> title [ 

	^ 'Example'.
]

{ #category : #updating }
StringTransformWindowRudesheim >> updateOutput: anObjectOrNil [

	self textBoxForOutput 
		text:	self tModelForStringRudesheim value.

]
