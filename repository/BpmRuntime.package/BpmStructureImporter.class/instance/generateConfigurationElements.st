pre import
generateConfigurationElements
	"The receiver iterate over instance variable <fileRows>. <eachRow> is line where values are separated by ';'.
	1- environment name 2- application name, 3- application type, 4- role name, 5- role type, 6- isAdmin ,7- user name"
	| application |

	self mapCsvToDictionary.
	configurations := OrderedCollection new.
	structure do: [:eachRow | | csvData env app appType user role roleType isAdmin configuration |
		csvData := eachRow subStrings: ';'.
		env := (csvData at: 1) trimBlanks.
		app := (csvData at: 2) trimBlanks.
		appType := (csvData at: 3) trimBlanks.
		role := (csvData at: 4) trimBlanks.
		roleType := (csvData at: 5) trimBlanks.
		isAdmin := [Boolean fromString: (csvData at: 6) trimBlanks] on: Error do: [:ex | false].
		user := (csvData at: 7) trimBlanks.
		application := ((appType = 'O') 
							ifTrue: [systemRoot getExistingOrbeonApplicationOrCreateNewNamed: app in: env] 
							ifFalse: [systemRoot getExistingBpmApplicationOrCreateNewNamed: app in: env]).

		configuration := BpmUserGrantConfiguration 
									newOn: (systemRoot getExistingEnvironmentOrCreateNewNamed: env) 
									for: (systemRoot getExistingOrNewUserNamed: user) 
									app: application 
									roleName: role 	
									roleType: roleType
									roleIsAdmin: isAdmin.
		configurations add: configuration.
	].

	^configurations