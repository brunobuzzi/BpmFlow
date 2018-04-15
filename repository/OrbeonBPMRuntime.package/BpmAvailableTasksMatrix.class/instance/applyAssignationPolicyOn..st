other
applyAssignationPolicyOn: aBpmTaskAssignment
	"The receiver apply the assignation policy on <aBpmTaskAssignment>"
	"Assignation policy is only applied to Running Matrix.
	Finished Matrix do NOT use Assignation Policy"

	aBpmTaskAssignment assignationPolicy isAutomatic 
	ifTrue: [aBpmTaskAssignment applyAssignationPolicy].