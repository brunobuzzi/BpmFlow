other
createZipFileFor: aBpmProcessDefinition withName: pathFile
	| file archive |

	archive := ZipArchive new.

	file := GsFile open: pathFile mode: 'wb' onClient: false.

	self storeProcessDefinition: aBpmProcessDefinition onZip: archive withFile: file.

	file close.