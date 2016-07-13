finalizedPerformerCount - used with performers only (is 0 for task without performers)
rolesWhoWorked - a collection to support multiple roles working on the same task. Each time role work finish a part of the task --> "finish" it's task and that roles is added to this collection.

Subclassses of this class must implement the following messages:
#getValueOfFormField:
#hasFieldNamed:

These methods are called from BpmProcessInstance>>doesNotUnderstand: when evaluating a BpmCode.