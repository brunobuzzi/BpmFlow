other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: ('[', role name, '][', user username, '][', operation, ']')