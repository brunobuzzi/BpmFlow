other
indexOfTransition: anBpmArtifactInstance
	"Answer the index of the receiver transition <anBpmArtifactInstance>"

	(executedActivities includes: anBpmArtifactInstance) 
	ifTrue: [^(executedActivities indexOf: anBpmArtifactInstance)].

	(currentActivities includes: anBpmArtifactInstance) 
	ifTrue: [^(executedActivities size) + (currentActivities indexOf: anBpmArtifactInstance)].

	^0