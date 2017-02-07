other
register
	| application |

	WAAdmin unregister: 'orbeonProcess'.

	application := WAAdmin register: self asApplicationAt: 'orbeonProcess'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQSmoothnessTheme.