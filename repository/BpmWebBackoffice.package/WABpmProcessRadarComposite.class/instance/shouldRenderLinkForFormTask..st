other
shouldRenderLinkForFormTask: aBpmTaskInstance
	"Answer whether or not a link to the form has to be rendered.
	A backoffice component always has access to the form task."

	^aBpmTaskInstance isDone