Class {
	#name : #ActualTimeCardRudesheim,
	#superclass : #Model,
	#traits : 'TModelRudesheim + TTimeCardRudesheim',
	#classTraits : 'TModelRudesheim classTrait + TTimeCardRudesheim classTrait',
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #accessing }
ActualTimeCardRudesheim >> rows [
	|
		workingCondition
		one
		begin
	|
	
	workingCondition := BasicWorkingConditionRudesheim new.
				
	one := 
		Duration
			days: 	1.
	
	begin := '2023-1-1' asDateAndTime.

	^
	(
		(
			#(
				(	'2023-1-25'	'08:30:00'	'17:00:00'	)
				(	'2023-1-29'	'08:30:00'	'20:00:00'	)
			)
				collect:
				[ :each |

					TTimeStampForWorkRudesheim
						newFrom:
						{
							RangeRudesheim
								fromTRangeRudesheim: 
								{
									DateAndTime
										date:	each first asDate 
										time:	each second asTime. 
								
									DateAndTime
										date:	each first asDate 
										time:	each last asTime. 
								}.
							workingCondition
						}.

				]
		)
			inject:		OrderedCollection new
			into:
			[ :timeStamps :each |
				|
					range
				|
				
				range := each tRangeRudesheimOfWorkTime.
				
				begin
					to: 	range first
					by:		one
					do:
					[ :day |
						|
							offset
						|
						
						offset := day asDate - range first asDate.

						timeStamps
							add:
							(
								TTimeStampForWorkRudesheim
									newFrom:
									{
										RangeRudesheim
											fromTRangeRudesheim:
											{
												range first + offset.
												range last + offset
											}.
										workingCondition
									}
							).

					].

				begin := range first + one.

				timeStamps
			]
	)
		select:
		[ :each |
		
			(
				#( 1 7 )
					includes:	each tRangeRudesheimOfWorkTime first dayOfWeek
			) not.
			
		]

]
