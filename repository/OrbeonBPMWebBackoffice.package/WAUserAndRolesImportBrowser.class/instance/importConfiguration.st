other
importConfiguration
	"The receiver iterate over instance variable <componentValues>. <eachRow> is line where values are separated by ';'.
	1- application name, 2- application type, 3- role name, 4- role type, 5- user name"
	| configurations application |

	configurations := OrderedCollection new.
	componentValues do: [:eachRow | | csvData app appType user role roleType |
		csvData := eachRow subStrings: ';'.
		app := (csvData at: 1) trimBlanks.
		appType := (csvData at: 2) trimBlanks.
		role := (csvData at: 3) trimBlanks.
		roleType := (csvData at: 4) trimBlanks.
		user := (csvData at: 5) trimBlanks.
		application := ((appType = 'O') ifTrue: [OrbeonApplication] ifFalse: [BpmApplication]) newNamed: app. 
		[application addToCache] on: Exception do: [:ex | ].

		configurations add: 
			(BpmUserGrantConfiguration 
				for: (BpmUser getExistingOrNewUserNamed: user)
				app: application
				role: (((roleType = 'F') ifTrue: [BpmFrontOfficeRole] ifFalse: [BpmBackofficeRole]) createNewOrGetExisting: role in: app)
			).
		].
	importedConfigurationBatchList items: configurations.

	"configurations do: [:each | each applyConfiguration]"