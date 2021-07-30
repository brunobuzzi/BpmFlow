other
setApplicationAndFormNameFromXmlString
	| reader |

	reader := systemRoot newFormBuilderFor: xmlString.
	appName := reader getApplicationName.
	formName := reader getFormName.