other
initialize
	| application |

	WAAdmin unregister: 'orbeonBackoffice'.

	application := WAAdmin register: self asApplicationAt: 'orbeonBackoffice'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary.