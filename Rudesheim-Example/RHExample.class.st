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
				resource
				track
				clip
				timeOfSeam
			|
						
			canvas  camera
				scale: 0.5 * window extent max.
			
			resource :=
				RHExampleResource new.
			
			track :=
				LinkedList new
					add:	RHClip new;
					add:	RHSatelliteClip new;
					add:	RHElasticitySatelliteClip new;
					add:	RHSatelliteClip new;
					add:	RHElasticitySatelliteClip new;
					yourself.
			
			clip := track firstLink.
			
			timeOfSeam := clip duration.

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
								arguments
							|
							
							arguments :=
								RHArgumentsForClip
									rhExampleResource:		resource 
									rsCanvas:					canvas 
									rsAnimationLoopEvent: 	event.
							
							(
								event currentLoop < timeOfSeam milliseconds
							)
								ifFalse:
								[
									clip
										endDrawWith:		arguments.
									
									clip := clip nextLink
										ifNil:
										[
											clip.
										].
									
									timeOfSeam := clip duration + timeOfSeam.
									
									clip
										beginDrawWith:	arguments.
								].
							
							clip 
								drawWith: 	arguments.
						];
						
						onStepDo:
						[ :time |
						]
				).
		].

	^ self.
]
