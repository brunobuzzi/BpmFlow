other
searchReport

	searchApplied := true.
	selectedLateralItem := nil.

	self isGlobalScopeSelected ifTrue: [^self showGlobalScopeCharts].

	self isApplicationReportSelected ifTrue: [^self showApplicationReports].

	self isFieldReportSelected ifTrue: [^self showFieldReports].

	self isProcessReportSelected ifTrue: [^self showProcessReports].

	self isRoleReportSelected ifTrue: [^self showRoleReports].

	self isUserReportSelected ifTrue: [^self showUserReports].