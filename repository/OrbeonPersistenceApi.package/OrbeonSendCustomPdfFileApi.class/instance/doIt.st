other
doIt
	"This service is called when Orbeon requires a Custom PDF of a form or the Form Instance has any attachments and the user has clicked -Send-"
	| definition gsFile pathFile |

	definition := systemRoot formDefinitionNamed: self getFormName in: self getApplicationName.

	pathFile := (self getOrbeonWebServerConfiguration getPublishedDefinitionsPathFor: self getFormName in: self getApplicationName), definition id, '-', fileId.
	gsFile := GsFile openOnServer: pathFile mode: 'rb'.
	gsFile ifNil: [^OrbeonGsFileDoesNotExistException signal: 'Orbeon File [', pathFile, '] does not exist'].
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents