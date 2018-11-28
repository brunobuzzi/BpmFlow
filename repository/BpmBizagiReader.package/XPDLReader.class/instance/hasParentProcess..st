query
hasParentProcess: aXPDLPackageNode
	"Answer whether or not the xpdl package <aXPDLPackageNode> has parent process"

	^xpdlPackages anySatisfy: [:package | 
		package getAllSubProcessNodes anySatisfy: [:xpdlSubProcessNode |
			xpdlSubProcessNode getName = aXPDLPackageNode getName.
		].
	]