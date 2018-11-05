mapping
setApplicationName: appName atIndex: index
	"The receiver set the application name <appName> at index <index> to dictionary <indexApplicationMapper> to map application and processes.
	See also: <indexXpdlFileMapper>"

	indexApplicationMapper at: index put: appName