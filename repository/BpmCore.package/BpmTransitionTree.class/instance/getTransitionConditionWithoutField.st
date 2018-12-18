visiting
getTransitionConditionWithoutField
	| missingFields |

	missingFields := Dictionary new.
	self getAllPossiblePath do: [:collection | | currentPath |
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