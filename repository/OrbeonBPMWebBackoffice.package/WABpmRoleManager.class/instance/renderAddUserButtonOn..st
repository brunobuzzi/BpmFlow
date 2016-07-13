other
renderAddUserButtonOn: html

	html anchor callback: [self switchAddingUser];
					with: [html image url: (SEWAFFileLibrary / #useradd24iconPng); 
											altText: ('Add User to Rol' translateFor: self session user); 
											title: ('Add User to Rol' translateFor: self session user)].