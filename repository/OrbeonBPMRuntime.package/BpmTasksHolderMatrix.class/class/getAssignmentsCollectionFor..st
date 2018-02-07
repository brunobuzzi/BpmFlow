other
getAssignmentsCollectionFor: aBpmFrontOfficeRole
	"The receiver answer <aRcIdentitySet> with all <BpmTaskAssignment> for the role <aBpmFrontOfficeRole>"
	| matrix |

	matrix := self getMatrixForApplicationNamed: aBpmFrontOfficeRole getApplicationName.

	^matrix getAvailableTasksFor: aBpmFrontOfficeRole name