upload
renderEmptyUploadFormOn: html index: index
	| appId |

	appId := 'orbeonApp-', index printString.

	html div class: 'centered-unique-form float-left';
		with: [
				html form multipart; 
					"class: 'height300';"
					with: [
						html fieldSet with:[
							html legend with: [html strong: ('XPDL Upload Form' translateFor: self session user)].
							html label attributeAt: 'for' put: appId; with: ('Application' translateFor: self session user).
							html select list: (#('-'), (orbeonApplications collect: [:each | each applicationName])) asSortedCollection; 
								attributeAt: 'id' put: appId;
								title: ('Available Form Applications' translateFor: self session user);
								onChange: 'submit()';
								callback: [:value | uploadProcesses at: index put: value ];
								selected: (uploadProcesses at: index ifAbsent: [nil]).
							self renderUploadComponentOn: html index: index]]].