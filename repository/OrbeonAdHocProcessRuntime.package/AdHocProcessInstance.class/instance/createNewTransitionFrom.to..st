other
createNewTransitionFrom: startAdHocTaskInstance to: endAdHocTaskInstance
	""
	| newTransition |

	newTransition := AdHocTransitionInstance from: startAdHocTaskInstance to: endAdHocTaskInstance.

	^endAdHocTaskInstance performInitializationOn: self.