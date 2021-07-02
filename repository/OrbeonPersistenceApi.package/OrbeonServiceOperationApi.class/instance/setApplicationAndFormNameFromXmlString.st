other
setApplicationAndFormNameFromXmlString
	| reader |

	reader := self defaultOrbeonFormBuilderClass for: xmlString.
	appName := reader getApplicationName.
	formName := reader getFormName.