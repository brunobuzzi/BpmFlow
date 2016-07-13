task handling
createSlotFor: roleName
	"The receiver creates a slot/collection to hold <BpmProcessInstance> where the role named <roleName> is granted.
	This slot/collection can have process with different <BpmProcessDefinition> because the same <BpmRole> can participate in different processes"

	"Inside <RcIdentityBag> create an index by <each.processName> to split by process type"

	^rolesAndAssignment at: roleName put: RcIdentityBag new