other
newOn: aModel task: aBpmTaskInstance parent: aWABpmProcessesBrowser

	^super new
		model: aModel;
		taskInstance: aBpmTaskInstance;
		setParent: aWABpmProcessesBrowser;
		yourself