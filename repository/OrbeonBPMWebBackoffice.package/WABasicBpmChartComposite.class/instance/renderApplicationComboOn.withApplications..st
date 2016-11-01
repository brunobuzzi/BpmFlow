other
renderApplicationComboOn: html withApplications: applicationNames

	^self renderGenericActiveComboOn: html withList: (#(''), applicationNames) forVariable: 'application' label: 'Application'