other
registerXML: xmlString app: app form: form id: id language: lan valid: valid
	"The receiver register a XML <xmlString> of the OrbeonApplication named <app> of the OrbeonFormDefinition named <form> with an Orbeon database ID <id>.
	1- Import the data in the  XML as an OrbeonFormInstance <formObject>.
	2- Get the Domain Object with the oop in the form.
	3- Associate the Domain Object <domainObject> with the OrbeonFormInstance <formObject>"
	| formObject domainObject oop assignOop assignment |

	formsHistory add: (Array with: app with: form with: id with: valid).
	forms at: (app,'.',form,'.',id) put: xmlString. 
	"create or get the OrbeonFormInstance and the FieldValuedHolder is created or updated inside this method"
	[formObject := OrbeonHandler default importDataOfFormId: id form: form app: app] on: Error 
		do: [:ex | ^OrbeonPostResult exception: ex].

	formObject ifNil: [^OrbeonPostResult exception: (FormIdNotExistException signal: 'Form [', form, '] of app [', app, '] with id [', id,'] not found')].

	oop := formObject valueAt: 'oop'. "get the oop of the <anOrbeonFormTransition>"
	assignOop := formObject valueAt: 'assignmentOop'. 
	formObject isValid: valid.
	"get the Domain Object with -oop- in the form"
	[domainObject := Object _objectForOop: (Integer fromString: oop).
	assignment := Object _objectForOop: (Integer fromString: assignOop).] on: Error
		do: [:ex | ^OrbeonPostResult exception: ex].

	domainObject orbeonFormInstance: formObject. "domain object <anOrbeonFormTransition> associated with the Form <formObject>"
	formObject assignment: assignment. "set the assignment where the form was edited"
	domainObject processDefinition updateFieldsOf: formObject. "the indexes of the OrbeonFormProcessDefinition are updated here"

	^OrbeonPostResult result: domainObject