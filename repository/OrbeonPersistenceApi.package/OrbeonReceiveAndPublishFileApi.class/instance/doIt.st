other
doIt
	"This service is called when a user click -Publish- form in Orbeon Form Builder and the form definition has attached files.
	The Form Definition is <formName> in the Orbeon Application <app> where the id of the form definition is <id> and the attached file id is <fileId>.
	This service is called for each attached files in the Form Definition. 
	The attached file is stored in the repository"
	| gsFile path |

	path := self getOrbeonWebServerConfiguration getPublishedDefinitionsPathFor: self getFormName in: self getApplicationName.

	(GsFile existsOnServer: path) ifFalse: [DirectoryStructureNotPresentException signal: 'Directory Structure to Store Forms attachments on disk has not been created'].

	gsFile := GsFile open: (path, id, '-',fileId) mode: 'wb' onClient: false.

	gsFile ifNil: [^OrbeonOSException signal: 'An error ocurred while writing to: [', (path, id, '-',fileId) ,']'].
 
	gsFile
		nextPutAll: fileContents;
		flush;
		close.