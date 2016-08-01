export
storeProcessDefinition: aBpmProcessInstance onZip: aZipArchive withFile: aGsFile
	|  stream member |

	stream := RWBinaryOrTextStream on: String new. 
	member := aZipArchive 
						addString: (self xmlHeader, (aBpmProcessInstance generateProcessMapFor: self session user) prettyPrinted) 
						as: (aBpmProcessInstance processName, '.xpdl').

	member desiredCompressionMethod: ZipArchive compressionDeflated. 

	aZipArchive writeTo: stream. 
	aGsFile nextPutAll: stream contents.

	aBpmProcessInstance subprocesses do: [:each | self storeProcessDefinition: each onZip: aZipArchive withFile: aGsFile].