other
generateXMLFor: anObject for: aBpmUser
	"The receiver generate a XML String with data from <anObject> to be accessed by <aBpmUser>.
	The XML string can have values of previous forms of the <BpmProcessInstance>. (see: #previousFieldValues)"
	| result |

	result := '<result>
		<username>', aBpmUser username,'</username>
		<rol>', aBpmUser roleName,'</rol>', String lf.

	anObject serviceIds keysAndValuesDo: [:key :value | | conValue |
		conValue := value ifNil: ['nil'] ifNotNil: [value].
		result := result, '<', key, '>', conValue,'</', key, '>',  String lf. ].

	anObject previousFieldValues keysAndValuesDo: [:key :value | | conValue |
		conValue := value ifNil: [''] ifNotNil: [value].
		conValue := (conValue isKindOf: String) ifTrue: [conValue] ifFalse: [conValue printString].
		result := result, '<', key, '>', conValue,'</', key, '>',  String lf. ].	

	"results add: (result, '</result>', anObject asOop printString)."
	^result, '</result>'