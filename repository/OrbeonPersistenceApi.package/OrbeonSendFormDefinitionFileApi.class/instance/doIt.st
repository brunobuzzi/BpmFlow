other
doIt
	"This service is called by Orbeon Form Builder to get/obtain the attached file with id <fileId> for the Form Definition <id>.
	The service answer an octet stream to the caller."
	| definition gsFile pathFile |

	definition := systemRoot getAnyDefinitionWithId: id ifNone: [^NoOrbeonFormException signal: 'No form definition with id [', id, ']'].

	pathFile := (self getOrbeonWebServerConfiguration getSavedDefinitionsPathFor: definition formName in: definition getApplicationName), id, '-',fileId.
	gsFile := GsFile openOnServer: pathFile mode: 'rb'.
	gsFile ifNil: [^OrbeonGsFileDoesNotExistException signal: 'Orbeon File [', pathFile, '] does not exist'].
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents