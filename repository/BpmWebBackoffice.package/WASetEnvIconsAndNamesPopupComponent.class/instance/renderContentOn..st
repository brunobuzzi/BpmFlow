other
renderContentOn: html
	| selectedEnvironment |

	selectedEnvironment := parent selectedLateralItem.

	html div with: [
		html form multipart; with: [
			html fieldSet with: [
				html legend: ('Backoffice' translateFor: self session user).
				html label for: 'backoffice-name'; with: ('Application Name' translateFor: self session user).
				html textInput 
							id: 'backoffice-name'; class: 'display-block';
							callback: [:value | self addValue: value named: 'backoffice-name'];
							value: selectedEnvironment getBackofficeApplicationName. 
				html label for: 'backoffice-logo'; with: ('Logo' translateFor: self session user).
				html fileUpload 
						callback: [:aFile | self receiveBackofficeLogo: aFile]; 
						id: 'backoffice-logo'; class: 'display-block'. 
			].
			html fieldSet with: [
				html legend: ('Frontoffice' translateFor: self session user).
				html label for: 'frontoffice-name'; with: ('Application Name' translateFor: self session user).
				html textInput 
							id: 'frontoffice-name'; class: 'display-block';
							callback: [:value | self addValue: value named: 'frontoffice-name']; 
							value: selectedEnvironment getFrontofficeApplicationName. 
				html label for: 'frontoffice-logo'; with: ('Logo' translateFor: self session user).
				html fileUpload id: 'frontoffice-logo'; callback: [:aFile | self receiveFrontofficeLogo: aFile]; class: 'display-block'. 
			].
			html fieldSet with: [
				html legend: ('Business Intelligence' translateFor: self session user).
				html label for: 'bi-name'; with: ('Application Name' translateFor: self session user).
				html textInput 
							id: 'bi-name'; class: 'display-block';
							callback: [:value | self addValue: value named: 'bi-name']; 
							value: selectedEnvironment getBIApplicationName. 
				html label for: 'bi-logo'; with: ('Logo' translateFor: self session user).
				html fileUpload id: 'bi-logo'; callback: [:aFile | self receiveBILogo: aFile]; class: 'display-block'.
			].
			html submitButton 
				callback: [self apply];
				with: ('Apply' translateFor: self session user).
		]
	]