other
shouldRenderLinkForFormTask: aBpmTaskInstance
	"Answer whether or not a link to the form has to be rendered."

	^self session user isAdmin and: [aBpmTaskInstance hasForm and:[aBpmTaskInstance isDone]]