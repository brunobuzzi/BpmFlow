mapping
storeTemporaryXpdlFile: aWAFile atIndex: index
	"The receiver store the file <aWAFile> temporary directory -temp- and add the file name of <aWAFile> to dictionary <indexXpdlFileMapper> at index <index>"
    | stream |

    stream := (FileDirectory default directoryNamed: 'tmp') "create the temporary file"
        assureExistence;
        forceNewFileNamed: aWAFile fileName.
    [ stream binary; nextPutAll: aWAFile rawContents ]  "push contents"
        ensure: [ stream close ].

	indexXpdlFileMapper at: index put: aWAFile fileName. "map index with fileName"