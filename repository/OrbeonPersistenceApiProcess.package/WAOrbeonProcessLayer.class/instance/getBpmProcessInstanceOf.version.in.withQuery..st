external variables
getBpmProcessInstanceOf: processName version: version in: appName withQuery: xmlDocument
	"The receiver answer <aBpmProcessInstance> of the process definition named <processName> with version <version> in application named <appName> with filters contained in <xmlDocument>.
	If there is none process answer <nil>"
	| processDefinition queryFieldValues xPathNodes processFilters |

	processDefinition := BpmProcessDefinition getProcessNamed: processName version: version in: appName.
	processDefinition ifNil: [^nil].

	xPathNodes := (xmlDocument xPath: '//query') collection ifEmpty: [^nil] ifNotEmpty: [:collection | collection].
	
	processFilters := xPathNodes first elements collection.

	queryFieldValues := (self getProcessFiltersFromCollection: processFilters) ifEmpty: [^nil] ifNotEmpty: [:collection | collection].

	
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