"
A RHMonitorTest is a test class for testing the behavior of RHMonitor
"
Class {
	#name : #MonitorRudesheimTest,
	#superclass : #BasicRudesheimTest,
	#category : #'Rudesheim-Example-Tests'
}

{ #category : #accessing }
MonitorRudesheimTest class >> targetClass [

	^ MonitorRudesheim
]

{ #category : #test }
MonitorRudesheimTest >> testConnectPresenters [

	self flag: #toImplement.
	self assert: false
]

{ #category : #test }
MonitorRudesheimTest >> testInitializePresenters [

	self flag: #toImplement.
	self assert: false
]
