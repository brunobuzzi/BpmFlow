search operation
shouldRenderLinkForFormTask: aBpmTaskInstance
	"Answer whether or not a link to the form has to be rendered"

	^(aBpmTaskInstance isGrantedUser: self session user) and: 
		[(selectedLateralItem task == aBpmTaskInstance) or:[aBpmTaskInstance isDone]]

	"if the task is pending--> use task detail pane to access the form"