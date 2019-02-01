other
renderAddUserButtonOn: html

	html anchor callback: [self switchAddingUser];
					with: [html image url: (SEWAFIconLibrary / #useradd24iconPng); 
											altText: ('Add User to Rol' translateIn: self session); 
											title: ('Add User to Rol' translateIn: self session)].