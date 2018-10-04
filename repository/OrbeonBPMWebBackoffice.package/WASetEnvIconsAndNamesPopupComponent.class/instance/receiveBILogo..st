other
receiveBILogo: aFile
	| selectedEnvironment |

	aFile ifNil: [^nil].

	selectedEnvironment := parent selectedLateralItem.

	self receiveFile: aFile.

	selectedEnvironment setBILogo: (self importIcon: aFile)