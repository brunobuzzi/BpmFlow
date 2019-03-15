external components
linkToSeasideComponentFor: aBpmSeasideTaskInstance
  "The receiver gives the control to the component of task <aBpmSeasideTaskInstance>."
  | seasideModel |

	aBpmSeasideTaskInstance
	externalObject:
	  (aBpmSeasideTaskInstance hasForm
		ifTrue: [aBpmSeasideTaskInstance externalObject]
		ifFalse: [aBpmSeasideTaskInstance getObjectModel]).

	seasideModel := aBpmSeasideTaskInstance externalObject.

	innerSeasideComponent := aBpmSeasideTaskInstance getComponentClass newOn: seasideModel task: aBpmSeasideTaskInstance parent: self.

	self call: innerSeasideComponent