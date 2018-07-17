other
setValuesFrom: aBpmTaskAssignment

	super setValuesFrom: aBpmTaskAssignment.

	roleName := aBpmTaskAssignment getPerfomerOrRoleName.
	taskName := aBpmTaskAssignment taskName.
	username := aBpmTaskAssignment printUserName.

	body := self createMessageBody.