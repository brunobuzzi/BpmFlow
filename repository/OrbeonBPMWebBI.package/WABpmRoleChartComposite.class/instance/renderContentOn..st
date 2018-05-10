other
renderContentOn: html

	html div id: 'top-search-area'; class: 'top-search-area-box-shadow';
		with: [self renderSearchAreaOn: html].

	(self isNumberOfTasksDistributionAndBarChart and: [self isAllRolesSelected]) ifTrue: [^self renderNumberOfTasksBarChartOn: html].
	(self isNumberOfTasksDistributionAndPieChart and: [self isAllRolesSelected]) ifTrue: [^self renderNumberOfTasksBarPieOn: html].

	(self isNumberOfUsersDistributionAndBarChart and: [self isAllRolesSelected]) ifTrue: [^self renderNumberOfUsersBarChartOn: html].
	(self isNumberOfUsersDistributionAndPieChart and: [self isAllRolesSelected]) ifTrue: [^self renderNumberOfUsersPieBarChartOn: html].

	(self isUnassignedTasksDistributionAndBarChart and: [self isAllRolesSelected]) ifTrue: [^self renderUnassignedTasksBarChartOn: html].
	(self isUnassignedTasksDistributionAndPieChart and: [self isAllRolesSelected]) ifTrue: [^self renderUnassignedTasksPieChartOn: html].

	(self isTasksAverageTimeDistributionAndBarChart and: [self isAllRolesSelected not]) ifTrue: [^self renderRoleTaskAverageTimeBarChartOn: html].
	(self isTasksAverageTimeDistributionAndPieChart and: [self isAllRolesSelected not]) ifTrue: [^self renderRoleTaskAverageTimePieChartOn: html].