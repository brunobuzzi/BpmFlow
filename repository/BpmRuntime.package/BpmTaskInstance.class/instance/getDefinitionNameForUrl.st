other
getDefinitionNameForUrl
	"Answer an URL string with the name of the form that holds receiver <externalObject>.
	The form name for the <externalObject> can be the definition name for regular <BpmTaskDefinition> or the name of another form in the case of form instance reuse"

	definition hasExternalObjectReuse ifFalse: [^definition name]. "regular task definition"

	^definition reuseExternalObjectOfTaskNamed "this task reuse the <externalObject> instance of another task"