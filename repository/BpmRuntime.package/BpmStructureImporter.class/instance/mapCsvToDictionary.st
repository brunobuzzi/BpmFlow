other
mapCsvToDictionary
	| rows |

	structure := Dictionary new.
	rows := csvString subStrings: String lf.
	(rows size = 1) ifTrue: [^InvalidCsvFormatException signal: 'The CSV only has titles row'].
	"first row are titles"
	"where <key> is a counter (1,2,3,..,n) and <eachRow> is a string of values separated by ; 
	(environment name;application name; application type(B|O); role name; role type; is admin; username)"
	(rows allButFirst reject: [:each | each trimBlanks isEmpty]) keysAndValuesDo: [:key :eachRow | | csvValues |
		csvValues := eachRow subStrings: ';'.
		(csvValues size = 7) 
		ifFalse: [^InvalidCsvFormatException signal: 'Each has to have 7 rows (environment name;application name; application type(B|O); role name; role type; is admin; username)']
		ifTrue: [structure at: key put: eachRow].
	].