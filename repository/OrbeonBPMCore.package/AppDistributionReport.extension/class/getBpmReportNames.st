*orbeonBPMCore
getBpmReportNames

	^self getBpmReportClasses collect: [:each | each getComboName]