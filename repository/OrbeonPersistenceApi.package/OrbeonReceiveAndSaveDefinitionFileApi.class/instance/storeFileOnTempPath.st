other
storeFileOnTempPath
	"The receiver store the file with id <fileId> belonging to the form definition with id <definitionId> in the temporary path.
	This method is called when a Form Definition has attachments and is save at once with the attachments.
	In this case the OrbeonFormDefinition has not been created and we can not get the current path to store files so we store them in the temp path.
	See issue #37 and is caused because Orbeon first call a service to store attachments and then call a service to store XML definition"
	| gsFile path |

	path := self getOrbeonWebServerConfiguration getTempPath,'/', id, '-', fileId, '.bin'.

	gsFile := GsFile open: path mode: 'wb' onClient: false.

	gsFile ifNil: [^OrbeonOSException signal: 'An error ocurred while writing to: [', (path, id, '-',fileId) ,']'].

	gsFile
		nextPutAll: fileContents;
		flush;
		close.