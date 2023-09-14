Class {
	#name : #SecretaryRudesheim,
	#superclass : #StPharoApplication,
	#category : #'Rudesheim-Example-Applications'
}

{ #category : #running }
SecretaryRudesheim class >> run [
	< script >
	
	self new run.
]

{ #category : #'private - running' }
SecretaryRudesheim >> start [
	< script: 'self run' >
	|
		root
		model
		timeCards
		
		formatDateAndTime
		
		columnsForRange
		columnsForAggregation
		
		widgetsForRange
	|
	
	formatDateAndTime :=
	[ :dateAndTime |
		dateAndTime asDate yyyymmdd, ' ', dateAndTime  asTime print24
	].
	
	model :=
		BasicTimeCardModelRudesheim new.
	
	timeCards := model rowsSources.

	columnsForRange :=
	{
		SpStringTableColumn new
			title: 		'Begin';
			evaluated:
			[ :row |
				formatDateAndTime
					value:	row tRangeRudesheimOfWorkTime first.
			].
		SpStringTableColumn new
			title: 		'End';
			evaluated:
			[ :row |
				formatDateAndTime
					value:	row tRangeRudesheimOfWorkTime last.
			].
	}.
	
	columnsForAggregation :=
	{
		SpStringTableColumn new
			title: 		'Working hours';
			width:		100;
			evaluated:
			[ :row |
				row aggregate workingHours asHours asString.
			].
		SpStringTableColumn new
			title: 		'Overtime hours';
			width:		110;
			evaluated:
			[ :row |
				row aggregate overtime asHours asString
			].
	}.

	root :=
		self
			newPresenter: SpPresenterWithModel.

	widgetsForRange :=
		Dictionary new.
	
	columnsForRange
		do:
		[ :each |
			widgetsForRange
				at:		each 
				put:
				{
					root newDropList
						items:
						(
							2023
								to:	2000
								by:	-1
						);
						display:
						[ :item |
							item printString.
						];
						yourself.

					root newDropList
						items:
						(
							12
								to:	1
								by:	-1
						);
						display:
						[ :item |
							item printString.
						];
						selectItem: 	1;
						yourself.

					root newDropList
						items:
						(
							31
								to:	1
								by:	-1
						);
						display:
						[ :item |
							item printString.
						];
						yourself.

					root newDropList
						items:
						(
							23
								to:	1
								by:	-1
						);
						display:
						[ :item |
							item printString.
						];
						yourself.

					root newDropList
						items:
						(
							59
								to:	1
								by:	-1
						);
						display:
						[ :item |
							item printString.
						];
						yourself.
				}.
		].

	(
		root

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
				root newBoxLayoutLeftToRight
					add:
					(
						root newBoxLayoutTopToBottom
							add:
							(
								root newBoxLayoutLeftToRight
							
									add:
									(
										root newButton
											label:	'Do' ;
											yourself
									)
									expand: false;

									add:
									(
										#( 'Begin' 'End' )
											inject:	
											(
												root newBoxLayoutLeftToRight
													spacing:	10
											)
											into:
											[ :layout :each |
												layout
													add:		each
													expand: 	false;

													add:
													(
														root newDropList
															items:
															(
																2023
																	to:	2000
																	by:	-1
															);
															display:
															[ :item |
																item printString.
															];
															yourself 
													);

													add:
													(
														root newDropList
															items:
															(
																12
																	to:	1
																	by:	-1
															);
															display:
															[ :item |
																item printString.
															];
															selectItem: 	1;
															yourself 
													);
													
													yourself.
											]
									)
							)
							height:		25;

							add:
							(
								root newDropList
									items: timeCards;
									display:
									[ :item |
										item class name
									];
									whenSelectedItemChangedDo:
									[ :item |
										model
											value:	item
									];
									yourself  
							)
							height:		25;

							add:
							(
								root newTable
									beResizable;
									"items: 			{ model };"
									in:
									[ :view |
										model
											whenChangedDo:
											[
												view
													items: 	{ model }
											]
									];
									addColumns:		columnsForAggregation;
									yourself
							)
							height:		45;
							
							add:
							(
								root newTable
									beResizable;
									in:
									[ :view |
										model
											whenChangedDo:
											[
												view
													items: model rows
											]
									];
									addColumns:		columnsForAggregation, columnsForRange;
									
									whenSelectedDo:
									[ :row |
										|
											widgets
										|
										
										columnsForRange
											do:
											[ :each |
												widgets :=
													widgetsForRange
														at:		each.
											].
									];
																		
									yourself
							);
							yourself 
					);
					
					add:
					(
						root newBoxLayoutTopToBottom
							spacing:	10;
							
							add:
							(
								columnsForRange
									inject:	
									(
										root newBoxLayoutTopToBottom
											spacing:	10
									)
									into:
									[ :layout :each |
										layout
											add:
											(
												(												
													widgetsForRange
														at:		each
												)
													inject:
													(
														root newBoxLayoutLeftToRight
															
															add:	each title
															width:	40;
															
															yourself 
													)
													into:
													[ :layout2 :widgetForInput |
														layout2
															add:	widgetForInput;
															yourself.
													] 
											)
											expand:	false;

											yourself.
									]
								)
								height:	70;

								add:
								(
									root newBoxLayoutLeftToRight
								
										add:
										(
											root newButton
												label:	'Update';
												yourself
										)
										expand: false;
								
										add:
										(
											root newButton
												label:	'Delete';
												yourself
										)
										expand: false;

										yourself
								)
								expand: false;
								
								yourself 

					)
					width:	400;

					yourself
			)
	)
		title:	'Time card';
		extent:	950 @ 600;
		whenClosedDo:
		[
			self closeAllWindows.
		].

	model 
		value: timeCards first.
]
