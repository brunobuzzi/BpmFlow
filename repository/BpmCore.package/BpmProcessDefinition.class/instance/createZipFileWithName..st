xpdl fileout
createZipFileWithName: pathFile
	| file archive |

	archive := ZipArchive new.

	file := GsFile open: pathFile mode: 'wb' onClient: false.

	self storeOnZip: archive withFile: file.

	file close.