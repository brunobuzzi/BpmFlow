other
answer

	"create BpmProcessDefinition>>fieldInstances.

	self processDefinition updateFieldsOfSeasideModel: self model"

	self model generateFormFieldValueSet.

	self processDefinition updateFieldsOf: self model.	

	super answer.