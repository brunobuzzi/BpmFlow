other
getCurrentCollection

	^(super getCurrentCollection) reject: [:dashboardDefinition | dashboardDefinition isActive]