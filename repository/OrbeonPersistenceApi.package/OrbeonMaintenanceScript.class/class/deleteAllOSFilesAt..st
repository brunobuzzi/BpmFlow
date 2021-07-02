os file development
deleteAllOSFilesAt: basePath
	"WARNING: this method is only intented for development"

	System performOnServer: 'cd ', basePath, 'temp; rm *; cd ../instances; rm *; cd ../drafts; rm *; cd ../definitions/saved; rm *; cd ../published; rm *'