other
taskIsDone: aBpmArtifactInstance
	"The receiver answer whether or not the artifact <aBpmArtifactInstance> has been finalized"

	^executedActivities includes: aBpmArtifactInstance