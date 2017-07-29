other
initialize

	super initialize.

	value := 0.
	calendar := BpmExceptionCalendar default.
	warningThreshold := 0.7. "70% - when 70% of value variable <value> is reached then the receiver enter in the Warning zone"

	"when <warningThreshold> is reached then a notification to a backoffice user is sent. 
	This values in hours and when <warningThreshold> has been reached then each <notificationInterval> time a notification is sent.
	By default there is NO scaling defined <0>"
	notificationInterval := 0.  
	
	notifications := OrderedCollection new. "to store all notifications sent after the warningThreshold"

"	Colors
	[0  to: <warningThreshold>] - Green.
	[<warningThreshold> to: <value>] - Yellow.
	[<value> to: Date today] - Red.


"