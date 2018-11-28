xpdl fileout
getSingleProcessMapStream
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: '<?xml version="1.0" encoding="utf-8"?>', String lf, xmlString.

	^stream