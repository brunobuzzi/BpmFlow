other
shouldRenderLinkForFormTask: aBpmTaskInstance
	"Answer whether or not a link to the form has to be rendered"

	^aBpmTaskInstance isDone and: [(aBpmTaskInstance isGrantedUser: self session user) or: [self session user isBackofficeUserAndAdmin]]

	"if the task is pending--> use task detail pane to access the form"