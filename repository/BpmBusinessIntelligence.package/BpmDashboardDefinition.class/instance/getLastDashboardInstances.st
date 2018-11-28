dashboard generation
getLastDashboardInstances

	^(items collect: [:each | each lastDashboardInstanceOrNil]) select: [:each | each notNil]