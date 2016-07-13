upload
renderProcessUploadOn: html index: index

	html div class: 'centered-unique-form float-left';
		with: [
				html form multipart; 
					class: 'height300';
					with: [
						html fieldSet with:[
							html legend with: [html strong: ('XPDL Upload Form' translateFor: self session user)].
							html label attributeAt: 'for' put: 'orbeonApp'; with: ('Orbeon Application' translateFor: self session user).
							html select list: (#('-'), (orbeonApplications collect: [:each | each applicationName])) asSortedCollection; 
								attributeAt: 'id' put: 'orbeonApp';
								title: ('Available Form Applications' translateFor: self session user);
								onChange: 'submit()';
								callback: [:value | uploadProcesses at: index put: value ];
								selected: (uploadProcesses at: index ifAbsent: [nil]).
							html label attributeAt: 'for' put: 'processName'; with: ('Process Name' translateFor: self session user).
							html textInput attributeAt: 'id' put: 'processName';
								callback: [:value | processesNames at: index put: value];
								with: (processesNames at: index ifAbsent: ['']).
							self renderUploadComponentOn: html index: index]]].