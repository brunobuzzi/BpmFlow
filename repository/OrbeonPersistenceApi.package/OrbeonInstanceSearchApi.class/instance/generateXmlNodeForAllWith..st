summary
generateXmlNodeForAllWith: aXMLWriter
	"The receiver generate XML nodes for summary fields of form <anOrbeonFormInstance> with form definition <formDefinition>.
	The summary fields to show are in <collectionOfNames>.
	The form definition <formDefinition> the username and <username> the group <group> are used to get the permissions"

	summary contents do: [:each | self generateXmlNodeFor: each with: aXMLWriter]