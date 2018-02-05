external variables
getBpmProcessInstanceOf: processName version: version in: appName withQuery: xmlDocument
	"The receiver answer <aBpmProcessInstance> of the process definition named <processName> with version <version> in application named <appName> with filters contained in <xmlDocument>.
	If there is none process answer <nil>"
	| processDefinition queryFieldValues xPathNodes filters |

	processDefinition := BpmProcessDefinition getProcessNamed: processName version: version in: appName.
	processDefinition ifNil: [^nil].

	queryFieldValues := Dictionary new.

	xPathNodes := (xmlDocument xPath: '//query') collection.
	xPathNodes isEmpty ifTrue: [^nil]. 

	filters := xPathNodes first descendantElements collection.

	filters do: [:each | queryFieldValues at: each name put: each innerXML]. 

"<setvariables>
	<query>
		<number>
			<userid>123456</userid>
		</number>
		<string>
			<usercountry>US</usercountry>
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