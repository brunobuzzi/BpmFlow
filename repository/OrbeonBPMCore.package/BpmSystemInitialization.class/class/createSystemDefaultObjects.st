other
createSystemDefaultObjects
	"The receiver create the minimal objects to allow the BPM System to start
	1- a default <BpmEnvironment>
	2- an admins <BpmApplication>
	3- an admin <BpmUser>"
	| defaultEnvironment adminUser application |

	defaultEnvironment := BpmEnvironment addDefaultEnvironment.
	BpmExceptionCalendar addDefaultCalendarIn: defaultEnvironment. "set a default calendar for the environment"
	adminUser := BpmUser addAdminUser.
	application := 	BpmApplication applicationNamed: 'admins' ifNone: [(BpmApplication newNamed: 'admins') addToCache].
	defaultEnvironment registerApplication: application;
		registerUser: adminUser.