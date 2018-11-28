xpdl fileout
storeOnZip: aZipArchive withFile: aGsFile for: aBpmUser
	|  stream member |

	stream := RWBinaryOrTextStream on: String new. 
	member := aZipArchive 
						addString: (self xmlHeader, (self generateProcessMapFor: aBpmUser) prettyPrinted) 
						as: (processName, '.xpdl').

	member desiredCompressionMethod: ZipArchive compressionDeflated. 

	aZipArchive writeTo: stream. 
	aGsFile nextPutAll: stream contents.

	self subprocesses do: [:each | each storeOnZip: aZipArchive withFile: aGsFile for: aBpmUser].