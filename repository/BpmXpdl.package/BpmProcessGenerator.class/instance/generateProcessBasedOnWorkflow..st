process definition creation
generateProcessBasedOnWorkflow: aXPDLWorflowProcess
	"The receiver creates BPM process definition <BpmProcessDefinition> based on the XPDL pool <aXPDLPool>"
	| processDefinition application |

	processDefinition := (self getProcessDefinitionClassFrom: aXPDLWorflowProcess) newNamed: aXPDLWorflowProcess getName.
	processDefinition sheetName: aXPDLWorflowProcess getSheetName.

	application := processesMapping at: processDefinition processName ifAbsent: [self throwMappingExceptionFor: processDefinition processName].

	^self populateBpmDefinition: processDefinition withXPDL: aXPDLWorflowProcess for: application