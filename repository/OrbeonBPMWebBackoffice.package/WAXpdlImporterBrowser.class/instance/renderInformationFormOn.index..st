upload
renderInformationFormOn: html index: index
	| appId fileId |

	appId := 'orbeonApp-', index printString.
	fileId := 'fileName-', index printString.

	html div class: 'information-xpdl-import float-left';
		with: [
				html div with: [
					html output with: [html strong: ('Uploaded File' translateFor: self session user)].
				].
				html div class: 'margin-top-10px'; with: [
					html span with: [html strong: ('Application:' translateFor: self session user)].
					html output: (model getMappedApplicationNameAt: index).
				].
				html div class: 'margin-top-10px'; with: [
					html span with: [html strong: ('FileName:' translateFor: self session user)].
					html output: (model getMappedXpdlFileNameAt: index).
				].
		].