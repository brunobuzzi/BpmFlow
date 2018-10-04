other
receiveBackofficeLogo: aFile
	| selectedEnvironment |

	selectedEnvironment := parent selectedLateralItem.

	self receiveFile: aFile.

	selectedEnvironment setBackofficeLogo: (self importIcon: aFile)