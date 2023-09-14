Class {
	#name : #MonitorRudesheim,
	#superclass : #SpPresenter,
	#category : #'Rudesheim-Example'
}

{ #category : #specs }
MonitorRudesheim class >> defaultSpec [

	|
		baseLayout
	|
	
	baseLayout := SpBoxLayout.

	^ baseLayout newVertical 
		add:
		(
			baseLayout newHorizontal
				add:	#textBoxForInput
				withConstraints:
				[ :constraints |
					constraints
						expand:	false
				];
				add:	#textBoxForOutput;
				yourself
		);
		add:	#listForResult;
		add:	#listForExceptions;
		yourself

]

{ #category : #initialization }
MonitorRudesheim >> connectPresenters [

	super connectPresenters.
	
]

{ #category : #initialization }
MonitorRudesheim >> initializePresenters [

	super initializePresenters.
		
	self focusOrder
		addAll:
		{ 
		}.
]
