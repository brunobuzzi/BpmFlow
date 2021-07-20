other
isCreationRejectedFor: latestDefinition
	"The creation is rejected for <latestDefinition> when already exist a form definition named <formName> in application named <appName> but the <ids> are different.
	This case happend when a pair <appName,formName> is saved with different id. [IN THIS PERSISTENCE LAYER THIS IS FORBIDDEN BY CODE]"

	^latestDefinition notNil and: [latestDefinition isCreationRejectedByBpmFor: self getFormName withId: id in: self getApplicationName in: systemRoot]