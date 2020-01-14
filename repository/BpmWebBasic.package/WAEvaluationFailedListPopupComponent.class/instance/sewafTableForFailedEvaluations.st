other
sewafTableForFailedEvaluations

	^(SewafTableReport parent: self)
		summary: 'Failed Evaluations';
		backcolor: self session user userOptions getTableReportBackcolor;
		columns: (OrderedCollection new  
						add: (SewafReportColumn selector: #timeStamp title: ('Time Stamp' translateIn: self session));
						add: (SewafReportColumn selector: #printBlockSource title: ('Block Source' translateIn: self session));
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself