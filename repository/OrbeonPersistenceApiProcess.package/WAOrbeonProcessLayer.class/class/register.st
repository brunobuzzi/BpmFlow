other
register
	| application |

	WAAdmin unregister: 'orbeon-gemstone-api'.

	application := WAAdmin register: self at: 'orbeon-gemstone-api'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQSmoothnessTheme.