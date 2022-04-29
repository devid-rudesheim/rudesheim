Class {
	#name : #RHExampleResource,
	#superclass : #Object,
	#instVars : [
		'cursors'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
RHExampleResource >> baseRadius [ 

	^ 0.8 * ( 1 @ 1 )
]

{ #category : #accessing }
RHExampleResource >> cursors [

	^ cursors
		ifNil:
		[
			cursors := self defaultCursors.
		].
]

{ #category : #accessing }
RHExampleResource >> defaultCursors [
	|
		cursorsInterval
	|

	cursorsInterval :=
		1
			to: 8.

	^ cursorsInterval
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

]

{ #category : #accessing }
RHExampleResource >> deltaForCircle [

	^ Float twoPi  /  self length.
]

{ #category : #accessing }
RHExampleResource >> length [

	^ 200.
]
