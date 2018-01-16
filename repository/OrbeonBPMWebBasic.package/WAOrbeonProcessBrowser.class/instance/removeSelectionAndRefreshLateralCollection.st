process
removeSelectionAndRefreshLateralCollection

	lateralCollection remove: selectedLateralItem ifAbsent: [].
	searchResult remove: selectedLateralItem ifAbsent: [].

	selectedLateralItem := nil.

	self getCurrentCollection.