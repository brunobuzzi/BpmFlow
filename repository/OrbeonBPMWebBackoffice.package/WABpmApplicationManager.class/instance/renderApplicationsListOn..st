other
renderApplicationsListOn: html
	| apps |

	apps := self session user getBackofficeApplications.
	html label attributeAt: 'for' put: 'app-title'; with: ('Applications' translateFor: self session user).
	html multiSelect 
		class: 'height180';
		attributeAt: 'id' put: 'app-title'; 
		attributeAt: 'title' put: ('Applications' translateFor: self session user);
		list: (apps collect: [:each | each getApplicationNameForCombo]) asSortedCollection;
		size: apps size;
		callback: [:value | self selectedApplications: value].