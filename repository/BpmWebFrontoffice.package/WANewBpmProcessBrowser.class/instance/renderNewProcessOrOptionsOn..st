other
renderNewProcessOrOptionsOn: html

	html div class: 'centered-forms'; with: [
		html form with: [
			html fieldSet with: [
				html label attributeAt: 'for' put: 'application-or'; with: 'Application'.
				html select 
					list: (#(' '), ((self getUserApplications collect: [:each | each applicationName]) asSortedCollection difference: orApplications)); 
					title: 'Available Form Applications';
					attributeAt: 'id' put: 'application-or';
					callback: [:value | orApplication := value].
				html submitButton callback: [self addOrApplication] ; with: ('Add Application' translateIn: self session).
				html submitButton callback: [self removeAllOr] ; with: ('Remove All' translateIn: self session).
			].
			self renderApplicationContextOn: html forApplication: orApplications withSeparator: ' | '.
			self renderOrDetailsOn: html.
		].
	].