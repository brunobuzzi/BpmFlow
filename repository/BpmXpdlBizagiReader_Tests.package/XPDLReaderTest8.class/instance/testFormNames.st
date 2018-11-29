other
testFormNames
	| package workflow orbeonApplication nonExistingForms |

"	package := self getMainProcessXpdlPackage.
	workflow := self getMainWorkflow.
	orbeonApplication := OrbeonApplication applicationNamed: 'ue' ifNone: [self assert: false].

	nonExistingForms := workflow getNonExistingFormNamesIn: orbeonApplication.
	nonExistingForms  isEmpty ifFalse: [self assert: false]."

	self assert: true