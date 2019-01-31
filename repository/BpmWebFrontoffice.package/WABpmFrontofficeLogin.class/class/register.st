other
register
	| application |

	WAAdmin unregister: 'bpmflow-frontoffice'.

	application := WAAdmin register: self asApplicationAt: 'bpmflow-frontoffice'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.