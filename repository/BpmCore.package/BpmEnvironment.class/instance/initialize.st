other
initialize

	super initialize.

	name := ''.
	applications := Dictionary new.
	users := RcKeyValueDictionary new.
	userGroups := RcKeyValueDictionary new.
	applicationsNames := Dictionary new.
	applicationsLogos := Dictionary new.
	usersChartsAndDashboardRepository := BpmChartsDashboardsRepository newOn: self.
	exceptionCalendars := Set new.

	"this value is used to generate the redirect from Orbeon to Seaside. 
	Check WABpmPersistenceOrbeonLayer>>generateLinkedUrlFor:s:andK: 
	This inst var is used in ATOP application. All Atop applications should change the value of <seasideApplicationName>. See issue #820 for more information."
	seasideApplicationName := 'bpmflow'.

	embeddedCodeSecurityPolicy := Dictionary new.

	self setLowSecurityForAll.