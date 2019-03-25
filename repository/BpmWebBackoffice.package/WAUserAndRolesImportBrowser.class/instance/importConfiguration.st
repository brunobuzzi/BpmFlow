other
importConfiguration
	"The receiver iterate over instance variable <fileRows>. <eachRow> is line where values are separated by ';'.
	1- application name, 2- application type, 3- role name, 4- role type, 5- isAdmin ,6- user name"
	| configurations application configuration |

	configurations := OrderedCollection new.
	fileRows do: [:eachRow | | csvData app appType user role roleType isAdmin |
		csvData := eachRow subStrings: ';'.
		app := (csvData at: 1) trimBlanks.
		appType := (csvData at: 2) trimBlanks.
		role := (csvData at: 3) trimBlanks.
		roleType := (csvData at: 4) trimBlanks.
		isAdmin := [Boolean fromString: (csvData at: 5) trimBlanks] on: Error do: [:ex | false].
		user := (csvData at: 6) trimBlanks.
		application := ((appType = 'O') ifTrue: [OrbeonApplication] ifFalse: [BpmApplication]) newNamed: app. 
		[application addToCache] on: Exception do: [:ex | ].

		configuration := BpmUserGrantConfiguration 
				for: (self defaultBpmUserClass getExistingOrNewUserNamed: user)
				app: application
				role: (((roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass]) createNewOrGetExisting: role in: app).
		configuration role isAdmin: isAdmin.
		configurations add: configuration.
		].

	(configurations allSatisfy: [:eachConf| eachConf applicationHasEnvironment]) 
	ifTrue: [importedConfigurationBatchList items: configurations]
	ifFalse: [self sewafTableForImportedData information: 'There are Applications without Environments' color: 'red'.].