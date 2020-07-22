processes
getProcessDefinitionLatestVersionsIn: aBpmEnvironment
	"Answer a collection with all process's latest versions <BpmProcessDefinition> that the receiver has access"
	| allLatestDefinitions |

	allLatestDefinitions := Set new.
	"backoffice user and admin --> can see all applications"
	((self isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [self getVisibleApplicationsIn: aBpmEnvironment] ifFalse: [self getApplicationsIn: aBpmEnvironment]) 
		do: [:eachApp | 
				eachApp processesDefinitionsDo: [:versionCollection | 
					(versionCollection notEmpty and: [versionCollection last isTopProcess]) ifTrue: [allLatestDefinitions add: versionCollection last].
				].
		].

	^allLatestDefinitions asOrderedCollection