other
renderApplicationsListOn: html
	| apps |

	apps := self session user getOrbeonBackofficeApplications.
	html multiSelect 
		attributeAt: 'title' put: ('Orbeon Applications' translateFor: self session user);
		list: (apps collect: [:each | each applicationName]) asSortedCollection;
		size: apps size;
		callback: [:value | self selections: value].