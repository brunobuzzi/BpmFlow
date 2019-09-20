tasks
acceptSubProcessTask: aBpmSubProcessTaskDefinition
	| subProcess |

	self acceptTask: aBpmSubProcessTaskDefinition.

	subProcess := aBpmSubProcessTaskDefinition subProcessDefinition.

	subProcess startEvent acceptVisitor: self