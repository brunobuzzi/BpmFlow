other
renderChangePasswordOn: html

	html div id: 'change-password'; class: 'centered-unique-form';
		with: [html form with: [
					html fieldSet with:[
						html legend with: [html strong: ('Change Password' translateFor: self session user)].
						html label attributeAt: 'for' put: 'currentPassword'; with: ('Current Password' translateFor: self session user).
						html textInput attributeAt: 'id' put: 'currentPassword'; callback: [:value | searchValues at: 'current-pwd' put: value].
						html label attributeAt: 'for' put: 'newPassword'; with: ('New Password' translateFor: self session user).
						html textInput attributeAt: 'id' put: 'newPassword'; callback: [:value | searchValues at: 'new-pwd' put: value].
						html label attributeAt: 'for' put: 'newPassword2'; with: ('Repeat New Password' translateFor: self session user).
						html textInput attributeAt: 'id' put: 'newPassword2'; callback: [:value | searchValues at: 'repeat-new-pwd' put: value].
						html submitButton callback: [self changePassword]; with: ('Confirm' translateFor: self session user).
						informationComponent ifNotNil: [html render: informationComponent].
					].
				].
		].