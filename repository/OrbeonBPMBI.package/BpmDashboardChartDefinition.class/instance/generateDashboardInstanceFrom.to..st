other
generateDashboardInstanceFrom: startDate to: endDate
	| dashboard |

	dashboard := BpmDashboardInstance newForItemDefinition: self.

	self hasDates
	ifTrue: [dashboard startDate: startDate;
								endDate: endDate].

	^dashboard