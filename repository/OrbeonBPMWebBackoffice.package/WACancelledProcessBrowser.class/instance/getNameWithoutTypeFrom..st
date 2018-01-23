searching
getNameWithoutTypeFrom: fieldName
	| startTypeIndex |

	startTypeIndex := fieldName indexOfSubCollection: '[' startingAt: 1.

	^fieldName copyFrom: 1 to: startTypeIndex - 1

	"the type in the field is removed citizenName[s] --> citizenName
	this is because we are searching inside the <BpmProcessInstance>. To search in all process using <BpmProcessDefinition> the type MUST be used"