other
renderChangePasswordOn: html

	html div id: 'change-password'; class: 'centered-unique-form';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Change Password' translateIn: self session)].
						html label attributeAt: 'for' put: 'currentPassword'; with: ('Current Password' translateIn: self session).
						html textInput attributeAt: 'id' put: 'currentPassword'; callback: [:value | searchValues at: 'current-pwd' put: value].
						html label attributeAt: 'for' put: 'newPassword'; with: ('New Password' translateIn: self session).
						html textInput attributeAt: 'id' put: 'newPassword'; callback: [:value | searchValues at: 'new-pwd' put: value].
						html label attributeAt: 'for' put: 'newPassword2'; with: ('Repeat New Password' translateIn: self session).
						html textInput attributeAt: 'id' put: 'newPassword2'; callback: [:value | searchValues at: 'repeat-new-pwd' put: value].
						html submitButton callback: [self changePassword]; with: ('Confirm' translateIn: self session).
						informationComponent ifNotNil: [html render: informationComponent].
					].
				].
		].