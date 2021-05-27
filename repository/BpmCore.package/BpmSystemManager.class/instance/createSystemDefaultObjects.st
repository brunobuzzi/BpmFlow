system setUp
createSystemDefaultObjects
	"The receiver create the minimal objects to allow the BPM System to start:
	1- Create a default Environment <BpmEnvironment>.
	2- Create an 'admins' Application <BpmApplication>.
	3- Create an 'admin' User <BpmUser>.
	4- Register the Application and the User in the default Environment.
	5- Create an 'admin' Role <BpmBackofficeRole>.
	6- Grant 'admin' User with 'admin' Role."
	| defaultEnvironment adminUser application role |

	defaultEnvironment := self defaultEnvironmentClass addDefaultEnvironment.
	defaultEnvironment addDefaultCalendar. "set a default calendar for the environment"

	self defaultBpmApplicationClass initializeCache.
	application := 	(BpmApplication newNamed: 'admins') addToCache.
	application initializeForBpmFlow.

	adminUser := self defaultBpmUserClass addAdminUser.

	defaultEnvironment registerApplication: application;
		registerUser: adminUser.

	role := self defaultBackOfficeRoleClass createNewOrGetExisting: 'admin' in: 'admins'.
	role isAdmin: true. 
	role grantUser: adminUser.