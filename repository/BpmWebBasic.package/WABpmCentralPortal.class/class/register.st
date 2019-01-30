other
register
	| application |

	WAAdmin unregister: 'bpmflow-central'.

	application := WAAdmin register: self asApplicationAt: 'bpmflow-central'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.