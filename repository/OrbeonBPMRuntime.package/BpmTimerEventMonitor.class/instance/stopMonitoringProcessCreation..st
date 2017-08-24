monitoring
stopMonitoringProcessCreation: aBpmProcessDefinition
	"The receiver stop the monitoring of <aBpmProcessDefinition> for automatic process creation."
	| appDictionary monitorCollection |

	aBpmProcessDefinition hasCreationTimer 
	ifFalse: [ProcessDefinitionWithoutTimerException signal: 'The Process Definition [', aBpmProcessDefinition processName, '] does NOT have any creation Timer'].

	appDictionary := monitoredProcessDefinitions at: aBpmProcessDefinition applicationName 
								ifAbsent: [ProcessDefinitionNotFoundException signal: 'This Process is NOT being Monitored !!!'].

	monitorCollection := appDictionary at: aBpmProcessDefinition processName 
									ifAbsent: [ProcessDefinitionNotFoundException signal: 'This Process is NOT being Monitored !!!'].

	^monitorCollection remove: aBpmProcessDefinition ifAbsent: [ProcessDefinitionNotFoundException signal: 'This Process is NOT being Monitored !!!']