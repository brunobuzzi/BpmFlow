dashboard generation
updateDashboardInstances

	items do: [:itemDefinition | | lastInstance startDate endDate |
		lastInstance := instanceRecursion getLastDashboardInstanceFor: self.
		startDate := instanceRecursion getNewStartDateFrom: lastInstance.
		endDate := instanceRecursion getNewEndDateFor: lastInstance.
		itemDefinition generateDashboardInstanceFrom: startDate to: endDate.
	].