other
getBpmProcessInstanceFromQuery
	"The receiver answer <aBpmProcessInstance> of the process definition with id <processDefinitionId> in application named <appName> with filters contained in <xmlDocument>.
	If there is none process answer <nil>.
	If there is more than one process that fit the filters answer <aSet>"
	| processDefinition procDefNumberId queryFieldValues xPathNodes processFilters result |

	[procDefNumberId := Number fromString: processDefinitionId] on: Error do: [:ex | ^nil].
	processDefinition := BpmProcessDefinition getProcessDefnitionWith: procDefNumberId in: appName.

	processDefinition ifNil: [^nil].

	xPathNodes := (xmlDocument xPath: '//query') collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].
	
	processFilters := xPathNodes first elements collection.

	queryFieldValues := (self getProcessFiltersFromCollection: processFilters) ifEmpty: [^nil] ifNotEmpty: [:collection | collection].

	result := Set new.
	queryFieldValues keysAndValuesDo: [:formFieldArray :fieldValue | | filteredFieldValues |
		filteredFieldValues := processDefinition getFieldsNamed: (formFieldArray at: 2) in: (formFieldArray at: 1) withValue: fieldValue.
		result addAll: (filteredFieldValues collect: [:each | each getProcess]).
	].

	(result size = 1) ifTrue: [^result asArray at: 1]. 

	^result "<aSet>"