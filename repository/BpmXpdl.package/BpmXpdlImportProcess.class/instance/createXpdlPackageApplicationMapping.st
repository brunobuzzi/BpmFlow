import
createXpdlPackageApplicationMapping
	"The receiver create a dictionary where the key is <aXPDLPackageNode> and the value is subinstance of <AbstractApplication>"
	| dictionary |

	dictionary := Dictionary new.

	indexXpdlFileMapper keysAndValuesDo: [:index :xpdlFileName |
		dictionary at: (self getXpdlPackageForFileNamed: xpdlFileName) put: (self getApplicationManagerClass getAnyApplicationNamed: (indexApplicationMapper at: index)).
	].

	^dictionary