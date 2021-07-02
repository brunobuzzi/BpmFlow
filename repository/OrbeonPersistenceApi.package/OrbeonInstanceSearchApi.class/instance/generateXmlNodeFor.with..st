summary
generateXmlNodeFor: anOrbeonFormInstance with: aXMLWriter
	"The receiver generate XML nodes for summary fields of form <anOrbeonFormInstance> with form definition <formDefinition>.
	The summary fields to show are in <collectionOfNames>.
	The form definition <formDefinition> the username and <username> the group <group> are used to get the permissions"
	| nodeAttributes tag |

	nodeAttributes := OrderedCollection new
		add: 'created' -> anOrbeonFormInstance createdTime asOrbeonDateTimeString;
		add: 'draft' -> anOrbeonFormInstance printDraft;
		add: 'last-modified' -> anOrbeonFormInstance modifiedTime asOrbeonDateTimeString;
		add: 'name' -> anOrbeonFormInstance id;
		add: 'operations' -> (anOrbeonFormInstance getPermissionsForUser: user inGroup: group with: lastFormDefinition);
		asArray.

	tag := aXMLWriter tag: 'document' attributes: nodeAttributes.

	tag with: [aXMLWriter 
						tag: 'details' 
						with: [(anOrbeonFormInstance getValueOfFieldsForSummary: self summaryFields) "get the values of fields to display in the summary" 
										do: [:each | aXMLWriter tag: 'detail' with: (each isOctetString ifTrue:[each] ifFalse: [each printString])]]].