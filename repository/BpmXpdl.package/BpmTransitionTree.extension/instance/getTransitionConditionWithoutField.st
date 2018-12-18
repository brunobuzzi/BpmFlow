*bpmXpdl
getTransitionConditionWithoutField
	"Answer <aDictionary> with all possible transitions that may have a missing field in the Condition Block.
	The key is <aBpmTransitionDefinition> and the value is <anArray> with the field name, the string Block and a collection with the followed path"
	| missingFields |

	missingFields := Dictionary new.
	self getAllPossiblePath do: [:collection | | currentPath | "check missing field in all possible paths"
		currentPath := collection reverse.
		currentPath keysAndValuesDo: [:index :trNode | 
			trNode getUsedFieldsNamesInCondition do: [:fieldName |
				(index = currentPath size)
				ifFalse: [
					(self fieldName: fieldName isContainedInAny: (currentPath copyFrom: index + 1 to: currentPath size))
					ifFalse: [missingFields at: trNode transition put: (Array with: fieldName with: trNode printConditionToRun with: collection)].
				].
			].
		]. 
	].

	^missingFields