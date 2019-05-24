upload
receiveFile: aFile
	"The receiver store the file <aFile> temporary directory -temp-"
    | stream |

    stream := (FileDirectory default directoryNamed: 'tmp') "create the temporary file"
        assureExistence;
        forceNewFileNamed: aFile fileName.
    [ stream binary; nextPutAll: aFile rawContents ]  "push contents"
        ensure: [ stream close ].

	self importCSVString: aFile rawContents asString.