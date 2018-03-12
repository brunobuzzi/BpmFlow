process definition creation
generateProcessBasedOnWorkflow: aXPDLWorflowProcess for: anOrbeonApplication
	"The receiver creates BPM process definition <BpmProcessDefinition> based on the XPDL pool <aXPDLPool>"
	| processDefinition |

	processDefinition := (self getProcessDefinitionClassFrom: aXPDLWorflowProcess) newNamed: aXPDLWorflowProcess getName.
	processDefinition sheetName: aXPDLWorflowProcess getSheetName.

	^self populateBpmDefinition: processDefinition withXPDL: aXPDLWorflowProcess for: anOrbeonApplication