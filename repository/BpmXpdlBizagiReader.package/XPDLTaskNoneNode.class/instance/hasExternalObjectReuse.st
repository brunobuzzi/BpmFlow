other
hasExternalObjectReuse
	| attrValue |

	attrValue := self extendedValueOf: 'reuseExternalObjectOfTaskNamed' ifAbsent: [^false].

	^attrValue notNil and: [attrValue notEmpty]