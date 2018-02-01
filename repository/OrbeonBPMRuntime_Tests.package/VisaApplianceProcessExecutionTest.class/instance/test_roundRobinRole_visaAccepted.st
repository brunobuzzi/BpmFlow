test
test_roundRobinRole_visaAccepted
	| currentTask currentAssignment |

	procInstance := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').
	procDefinition assignationPolicy: (BpmRoundRobinRoleAssignationPolicy newOn: procDefinition).