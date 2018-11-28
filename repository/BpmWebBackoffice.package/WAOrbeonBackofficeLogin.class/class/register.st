other
register
	| application |

	WAAdmin unregister: 'bpmflow-backoffice'.

	application := WAAdmin register: self asApplicationAt: 'bpmflow-backoffice'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.