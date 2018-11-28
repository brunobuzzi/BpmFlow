other
apply
	| selectedEnvironment |

	selectedEnvironment := parent selectedLateralItem.

	(self componentValueAt: 'backoffice-name')
	ifNotNil: [:newName| newName notEmpty ifTrue: [selectedEnvironment setBackofficeApplicationName: newName]].
 
	(self componentValueAt: 'frontffice-name')
	ifNotNil: [:newName| newName notEmpty ifTrue: [selectedEnvironment setFrontofficeApplicationName: newName]].


	(self componentValueAt: 'bi-name')
	ifNotNil: [:newName| newName notEmpty ifTrue: [selectedEnvironment setBIApplicationName: newName]].