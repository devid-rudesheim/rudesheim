Class {
	#name : #BasicColumnRudesheim,
	#superclass : #Object,
	#traits : 'TColumnRudesheim',
	#classTraits : 'TColumnRudesheim classTrait',
	#instVars : [
		'title',
		'evaluationForRead',
		'evaluationForWrite'
	],
	#category : #'Rudesheim-Base-Visitor'
}

{ #category : #accessing }
BasicColumnRudesheim >> defaultTitle [

	^ ''.

]

{ #category : #accessing }
BasicColumnRudesheim >> evaluationForRead [

	^ evaluationForRead
		ifNil:
		[
			evaluationForRead := self defaultEvaluationForRead.
		].

]

{ #category : #accessing }
BasicColumnRudesheim >> evaluationForRead: aObject [

	evaluationForRead := aObject
]

{ #category : #accessing }
BasicColumnRudesheim >> evaluationForWrite [

	^ evaluationForWrite
		ifNil:
		[
			evaluationForWrite := self defaultEvaluationForWrite.
		].

]

{ #category : #accessing }
BasicColumnRudesheim >> evaluationForWrite: aBlock [

	evaluationForWrite := aBlock
]

{ #category : #accessing }
BasicColumnRudesheim >> title [

	^ title
		ifNil:
		[
			title := self defaultTitle.
		].

]

{ #category : #accessing }
BasicColumnRudesheim >> title: aString [

	title := aString
]
