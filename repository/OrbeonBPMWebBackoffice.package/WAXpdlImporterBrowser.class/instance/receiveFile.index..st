upload
receiveFile: aFile index: index
	"The receiver store the file <aFile> temporary directory -temp- and add the file name of <aFile> at collection <selectedUploads> index <index>"
    | stream |

    stream := (FileDirectory default directoryNamed: 'tmp') "create the temporary file"
        assureExistence;
        forceNewFileNamed: aFile fileName.
    [ stream binary; nextPutAll: aFile rawContents ]  "push contents"
        ensure: [ stream close ].

	selectedUploads at: index put: aFile fileName. "map index with fileName"