xpdl fileout
createZipFileWithName: pathFile for: aBpmUser
	| file archive | 

	archive := ZipArchive new.

	file := GsFile open: pathFile mode: 'wb' onClient: false.

	self storeOnZip: archive withFile: file for: aBpmUser.

	file close.