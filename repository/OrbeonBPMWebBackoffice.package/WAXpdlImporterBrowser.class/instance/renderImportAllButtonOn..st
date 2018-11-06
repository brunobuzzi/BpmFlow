import
renderImportAllButtonOn: html
	| cssClass jQueryId |

	jQueryId := self renderJQueryInformationDialogOn: html 
							title: 'BPM Process' 
							information: ('XPDL import is about to start. If succeed the imported Process/es Definition/s will be shown. If fail an error report will be shown.' translateFor: self session user) 
							buttonLabel: ('Proceed' translateFor: self session user) 
							actionMethod: #importBizagiFiles.

	cssClass := (numberOfProcess = 1) ifTrue: ['import-all-button-1'] ifFalse: ['import-all-button-2'].

	html div class: cssClass; with: [
		(model indexXpdlFileMapperSize = numberOfProcess) ifFalse: [^self]. "compare the number of uploaded XPDL file with the number of forms to upload XPDL (can not be empty form)"
					html anchor 
						class: 'cursor-pointer';
						onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #actionsdocumentsaveasiconPng); 
								altText: ('Import All Files' translateFor: self session user); 
								title: ('Import All Files' translateFor: self session user)].
	]