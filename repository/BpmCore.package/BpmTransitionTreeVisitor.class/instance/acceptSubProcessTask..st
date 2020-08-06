tasks
acceptSubProcessTask: aBpmSubProcessTaskDefinition
	| subProcess |

	self acceptTask: aBpmSubProcessTaskDefinition.

	subProcess := aBpmSubProcessTaskDefinition subProcessDefinition.

	subProcess startEventAcceptVisitor: self