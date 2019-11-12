external components
canEditTask: aBpmArtifactInstance
	"Answer whether or not the loged user can edit the task <aBpmArtifactInstance>.
	1) The user has to be granted to work with <aBpmArtifactInstance>.
	2) <aBpmArtifactInstance> can not be finished.
	3) The associated task to current selected assignment (<model><aBpmTaskAssignment>) has to be identical to <aBpmArtifactInstance>.
	     This last check is to avoid a that two user with same roles working in the same process can edit a task from finished task list.
		 The user1 finish task1 and user2 take task2 (same role for both tasks and same process). 
		 User1 list finished tasks and he can see task2 but he can no edit that task (because is taken by user2)"
	
	^((aBpmArtifactInstance isGrantedUser: self session user) and: [aBpmArtifactInstance isDone not and: [model task == aBpmArtifactInstance]])