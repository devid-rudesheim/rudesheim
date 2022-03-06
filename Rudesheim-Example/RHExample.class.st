Class {
	#name : #RHExample,
	#superclass : #Object,
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
RHExample class >> run [
	< script >
	|
		widget
		window
	|

	widget :=
		SpRoassalPresenter new.

	window :=
		widget openWithSpec
			extent:	( 1 @ 1 ) * 800;
			yourself.
		
	widget
		script:
		[ :canvas |
			|
				length
				deltaForCircle
				
				cursorsInterval
				cursors				
			|
			
			canvas  camera
				scale: 0.5 * window extent max.

			length := 200.
			deltaForCircle :=  Float twoPi  /  length.

			cursorsInterval :=
				1
					to: 8.

			cursors :=
				cursorsInterval
					collect:
					[ :each |

						RSEllipse new
							extent:		( 1 @ 1 ) * 0.25;
							color:
							(
								Color
									h:	( 360.0 / cursorsInterval size ) * each  
									s:	0.5
									l:	0.7
							);

							yourself.
					].
			
			canvas
				addAllShapes:	cursors.
			
			canvas
				addAnimation:
				(
					 canvas newAnimation
						repeat;
						duration:	1 milliSeconds;
						
						when: RSAnimationLoopEvent
						do:
						[ :event |
							|
								baseRadius
								radius
								radian
								tilt
								deltaForInterval
							|
				
							baseRadius  := ( 1 @ 1 ) * 0.8.
							
							deltaForInterval := length /  cursors size.
							tilt := event currentLoop \\ length.
							radius := baseRadius * ( deltaForCircle * tilt ) sin.
							
							cursors
								withIndexDo: 
								[ :each :index |
									radian  :=   ( ( deltaForInterval * index ) + tilt  ) * deltaForCircle.

									each
										position:	( radian cos @ radian sin )  * radius * (  ( deltaForCircle * tilt ) cos @ 1.0 ).
								].
						];
						
						onStepDo:
						[ :time |
						]
				).
		].

	^ self.
]
