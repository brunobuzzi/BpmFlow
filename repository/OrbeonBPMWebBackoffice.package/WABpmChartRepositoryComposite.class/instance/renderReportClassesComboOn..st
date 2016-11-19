other
renderReportClassesComboOn: html
	| reportTypes |

	reportTypes := AppDistributionReport getBpmReportNames collect: [:each | each translateFor: self session user].

	^self renderGenericActiveComboOn: html withList: reportTypes forVariable: 'report-type' label: ('Report Type' translateFor: self session user)