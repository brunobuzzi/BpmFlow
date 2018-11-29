components creation
createExtendedAttributes
	"The receiver create -extended attributes- at workflow level.
	'assignationPolicy' is the only supported extended attribute at workflow level."
	| policyNode assigPolicyName |

	policyNode := (xmlSegment xPath: 'ExtendedAttributes/ExtendedAttribute') detect: [:each | (each attributeAt: 'Name') = 'assignationPolicy'] ifNone: [^Dictionary new].

	assigPolicyName := policyNode attributeAt: 'Value' ifAbsent: [^Dictionary new].

	^extendedAttributes := Dictionary new
										at: 'assignationPolicy' put: assigPolicyName;
										yourself.