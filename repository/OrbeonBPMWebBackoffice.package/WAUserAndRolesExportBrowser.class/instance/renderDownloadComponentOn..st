other
renderDownloadComponentOn: html

	html submitButton class: 'display-block';
			callback: [self downloadSystemRoleStructure.]; 
			with: ('Download Systen Role Configuration' translateFor: self session user).