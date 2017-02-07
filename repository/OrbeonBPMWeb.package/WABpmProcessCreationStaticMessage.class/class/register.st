other
register
	| application |

	WAAdmin unregister: 'processMessage'.

	application := WAAdmin register: self asApplicationAt: 'processMessage'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQSmoothnessTheme.