import
getXpdlPackageForFileNamed: aString
	"The receiver answer <aXPDLPackageNode> for the file named <aString>"

	^self getXpdlPackages detect: [:each | each fileName = aString] ifNone: [ProcessAppMappingException signal: 'No XPDL Package found for file named [', aString, ']']