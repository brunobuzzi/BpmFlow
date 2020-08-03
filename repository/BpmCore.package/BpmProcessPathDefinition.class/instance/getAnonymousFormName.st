anonymous form
getAnonymousFormName
	"Answer the name of the anonymous form"
	| taskDefinition |

	self canBeStartedByAnonymousForm 
	ifFalse: [^NoAnonymousStartException signal: 'This process can NOT be started by an anonymous form'].

	taskDefinition := startEvent outTransitionsLast endArtifact.

	^taskDefinition applicationName, '.', processDefinition processName, '.', taskDefinition name