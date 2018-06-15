other
initialize

	super initialize.

	name := ''.
	description := ''.
	startDate := Date today.
	endDate := Date today.
	minValue := 0.
	maxValue := 0.
	calculationMode := #sum. "possible values #sum, #average"