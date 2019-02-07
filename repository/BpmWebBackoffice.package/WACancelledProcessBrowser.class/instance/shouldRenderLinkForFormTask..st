other
shouldRenderLinkForFormTask: aBpmTaskInstance
	"Answer whether or not a link to the form has to be rendered."

	^self session user isAdmin