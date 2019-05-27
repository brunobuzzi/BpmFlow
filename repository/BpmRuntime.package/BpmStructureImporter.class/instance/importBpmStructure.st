import api
importBpmStructure
	"The receiver importe the Environment, Application, Role, User structure into the System"

	uploadUser ifNil: [ImproperBpmOperationException signal: 'A [BpmUser] is need to perform the import process !!!'].

	(self hasDifferentsEnvironments and: [uploadUser isInAdminsEnvironment not or: [uploadUser isBackofficeUserAndAdmin not]]) 
	ifTrue: [^ImproperBpmOperationException signal: 'Only a Backoffice Admin user can upload different Environments'].
 
	self generateConfigurationElements do: [:aUserGrantConfiguration | aUserGrantConfiguration applyConfiguration]