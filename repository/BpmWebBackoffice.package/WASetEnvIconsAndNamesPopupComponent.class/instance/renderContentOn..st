other
renderContentOn: html
	| selectedEnvironment |

	selectedEnvironment := parent selectedLateralItem.

	html div with: [
		html form multipart; with: [
			html fieldSet with: [
				html legend: ('Backoffice' translateIn: self session).
				html label for: 'backoffice-name'; with: ('Application Name' translateIn: self session).
				html textInput 
							id: 'backoffice-name'; class: 'display-block';
							callback: [:value | self addValue: value named: 'backoffice-name'];
							value: selectedEnvironment getBackofficeApplicationName. 
				html label for: 'backoffice-logo'; with: ('Logo' translateIn: self session).
				html fileUpload 
						callback: [:aFile | self receiveBackofficeLogo: aFile]; 
						id: 'backoffice-logo'; class: 'display-block'. 
			].
			html fieldSet with: [
				html legend: ('Frontoffice' translateIn: self session).
				html label for: 'frontoffice-name'; with: ('Application Name' translateIn: self session).
				html textInput 
							id: 'frontoffice-name'; class: 'display-block';
							callback: [:value | self addValue: value named: 'frontoffice-name']; 
							value: selectedEnvironment getFrontofficeApplicationName. 
				html label for: 'frontoffice-logo'; with: ('Logo' translateIn: self session).
				html fileUpload id: 'frontoffice-logo'; callback: [:aFile | self receiveFrontofficeLogo: aFile]; class: 'display-block'. 
			].
			html fieldSet with: [
				html legend: ('Business Intelligence' translateIn: self session).
				html label for: 'bi-name'; with: ('Application Name' translateIn: self session).
				html textInput 
							id: 'bi-name'; class: 'display-block';
							callback: [:value | self addValue: value named: 'bi-name']; 
							value: selectedEnvironment getBIApplicationName. 
				html label for: 'bi-logo'; with: ('Logo' translateIn: self session).
				html fileUpload id: 'bi-logo'; callback: [:aFile | self receiveBILogo: aFile]; class: 'display-block'.
			].
			html submitButton 
				callback: [self apply];
				with: ('Apply' translateIn: self session).
		]
	]