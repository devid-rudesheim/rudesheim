Class {
	#name : #BaselineOfRudesheim,
	#superclass : #BaselineOf,
	#category : #BaselineOfRudesheim
}

{ #category : #baselines }
BaselineOfRudesheim >> baseline: spec [
	<baseline>

	spec
		for: #common
		do:
		[
			spec
				package: 'Rudesheim-Base';
			
				package: 'Rudesheim-Base-Tests'
				with:
				[
					spec
						requires: #( 'Rudesheim-Base' )
				];

				group:		#core
				with:		#( 'Rudesheim-Base' );
				
				group:		#tests
				with:		#( 'Rudesheim-Base-Tests' );

				group:		#default
				with:		#( #core ).

		]
]
