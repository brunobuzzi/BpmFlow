other
register
	| application |

	WAAdmin unregister: 'bpmflow'.

	application := WAAdmin register: self asApplicationAt: 'bpmflow'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: Highstock6DevelopmentMetadataLibrary; "see issue #800"
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme.