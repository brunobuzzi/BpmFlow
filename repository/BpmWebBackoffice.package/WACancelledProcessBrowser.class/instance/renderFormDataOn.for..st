render
renderFormDataOn: html for: aBpmActivityInstance

	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('User' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmActivityInstance getUserName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('State' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: (aBpmActivityInstance printState translateIn: self session)]].
"	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Previous Form' translateIn: self session)].
		html strong with: [html output  with: (aBpmActivityInstance getDefinitionName translateIn: self session)]]."
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Form to Fill' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmActivityInstance getDefinitionName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Creation Time' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmActivityInstance creationTime]].

	(aBpmActivityInstance isDone not and: [aBpmActivityInstance hasExpectedExecutionTime]) ifTrue: [
		html div class: 'transition-data'; with: [
			html strong with: [html span with: ('Due Date' translateIn: self session)].
			html strong with: [html output "for: 'searchFields';" 
										style: ('color: ', aBpmActivityInstance getWarningColor,';');
										with: aBpmActivityInstance printDueDate.]].
	].