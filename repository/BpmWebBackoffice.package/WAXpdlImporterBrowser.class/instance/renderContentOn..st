import
renderContentOn: html
	| importTitle |

	model hasFormatErrors ifTrue: [self renderFormatErrorsOn: html].
	model hasImmutableProcesses ifTrue: [self renderImmutableExceptionOn: html].

	html div id: 'import-forms'; with: [
		self renderResetButtonOn: html.
		1 to: numberOfProcess do: [:index | self renderFormToUploadProcessOn: html index: index].

		html div id: 'add-new-import-form';
			with: [html div id: 'add-new-form-button'; with: [self renderAddNewImportFormButtonOn: html].
					html div id: 'remove-new-form-button'; with: [self renderRemoveImportFormButtonOn: html].
					self renderImportAllButtonOn: html]."render the button to trigger the import process (#importBizagiFiles) if warnings are detected a list of items is displayed"
	].

	model hasProcessGenerator ifFalse: [^self].
	model hasImmutableProcesses ifTrue: [^self].
	model hasNonResumableWarnings ifTrue: [^self renderNonResumableWarningsOn: html].
	
	model isImportSuccessful
	ifTrue: [html div id: 'imported-processes-sucessful'; with: [html output: ('Successful Import' translateIn: self session)].
		model generatedProcessesDo: [:eachProcess | 
			html div class: 'imported-process-info'; with: [
				html output: ('Process Name: [' translateIn: self session), eachProcess processName, '] ', String tab.
				html output: ('version: [' translateIn: self session), eachProcess version printString, ']'].
		].
	]
	ifFalse: [importTitle := (model numberOfGeneratedProcesses > 1) ifTrue: ['Processes to Import'] ifFalse: ['Process to Import'].
		html div id: 'imported-processes-title'; 
					with: [html output: (importTitle translateIn: self session)].
		html div id: 'imported-processes'; 
					with: [self renderSVGForImportedProcessesOn: html]. "here the user can confirm the import and processes are stored"
		html div id: 'process-map';
					with: [(self componentValueAt: 'view.svg.map' ifAbsent: [nil]) ifNotNil: [:procDefinition | self renderSvgProcessMapFor: procDefinition on: html].]
	].