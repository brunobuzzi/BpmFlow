other
getUrlForOrbeon: taskName
	"Answer the URL to the Orbeon Form for the task named <taskName>"
	| taskInstance uuid |

	model isProcessInstance ifFalse: [^self getUrlForOrbeonFormDefinitionNamed: taskName].

	taskInstance := model getTaskNamed: taskName ifNone: [^nil].

	(mainPanel shouldRenderLinkForFormTask: taskInstance) ifFalse: [^nil].

	uuid  := BpmOrbeonTempTokenRegistry default createEntryToOrbeonFor: taskInstance for: self session user.

	^mainPanel getUrlFor: taskInstance with: uuid