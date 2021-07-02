other
doIt
	"This service is called when rendering the Draft of the form in Form Instance page"
	| gsFile pathFile |

	pathFile := (self getOrbeonWebServerConfiguration getInstancesPathFor: self getFormName in: self getApplicationName), id, '-', fileId.
	gsFile := GsFile openOnServer: pathFile mode: 'rb'.
	gsFile ifNil: [^OrbeonGsFileDoesNotExistException signal: 'Orbeon File [', pathFile, '] does not exist'].
	fileContents := gsFile contentsAsUtf8.

	gsFile close.

	^fileContents