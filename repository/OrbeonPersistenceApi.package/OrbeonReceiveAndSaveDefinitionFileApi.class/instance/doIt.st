other
doIt
	"This service receives a file with id <fileId> from Orbeon Form Builder when the a user clicked -Save-.
	The file was uploaded into a Form Definition as a Custom PDF or as direct file Upload.
	A direct file upload is when a File Attachment is added to a Form Definition and a concrete file is also uploaded"
	| definition gsFile path |

	definition := systemRoot getAnyDefinitionWithId: id ifNone: [^self storeFileOnTempPath].

	path := self getOrbeonWebServerConfiguration getSavedDefinitionsPathFor: definition formName in: definition getApplicationName.

	gsFile := GsFile open: (path, id, '-', fileId, '.bin') mode: 'wb' onClient: false.

	gsFile ifNil: [^OrbeonOSException signal: 'An error ocurred while writing to: [', (path, id, '-',fileId) ,']'].

	gsFile
		nextPutAll: fileContents;
		flush;
		close.