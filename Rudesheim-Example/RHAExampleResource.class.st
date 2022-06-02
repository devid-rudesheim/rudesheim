Class {
	#name : #RHAExampleResource,
	#superclass : #Object,
	#instVars : [
		'cursors'
	],
	#category : #'Rudesheim-Example'
}

{ #category : #accessing }
RHAExampleResource >> baseRadius [ 

	^ 0.8 * ( 1 @ 1 )
]

{ #category : #accessing }
RHAExampleResource >> cursors [

	^ cursors
		ifNil:
		[
			cursors := self defaultCursors.
		].
]

{ #category : #accessing }
RHAExampleResource >> defaultCursors [
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
RHAExampleResource >> deltaForCircle [

	^ Float twoPi  /  self length.
]

{ #category : #accessing }
RHAExampleResource >> length [

	^ 200.
]
