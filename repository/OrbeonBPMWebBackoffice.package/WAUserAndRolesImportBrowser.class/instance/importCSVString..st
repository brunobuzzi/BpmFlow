other
importCSVString: csvString
	| rows |

	self initializeComponentValues.
	rows := csvString subStrings: String lf.
	(rows size = 1) ifTrue: [^self "format error"].
	"first row are titles"
	rows allButFirst keysAndValuesDo: [:key :eachRow | | csvValues |
		csvValues := eachRow subStrings: ';'.
		(csvValues size = 5)"application; application type; role; username"
		ifTrue: [self addValue: eachRow named: key .
		].
	].

	importedConfigurationBatchList items: OrderedCollection new