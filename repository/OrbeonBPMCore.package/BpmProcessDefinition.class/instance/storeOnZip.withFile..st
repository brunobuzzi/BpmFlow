xpdl fileout
storeOnZip: aZipArchive withFile: aGsFile
	|  stream member |

	stream := RWBinaryOrTextStream on: String new. 
	member := aZipArchive 
						addString: (self xmlHeader, xmlString) 
						as: (processName, '.xpdl').

	member desiredCompressionMethod: ZipArchive compressionDeflated. 

	aZipArchive writeTo: stream. 
	aGsFile nextPutAll: stream contents.

	self subProcesses do: [:each | each storeOnZip: aZipArchive withFile: aGsFile].