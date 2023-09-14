Class {
	#name : #ExpetedTimeCardRudesheim,
	#superclass : #Model,
	#traits : 'TModelRudesheim + TTimeCardRudesheim',
	#classTraits : 'TModelRudesheim classTrait + TTimeCardRudesheim classTrait',
	#category : #'Rudesheim-Example-Secretary'
}

{ #category : #accessing }
ExpetedTimeCardRudesheim >> rows [
	|
		workingCondition
	|
	
	workingCondition := BasicWorkingConditionRudesheim new.

	^
	#(
		(	'2023-1-1'	'08:30:00'	'18:00:00'	)
		(	'2023-1-5'	'08:30:00'	'18:00:00'	)
		(	'2023-1-9'	'08:30:00'	'18:00:00'	)
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

		].

]
