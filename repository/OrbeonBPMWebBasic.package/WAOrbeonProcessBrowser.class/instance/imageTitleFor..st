link to components
imageTitleFor: aBpmArtifactInstance

	aBpmArtifactInstance isCreated ifFalse: [^'Create Task' translateFor: self session user].
	aBpmArtifactInstance isDone ifTrue:[^'Finished Task' translateFor: self session user].
	aBpmArtifactInstance isProcessing ifTrue: [^'Edit Task' translateFor: self session user].
"	aBpmArtifactInstance isPaused ifTrue: [^'Paused' translateFor: self session user].
	aBpmArtifactInstance isDelayed ifTrue: [^'Delayed' translateFor: self session user].
	aBpmArtifactInstance isPending ifTrue: [^'Pending' translateFor: self session user]."

	^'Undefined' translateFor: self session user