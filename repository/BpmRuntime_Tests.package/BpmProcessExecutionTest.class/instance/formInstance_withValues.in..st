create random process
formInstance_withValues: anArray in: aBpmProcessInstance
	"The receiver creates <anOrbeonFormInstance> using values in <anArray> for BPM process <aBpmProcessInstance>.
	Each process definition <procDefinition> and form instance is different in each TestCase class then this method must be implemented by subclasses"

	self subclassResponsibility