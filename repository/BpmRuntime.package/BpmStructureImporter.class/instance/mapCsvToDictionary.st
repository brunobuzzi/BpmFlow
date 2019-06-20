pre import
mapCsvToDictionary
	"The receiver split the <csvString> by line feed and then split each line by semicolon. The split by semicolon has to have 7 substrings otherwise is a CSV invalid format.
	Each row is stored in dictionary <structure> to be later processed"
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
		ifFalse: [^InvalidCsvFormatException signal: 'Each CSV line has to have 7 rows (environment name;application name; application type(B|O); role name; role type; is admin; username)']
		ifTrue: [structure at: key put: eachRow].
	].