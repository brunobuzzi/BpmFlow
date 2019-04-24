other
renderCloseAndSendIconOn: html for: aBpmArtifactInstance
	| symbolIcon |

	symbolIcon := aBpmArtifactInstance isFinishedByPerformers ifFalse: [#tasksicon32Png] ifTrue: [#emailsendiconPng].

	html div class: 'float-right'; with: [
		self renderCloseAndSendRegularIconOn: html for: aBpmArtifactInstance.

		aBpmArtifactInstance hasAutomaticTaskAssignation "if the assignation is automatic then it can NOT be forced by the web user (to him self or other users)"
		ifFalse: [ 
			self renderCloseAndSendAndTakeNextIconOn: html for: aBpmArtifactInstance.

			self renderCloseAndSendAndSelectUsersIconOn: html for: aBpmArtifactInstance.
		].
	].