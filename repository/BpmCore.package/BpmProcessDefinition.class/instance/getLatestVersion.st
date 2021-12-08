other
getLatestVersion
	"The receiver answer the latest version of it's -type- (same <processName> and same <application>)  in the global cacle"

	^self systemRoot getLatestProcessDefinitionNamed: processName in: self getApplicationName