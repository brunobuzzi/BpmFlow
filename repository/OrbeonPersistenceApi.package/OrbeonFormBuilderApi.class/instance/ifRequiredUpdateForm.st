other
ifRequiredUpdateForm
	"If required the receiver rename the application and form name.
	At this point is SAFE to move everything to new location because an <AlreadyExistApplicationOrFormNameException> is NOT possible"
	| currentIdDefinition | 

	currentIdDefinition := systemRoot getSavedDefinitionWithId: id ifNone: [^self].

	((currentIdDefinition applicationName = appName) and: [currentIdDefinition formName = formName])
	ifTrue: [^self]. "no change has been made to application name and form name --> no update required"

	"move the registry to the new location and set the form name and application as requiered"
	currentIdDefinition moveToApplicationNamed: appName as: formName