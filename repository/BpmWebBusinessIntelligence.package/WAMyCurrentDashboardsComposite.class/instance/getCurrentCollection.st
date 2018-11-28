other
getCurrentCollection

	^(super getCurrentCollection) select: [:dashboardDefinition | dashboardDefinition isActive]