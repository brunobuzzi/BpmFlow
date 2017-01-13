xpdl fileout
getZipProcessMapStreamFor: aBpmUser
	| fileStream fileName |

	fileName := '/tmp/', processName, Lag1MwcRandom new integer printString, '.zip'.

	self createZipFileWithName: fileName for: aBpmUser.

	fileStream := FileStream read: fileName.

	^fileStream