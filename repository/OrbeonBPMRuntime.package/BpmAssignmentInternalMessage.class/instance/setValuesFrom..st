other
setValuesFrom: aBpmTaskAssignment

	super setValuesFrom: aBpmTaskAssignment.

	roleName := aBpmTaskAssignment roleName.
	taskName := aBpmTaskAssignment taskName.
	username := aBpmTaskAssignment printUserName.

	body := self createMessageBody.