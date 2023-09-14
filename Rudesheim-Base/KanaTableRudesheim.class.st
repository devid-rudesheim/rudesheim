Class {
	#name : #KanaTableRudesheim,
	#superclass : #Object,
	#traits : 'TTableForCharacterNormalizeRudesheim',
	#classTraits : 'TTableForCharacterNormalizeRudesheim classTrait',
	#category : #'Rudesheim-Base-Normalizer'
}

{ #category : #accessing }
KanaTableRudesheim class >> associations [

	^
	#(
		( 16r65 16rFB )
		( 16r66 16rF2 )
		( 16r67 16rA1 )
		( 16r68 16rA3 )
		( 16r69 16rA5 )
		( 16r6A 16rA7 )
		( 16r6B 16rA9 )
		( 16r6C 16rE3 )
		( 16r6D 16rE5 )
		( 16r6E 16rE7 )
		( 16r6F 16rC3 )
		( 16r70 16rFC )
		( 16r71 16rA2 )
		( 16r72 16rA4 )
		( 16r73 16rA6 )
		( 16r74 16rA8 )
		( 16r75 16rAA )
		( 16r76 16rAB )
		( 16r77 16rAD )
		( 16r78 16rAF )
		( 16r79 16rB1 )
		( 16r7A 16rB3 )
		( 16r7B 16rB5 )
		( 16r7C 16rB7 )
		( 16r7D 16rB9 )
		( 16r7E 16rBB )
		( 16r7F 16rBD )
		( 16r80 16rBF )
		( 16r81 16rC1 )
		( 16r82 16rC4 )
		( 16r83 16rC6 )
		( 16r84 16rC8 )
		( 16r85 16rCA )
		( 16r86 16rCB )
		( 16r87 16rCC )
		( 16r88 16rCD )
		( 16r89 16rCE )
		( 16r8A 16rCF )
		( 16r8B 16rD2 )
		( 16r8C 16rD5 )
		( 16r8D 16rD8 )
		( 16r8E 16rDB )
		( 16r8F 16rDE )
		( 16r90 16rDF )
		( 16r91 16rE0 )
		( 16r92 16rE1 )
		( 16r93 16rE2 )
		( 16r94 16rE4 )
		( 16r95 16rE6 )
		( 16r96 16rE8 )
		( 16r97 16rE9 )
		( 16r98 16rEA )
		( 16r99 16rEB )
		( 16r9A 16rEC )
		( 16r9B 16rED )
		( 16r9C 16rEF )
		( 16r9D 16rF3 )
		( 16r9E 16r99 )
		( 16r9F 16r9A )
	)
		collect:
		[ :each |
			{
				( 16rFF00 | each first ).
				( 16r3000 | each last ).
			}
		].
]

{ #category : #accessing }
KanaTableRudesheim class >> dictionary [

	^ Dictionary
		newFrom:
		(
			self associations
				collect:
				[ :each |
					each first -> each last.
				]
		).
]
