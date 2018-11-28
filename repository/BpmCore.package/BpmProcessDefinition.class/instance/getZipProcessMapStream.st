xpdl fileout
getZipProcessMapStream
	| fileStream fileName |

	fileName := '/tmp/', processName, Lag1MwcRandom new integer printString, '.zip'.

	self createZipFileWithName: fileName.

	fileStream := FileStream read: fileName.

	^fileStream