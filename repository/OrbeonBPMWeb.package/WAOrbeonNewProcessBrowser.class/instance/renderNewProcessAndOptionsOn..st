other
renderNewProcessAndOptionsOn: html

	html div class: 'centered-forms'; with: [
		html form with: [
			html fieldSet with: [
				html label with: 'Application'.
				html select 
					list: (#(' '), ((self getUserApplications collect: [:each | each applicationName]) asSortedCollection difference: andApplications)); 
					title: 'Available Form Applications';
					callback: [:value | andApplication := value].
				html submitButton callback: [self addAndApplication] ; with: ('Add Application' translateFor: self session user).
				html submitButton callback: [self removeAllAnd] ; with: ('Remove All' translateFor: self session user).
			].
			self renderApplicationContextOn: html forApplication: andApplications withSeparator: ' & '.
			self renderAndDetailsOn: html.
		].
	].