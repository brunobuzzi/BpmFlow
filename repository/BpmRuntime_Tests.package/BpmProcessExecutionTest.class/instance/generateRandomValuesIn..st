create random process
generateRandomValuesIn: aTimeStamp
	"The receiver generates <anArray> with random values including <aTimeStamp>.
	Each process definition <procDefinition> and form instance is different in each TestCase class then this method must be implemented by subclasses"

	self subclassResponsibility