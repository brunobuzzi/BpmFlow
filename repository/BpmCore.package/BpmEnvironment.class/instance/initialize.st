other
initialize

	super initialize.

	name := ''.
	applications := Dictionary new.
	users := RcKeyValueDictionary new.
	applicationsNames := Dictionary new.
	applicationsLogos := Dictionary new.
	seasideApplicationName := 'bpmflow'.