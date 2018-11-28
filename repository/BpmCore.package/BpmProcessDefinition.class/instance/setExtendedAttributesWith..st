other
setExtendedAttributesWith: attributesDictionary
	"The receiver set the -extended attributes- based on dictionary <attributesDictionary> where the key is the attribute named and the value is the attribute value"
	| assignationPolicyName assignationPolicyClass |

	assignationPolicyName := attributesDictionary at: 'assignationPolicy' ifAbsent: [^self].

	assignationPolicyClass := self validAssignationPoliyClasses detect: [:eachClass | eachClass name asString = assignationPolicyName] ifNone: [^self].

	assignationPolicy := assignationPolicyClass newOn: self.