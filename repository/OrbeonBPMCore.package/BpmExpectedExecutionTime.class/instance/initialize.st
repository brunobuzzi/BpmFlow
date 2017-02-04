other
initialize

	super initialize.

	value := 0.
	calendar := BpmExceptionCalendar new.
	warningThreshold := 0.7. "70% - when 70% of value variable <value> is reached then the receiver enter in the Warning zone"

"	Colors
	[0  to: <warningThreshold>] - Green.
	[<warningThreshold> to: <value>] - Yellow.
	[<value> to: Date today] - Red.


"