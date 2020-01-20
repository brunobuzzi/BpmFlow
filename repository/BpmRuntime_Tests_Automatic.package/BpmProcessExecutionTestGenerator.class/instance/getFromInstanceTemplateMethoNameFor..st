convenience
getFromInstanceTemplateMethoNameFor: seasideObjectOrOrbeonForm
	"Answer the name of the method representing the template for instance object <seasideObjectOrOrbeonForm>.
	1) Remove whitespace because are not allowed in a method name.
	2) Replace hyphen character with an underscore character because hyphens are not allowed in a method name"

	^'generatedFormInstance_', 
		(seasideObjectOrOrbeonForm formName withWithespaceRemoved replaceAll: $- with: $_), 
		'_', 
		(seasideObjectOrOrbeonForm id clone withWithespaceRemoved replaceAll: $- with: $_)