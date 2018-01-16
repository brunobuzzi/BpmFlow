link to components
linkToSeasideComponentFor: aBpmSeasideTaskInstance
  "The receiver gives the control to the component of task <aBpmSeasideTaskInstance>."
  | seasideModel |

  aBpmSeasideTaskInstance
    externalObject:
      (aBpmSeasideTaskInstance hasForm
        ifTrue: [aBpmSeasideTaskInstance externalObject]
        ifFalse: [aBpmSeasideTaskInstance getObjectModel]).

  seasideModel := aBpmSeasideTaskInstance externalObject.

  self show: (aBpmSeasideTaskInstance getComponentClass 
						newOn: seasideModel 
						task: aBpmSeasideTaskInstance 
						assignment: selectedLateralItem)