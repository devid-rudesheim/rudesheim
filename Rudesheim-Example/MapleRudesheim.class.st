Class {
	#name : #MapleRudesheim,
	#superclass : #StPharoApplication,
	#category : #'Rudesheim-Example-Applications'
}

{ #category : #running }
MapleRudesheim class >> run [
	< script >
	
	self new run.
]

{ #category : #'private - running' }
MapleRudesheim >> start [
	< script: 'self run' >
	|
		controlPad
		view
	|

	view :=
		self
			newPresenter: SpRoassalPresenter.
	(
		view
			script:
			[ :canvas |

				canvas
					addAnimation:
					(
						canvas newAnimation
							repeat;
							duration:	1 milliSeconds;
							when:		RSAnimationLoopEvent
							do:
							[ :event | 
							];
							onStepDo:
							[ :time |
							]
					).

			];
			open
	)
		title:	'View';
		whenClosedDo:
		[
			self closeAllWindows.
		];
		extent: 1 @ 1 * 800.

	controlPad :=
		self
			newPresenter: SpPresenterWithModel.

	(
		controlPad

			"focusOrder: 1;
			
			bindKeyCombination: KMUntypeableSingleKeyCombination arrowUp 
			toAction:
			[
				Transcript
					show: 	'Arrow up';
					cr;
					flush.
			];"
		
			openWithLayout:
			(
				controlPad newBoxLayoutTopToBottom				
					add:
					(
						SpGridLayout
							build:
							[ :builder |
								builder
									nextColumn;	
									add:
									(
										controlPad newButton
											label: 'Up'
									);
									
									nextRow;
									
									add:
									(
										controlPad newButton
											label: 'Left'
									);
									nextColumn;	
									add:
									(
										controlPad newButton
											label: 'Right'
									);

									nextRow;

									nextColumn;									
									add:
									(
										controlPad newButton
											label: 'Down'
									)
							]
					)
					expand:		true
					fill:		true;
					
					yourself
			)
	)
		title:	'Control pad';
		whenClosedDo:
		[
			self closeAllWindows.
		].
	

]
