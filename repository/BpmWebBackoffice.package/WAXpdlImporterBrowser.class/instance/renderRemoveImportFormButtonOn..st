upload
renderRemoveImportFormButtonOn: html

	"at least one import form has to be rendered"
	((model indexXpdlFileMapperSize > 0) or: [numberOfProcess > 1]) ifFalse: [^self]. 

	html anchor callback: [self removeImportProcessForm];
					with: [html image url: (SEWAFIconLibrary / #delete132Png); 
								altText: ('Remove Import Process Form' translateIn: self session); 
								title: ('Remove Import Process Form' translateIn: self session)].