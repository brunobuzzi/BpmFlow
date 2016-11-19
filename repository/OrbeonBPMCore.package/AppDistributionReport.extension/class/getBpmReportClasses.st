*orbeonBPMCore
getBpmReportClasses

	^OrderedCollection new
		add: AppGlobalDistributionReport;
		add: BpmApplicationDistributionReport;
		add: BpmProcessDistributionReport;
		add: BpmFieldDistributionReport;
		add: BpmRecursiveFieldDistributionReport;
		add: BpmRoleDistributionReport;
		add: BpmUserDistributionReport;
		yourself