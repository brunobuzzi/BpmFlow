other
register
	| application |

	WAAdmin unregister: 'bpmflow-bi'.

	application := WAAdmin register: self asApplicationAt: 'bpmflow-bi'.
	"application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator."
	application 
		preferenceAt: #sessionClass put: WABpmSession;
		addLibrary: Highstock6DevelopmentMetadataLibrary;
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary;
		addLibrary: JQSmoothnessTheme.