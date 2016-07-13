other
registerAnnonimousXML: xmlString app: app form: form id: id
	"The receiver register a XML <xmlString> of the OrbeonApplication named <app> of the OrbeonFormDefinition named <form> with an Orbeon database ID <id>.
	1- Import the data in the  XML as an OrbeonFormInstance <formObject>."
	| formObject domainObject oop  |

	forms at: (app,'.',form,'.',id) put: xmlString. 
	"create an OrbeonFormInstance -Form Administrator-"
	[formObject := OrbeonHandler default importDataOfFormId: id form: form app: app] on: Error 
		do: [:ex| ^OrbeonPostResult exception: ex].

	formObject ifNil: [^OrbeonPostResult exception: (FormIdNotExistException signal: 'Form [', form, '] of app [', app, '] with id [', id,'] not found')].

	^OrbeonPostResult result: formObject