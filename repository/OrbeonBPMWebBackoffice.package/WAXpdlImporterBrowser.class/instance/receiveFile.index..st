upload
receiveFile: aFile index: index
	"The receiver store the file <aFile> temporary directory -temp- and add the file name of <aFile> at collection <selectedUploads> index <index>"
 
	model storeTemporaryXpdlFile: aFile atIndex: index