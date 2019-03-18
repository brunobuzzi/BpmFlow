external components
linkToSeasideComponentFor: aBpmSeasideTaskInstance
  "The receiver gives the control to the component of task <aBpmSeasideTaskInstance>."

	aBpmSeasideTaskInstance externalObject ifNil: [aBpmSeasideTaskInstance setExternalObject].

	innerSeasideComponent := aBpmSeasideTaskInstance getComponentClass newOn: aBpmSeasideTaskInstance externalObject task: aBpmSeasideTaskInstance parent: self.

	self call: innerSeasideComponent