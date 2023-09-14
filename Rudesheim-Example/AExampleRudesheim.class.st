Class {
	#name : #AExampleRudesheim,
	#superclass : #Object,
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
AExampleRudesheim class >> run [
	<script>
	|
		widget
		window
	|
	widget := SpRoassalPresenter new.

	window :=
		widget open
          extent: 1 @ 1 * 800;
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
			
			canvas camera
				scale: 0.5 * window extent max.

			resource := AExampleResourceRudesheim new.

			track :=
				LinkedList new
					add: ClipRudesheim new;
					add: SatelliteClipRudesheim new;
					add: ElasticitySatelliteClipRudesheim new;
					add: SatelliteClipRudesheim new;
					add: ElasticitySatelliteClipRudesheim new;
					yourself.

			clip := track firstLink.

			timeOfSeam := clip duration.

			canvas
				addAnimation:
				(
					canvas newAnimation
						repeat;
						duration:	1 milliSeconds;
						when:		RSAnimationLoopEvent
						do:
						[ :event | 
							|
								arguments
							|
							arguments :=
								AArgumentsForClipRudesheim
					              aExampleResourceRudesheim:		resource
					              rsCanvas: 				canvas
					              rsAnimationLoopEvent:	event.

							event currentLoop < timeOfSeam asMilliSeconds
								ifFalse:
								[ 
									 clip
										endDrawWith: arguments.

									 clip := clip nextLink
										ifNil:
										[
											clip
										].

									 timeOfSeam := clip duration + timeOfSeam.

									 clip
										beginDrawWith: arguments
							].

							clip drawWith: arguments
						];
						onStepDo:
						[ :time |
						]
				)
		].

	^ self
]
