other
shouldRenderLinkForFormTask: aBpmTaskInstance
	"Answer whether or not a link to the form has to be rendered."

	^(self session user isAdminIn: self session bpmEnvironment) and: [aBpmTaskInstance hasForm and:[aBpmTaskInstance isDone]]