other
generateXMLFor: anObject for: anOrbeonFormUser
	| result |

	result := '<result>
		<username>', anOrbeonFormUser username,'</username>
		<rol>', anOrbeonFormUser roleName,'</rol>', String lf.

	anObject serviceIds keysAndValuesDo: [:key :value | | conValue |
		conValue := value ifNil: ['nil'] ifNotNil: [value].
		result := result, '<', key, '>', conValue,'</', key, '>',  String lf. ].

	anObject previousFieldValues keysAndValuesDo: [:key :value | | conValue |
		conValue := value ifNil: ['nil'] ifNotNil: [value].
		"(conValue  class == String) ifFalse: [conValue := conValue printMySqlString]."
		result := result, '<', key, '>', conValue,'</', key, '>',  String lf. ].	

	"results add: (result, '</result>', anObject asOop printString)."
	^result, '</result>'