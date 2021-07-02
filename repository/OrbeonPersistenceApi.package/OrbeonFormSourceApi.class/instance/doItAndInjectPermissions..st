Updating
doItAndInjectPermissions: aBlock
	"This service is called when a click is performed on the Orbeon Form Summary page.
	The Summary then should open the Form Instance (view/edit mode ) in the corresponding form definition (template).
	This sevice is used in combination with #getDefinitionForFormInstanceWithId:form:app: that <get> the form definition (template) to the form with id <id>"
	| instance permissions |

	instance := self getInstance.

	permissions := instance getPermissionsForUser: user inGroup: group with: instance definition.
	
	aBlock value: permissions.

	^instance xmlString