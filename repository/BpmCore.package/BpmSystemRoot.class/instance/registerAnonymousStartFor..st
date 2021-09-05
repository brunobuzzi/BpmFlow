bpm processes
registerAnonymousStartFor: aBpmProcessDefinition
	"The receiver register <aBpmProcessDefinition> having an anonymous start with the form named <formName> for application named <appName> "
	"Only one version of <aBpmProcessDefinition> can have an anonymous start (in most cases is the last version)"

	^anonymousFormMapping at: aBpmProcessDefinition getAnonymousFormName put: aBpmProcessDefinition