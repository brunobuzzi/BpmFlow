import api
importBpmStructure
	"The receiver importe the Environment, Application, Role, User structure into the System"

	uploadUser ifNil: [ImproperBpmOperationException signal: 'A [BpmUser] is needed to perform the import process !!!'].

	self generateConfigurationElements. "generate all elements to be imported and store them in <configurations> collection"

	configurations ifEmpty: [^self].

	(self hasDifferentsEnvironments and: [uploadUser hasAccessToEnvironmentManager not]) 
	ifTrue: [^ImproperBpmOperationException signal: 'Only a Backoffice Admin user can upload different Environments'].

	(uploadUser hasAccessToEnvironmentManager not and: [(uploadUser hasAccessTo: configurations last environment) not])
	ifTrue: [^ImproperBpmOperationException signal: 'This user can not import a structure to a <BpmEnvironment> that is not granted to'].
 
	configurations do: [:aUserGrantConfiguration | aUserGrantConfiguration applyConfiguration].

	self executed: true