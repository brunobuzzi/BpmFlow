other
receiveFrontofficeLogo: aFile
	| selectedEnvironment |

	aFile ifNil: [^nil].

	selectedEnvironment := parent selectedLateralItem.

	self receiveFile: aFile.

	selectedEnvironment setFrontofficeLogo: (self importIcon: aFile)