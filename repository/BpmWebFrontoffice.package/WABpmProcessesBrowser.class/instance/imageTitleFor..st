link to components
imageTitleFor: aBpmArtifactInstance

	aBpmArtifactInstance isCreated ifFalse: [^'Create Task' translateIn: self session].
	aBpmArtifactInstance isDone ifTrue:[^'Finished Task' translateIn: self session].
	aBpmArtifactInstance isProcessing ifTrue: [^'Edit Task' translateIn: self session].
"	aBpmArtifactInstance isPaused ifTrue: [^'Paused' translateFor: self session user].
	aBpmArtifactInstance isDelayed ifTrue: [^'Delayed' translateFor: self session user].
	aBpmArtifactInstance isPending ifTrue: [^'Pending' translateFor: self session user]."

	^'Undefined' translateIn: self session