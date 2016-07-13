export
createZipFileFor: aBpmProcessInstance withName: pathFile
	| file archive |

	archive := ZipArchive new.

	file := GsFile open: pathFile mode: 'wb' onClient: false.

	self storeProcessDefinition: aBpmProcessInstance onZip: archive withFile: file.

	file close.