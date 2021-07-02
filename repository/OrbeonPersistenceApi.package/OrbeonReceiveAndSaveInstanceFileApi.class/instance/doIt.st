other
doIt
	"This service is called from Orbeon Form Runner -new/edit- when a file is uploaded (and autosave is -true-) to a Form Instance.
	When the form is autosaved then all form's attachments are sent to this service "
	| gsFile path |

	path := self getOrbeonWebServerConfiguration getInstancesPathFor: self getFormName in: self getApplicationName.

	gsFile := GsFile open: (path, id, '-', fileId) mode: 'wb' onClient: false.

	gsFile ifNil: [^OrbeonOSException signal: 'An error ocurred while writing to: [', (path, id, '-',fileId) ,']'].

	gsFile
		nextPutAll: fileContents;
		flush;
		close.