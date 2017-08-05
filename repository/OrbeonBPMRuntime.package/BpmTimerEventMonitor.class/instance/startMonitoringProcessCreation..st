monitoring
startMonitoringProcessCreation: aBpmProcessDefinition
	"The receiver includes <aBpmProcessDefinition> to be monitored for automatic process creation.
	The time span between processes creation depends on the Timer inside <aBpmProcessDefinition>"
	| appDictionary monitorCollection |

	aBpmProcessDefinition hasCreationTimer 
	ifFalse: [ProcessDefinitionWithoutTimerException signal: 'The Process Definition [', aBpmProcessDefinition processName, '] does NOT have any creation Timer'].

	appDictionary := monitoredProcessDefinitions at: aBpmProcessDefinition applicationName
								ifAbsent: [monitoredProcessDefinitions at: aBpmProcessDefinition applicationName put: Dictionary new] 
								ifPresent: [:dict | dict].

	monitorCollection := appDictionary at: aBpmProcessDefinition processName 
									ifAbsent: [appDictionary at: aBpmProcessDefinition processName put: Set new] 
									ifPresent: [:collection | collection].

	^monitorCollection add: aBpmProcessDefinition