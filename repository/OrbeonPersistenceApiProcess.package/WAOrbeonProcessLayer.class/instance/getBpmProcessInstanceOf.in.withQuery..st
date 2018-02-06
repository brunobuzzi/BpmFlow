external variables
getBpmProcessInstanceOf: processDefinitionId in: appName withQuery: xmlDocument
	"The receiver answer <aBpmProcessInstance> of the process definition with id <processDefinitionId> in application named <appName> with filters contained in <xmlDocument>.
	If there is none process answer <nil>.
	If there is more than one process that fit the filters answer <aSet>"
	| processDefinition queryFieldValues xPathNodes processFilters result |

	processDefinition := BpmProcessDefinition getProcessDefnitionWith: processDefinitionId in: appName.
	processDefinition ifNil: [^nil].

	xPathNodes := (xmlDocument xPath: '//query') collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].
	
	processFilters := xPathNodes first elements collection.

	queryFieldValues := (self getProcessFiltersFromCollection: processFilters) ifEmpty: [^nil] ifNotEmpty: [:collection | collection].

	result := Set new.
	queryFieldValues keysAndValuesDo: [:formFieldArray :fieldValue | | filteredFieldValues |
		filteredFieldValues := BpmProcessDefinition getFieldsNamed: (formFieldArray at: 2) in: (formFieldArray at: 1) withValue: fieldValue.
		result addAll: (filteredFieldValues collect: [:each | each getProcess]).
	].
	
	(result size = 1) ifTrue: [^result at: 1]. 

	^result "<aSet>"
	
"<setvariables>
	<query>
		<number>
			<citizen-appliance>
				<userid>123456</userid>
			</citizen-appliance>
		</number>
		<string>
			<check-basic-data>
				<usercountry>US</usercountry>
			</check-basic-data>
		</string>
	</query>
	<externalvariables>
		<boolean>
			<approved>true</approved>
		</boolean>
		<number>
			<amount>50000</amount>
		</number>
	</externalvariables>
</setvariables>"