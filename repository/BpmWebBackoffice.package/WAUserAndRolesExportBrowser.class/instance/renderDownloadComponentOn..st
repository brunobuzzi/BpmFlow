other
renderDownloadComponentOn: html

	html submitButton class: 'display-block';
			callback: [self downloadSystemRoleStructure.]; 
			with: ('Download System Role Configuration' translateFor: self session user).