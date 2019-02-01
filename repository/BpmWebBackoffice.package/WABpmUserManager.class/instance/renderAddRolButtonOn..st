other
renderAddRolButtonOn: html

	html anchor callback: [self switchAddingUser];
					with: [html image url: (SEWAFIconLibrary / #useradd24iconPng); 
											altText: ('Add Role to User' translateIn: self session); 
											title: ('Add Role to User' translateIn: self session)].