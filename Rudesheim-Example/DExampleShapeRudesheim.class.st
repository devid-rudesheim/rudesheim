Class {
	#name : #DExampleShapeRudesheim,
	#superclass : #Object,
	#category : #'Rudesheim-Example'
}

{ #category : #drawing }
DExampleShapeRudesheim class >> draw [
	< script >
	|
		storage
		surfaceExtender
		extent
		
		draw
	|

	extent := 1920 @ 1024.
	storage := FileLocator home / 'tmp'.
	storage asFileReference ensureCreateDirectory.
	
	draw :=
	[ :surface |
		surface
			drawDuring:
			[ :canvas |
				surface
					clear:	Color black.

				canvas pathTransform
					scaleBy: 		0.5 * extent;
					translateBy: 	( 1 @ 1 ).
				
				canvas
					draw:	self.
			].
	].

	[ :fileTraits |
		surfaceExtender :=
			DFileSurfaceExtenderRudesheim	
				extent:			extent
				tFileTraitsRudesheim:	fileTraits
				file:			storage / 'example'.
		
		surfaceExtender
			surfaceDo:	draw.
	]
		value:	PDFTraitsRudesheim;
		value:	SVGTraitsRudesheim.
	
	[
		|
			surface
		|
		
		surface :=
			AthensCairoSurface
				extent:	extent.
		
		draw
			value:	surface.
		
		surface
			writeToPng: 	( storage / 'example.png' ) pathString.
	] value.
]

{ #category : #drawing }
DExampleShapeRudesheim class >> drawOnAthensCanvas:	anAthensCanvas [
	|
		interval
		delta
		
		scale
	|

	scale := 0.2.
	
	interval :=
		0
			to:	7.
	
	delta := Float twoPi / interval size.

	interval
		do:
		[ :loopTimes |
			|		
				arrow
				radian
				origin
				vector
				orthogonal
				offsets
			|
			
			radian := delta * loopTimes.

			vector := radian sin @ radian cos.
			origin := 0.1 * vector.
			orthogonal := vector rightRotated.
		
			offsets :=
			{
				{ 1.0 * vector. 0.5  * orthogonal }.
				{ 1.0 * vector. 0.25 * orthogonal }.
				{ 2.0 * vector. 0.25 * orthogonal }.
				{ 2.0 * vector. 0 @ 0 }
			}. 
			
			arrow  :=
				anAthensCanvas
					createPath:
					[ :path |	
												
						path
							absolute;
							moveTo:	 origin.

						offsets
							do:
							[ :each |
								path
									lineTo:	origin + ( scale * ( each first + ( ( 1 @ 1 ) * each last ) ) ).
							].

						offsets reverse
							do:
							[ :each |
								path
									lineTo:	origin + ( scale *  ( each first + ( ( -1 @ -1 ) * each last ) ) ).
							].

						path
							close;
							yourself
					].

			anAthensCanvas
				setPaint:
				(
					anAthensCanvas surface
						createSolidColorPaint:
						(
							Color
								h:	( 360 / interval size ) * loopTimes
								s:	0.5
								l:	0.5
						)
				);
				drawShape:		arrow.

			anAthensCanvas
				setStrokePaint:
				(
					(
						anAthensCanvas surface
							createStrokePaintFor:
							(
								anAthensCanvas surface
									createSolidColorPaint:	Color white
							)
					)
						width:	0.01;
						yourself
				);
				drawShape:		arrow.
		].

]

{ #category : #drawing }
DExampleShapeRudesheim >> drawOnAthensCanvas:	anAthensCanvas [ 

	self class 
		drawOnAthensCanvas:	anAthensCanvas.
]
