render
setPropertiesTo: aBpmChartDistribution

	aBpmChartDistribution 
		applicationName: self getApplicationName;
		processName: self getProcessName;
		fieldName: self getFieldName;
		formName: self getFormName ;
		startDate: self getStartDate;
		endDate: self getEndDate ;
		version: self getVersion;
		queryBlock: self queryBlock.