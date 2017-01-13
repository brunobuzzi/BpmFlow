other
storeProcessDefinition: aBpmProcessDefinition onZip: aZipArchive withFile: aGsFile
	|  stream member |

	stream := RWBinaryOrTextStream on: String new. 
	member := aZipArchive 
						addString: (self xmlHeader, aBpmProcessDefinition xmlString) 
						as: (aBpmProcessDefinition processName, '.xpdl').

	member desiredCompressionMethod: ZipArchive compressionDeflated. 

	aZipArchive writeTo: stream. 
	aGsFile nextPutAll: stream contents.

	aBpmProcessDefinition subProcesses do: [:each | self storeProcessDefinition: each onZip: aZipArchive withFile: aGsFile].