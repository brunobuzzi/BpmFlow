other
renderContentOn: html

	html div class: 'centered-unique-form';
		with: [
			html form with: [
				html fieldSet with:[ 
					html legend with: [html strong: ('Manage Current Applications' translateFor: self session user)].
					self renderApplicationsListOn: html.
					self renderNewApplicationOn: html.
					self renderFormOperationsOn: html.
				].
			].
	].