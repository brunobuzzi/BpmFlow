private
createDefaultObjects
	"The receiver create the minimal objects to allow the BPM System to start:
	1- Create a default Environment <BpmEnvironment>.
	2- Create an 'admins' Application <BpmApplication>.
	3- Create an 'admin' User <BpmUser>.
	4- Register the Application and the User in the default Environment.
	5- Create an 'admin' Role <BpmBackofficeRole>.
	6- Grant 'admin' User with 'admin' Role."
	| defaultEnvironment application adminUser role |

	defaultEnvironment := self getExistingEnvironmentOrCreateNewNamed: self adminsEnvironmentName.
	defaultEnvironment addDefaultCalendar.

	application := self getExistingBpmApplicationOrCreateNewNamed: self adminsApplicationName in: self adminsEnvironmentName.
	application initializeForBpmFlow.

	adminUser := self newUsername: self adminUserName password: self adminPassword forEnvironment: defaultEnvironment.

	role := self createNewOrGetExistingBackOfficeRole: self adminBackOffileRoleName in: self adminsApplicationName.
	role isAdmin: true. 
	role grantUser: adminUser.