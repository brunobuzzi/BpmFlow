other
renderContentOn: html

	html div id: 'orbeon-list-application'; class: 'centered-unique-form';
		with: [
			html form with: [
				html fieldSet with:[ 
					html legend with: [html strong: ('Available Orbeon Applications' translateFor: self session user)].
					html div id: 'applications-list'; with: [self renderApplicationsListOn: html].
					html div id: 'forms-operations'; with: [self renderFormOperationsOn: html]].
			]
	].

	html div id: 'orbeon-definitions-list'; class: 'default-gray-table ';
		with: [self renderFormDefinitionsOn: html].