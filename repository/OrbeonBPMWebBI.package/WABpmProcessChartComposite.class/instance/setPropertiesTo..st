other
setPropertiesTo: aBpmChartDistribution

	aBpmChartDistribution fieldName: self getFieldName;
		formName: self getFormName ;
		startDate: self getStartDate;
		endDate: self getEndDate ;
		queryBlock: self queryBlock.