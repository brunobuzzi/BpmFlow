other
createSystemDefaultObjects
	"The receiver create the minimal objects to allow the BPM System to start:
	1- Create a default Environment <BpmEnvironment>.
	2- Create an 'admins' Application <BpmApplication>.
	3- Create an 'admin' User <BpmUser>.
	4- Create an 'admin' Role <BpmBackofficeRole>.
	5- Grant 'admin' User with 'admin' Role.
	6- Register the Application and the User in the default Environment."
	| defaultEnvironment adminUser application role |

	defaultEnvironment := BpmEnvironment addDefaultEnvironment.
	BpmExceptionCalendar addDefaultCalendarIn: defaultEnvironment. "set a default calendar for the environment"

	BpmApplication basicInitializeCache.
	application := 	(BpmApplication newNamed: 'admins') addToCache.

	adminUser := BpmUser addAdminUser.
	role := BpmBackofficeRole createNewOrGetExisting: 'admin' in: 'admins'.
	role isAdmin: true. 
	role grantUser: adminUser ifPresent: [].

	defaultEnvironment registerApplication: application;
		registerUser: adminUser.