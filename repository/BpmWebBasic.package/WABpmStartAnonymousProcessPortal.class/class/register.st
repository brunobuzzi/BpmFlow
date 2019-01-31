other
register
	| application |

	WAAdmin unregister: 'bpmflow-anonymous-processes'.

	application := WAAdmin register: self asApplicationAt: 'bpmflow-anonymous-processes'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.