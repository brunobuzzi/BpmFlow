other
initialize

	super initialize.

	environments := Dictionary new.

	areUsersMultiEnvironment := true.

	"<aDictionary> where the key is a app name plus form name and the value is <aBpmProcessDefinition>.
	If <aBpmProcessDefinition> is present in this Dictionary then it has an anonymous start.
	Anonymous Start: an anonymous user fill a form and click 'Send' then this form will trigger the creation of <aBpmProcessInstance> "
	anonymousFormMapping := Dictionary new.