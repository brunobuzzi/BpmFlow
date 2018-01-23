searching
searchCancelledProcessByApplication: appName processType: procName fieldName: fieldName fieldValue: fieldValue
	| convertedValue |

	convertedValue := (self getSelectedProcessDefinitionOrNil 
										ifNil: [^searchResult := OrderedCollection new] 
										ifNotNil: [:procDef | procDef  getTypeOfFieldNamed: fieldName]) fromString: fieldValue.
	
	self searchCancelledProcessByApplication: appName andProcessType: procName.

	searchResult := searchResult select: [:procInstance | (procInstance getValueOfProcessField: (self getNameWithoutTypeFrom: fieldName)) = convertedValue].

	"#getNameWithoutTypeFrom:
	the type in the field is removed citizenName[s] --> citizenName
	this is because we are searching inside the <BpmProcessInstance>. To search in all process using <BpmProcessDefinition> the type MUST be used"