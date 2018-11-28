process
renderFormDataOn: html for: aBpmActivityInstance

	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('User' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmActivityInstance getUserName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('State' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: (aBpmActivityInstance printState translateFor: self session user)]].
"	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Previous Form' translateFor: self session user)].
		html strong with: [html output  with: (aBpmActivityInstance getDefinitionName translateFor: self session user)]]."
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Form to Fill' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmActivityInstance getDefinitionName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Creation Time' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmActivityInstance creationTime]].

	(aBpmActivityInstance isDone not and: [aBpmActivityInstance hasExpectedExecutionTime]) ifTrue: [
		html div class: 'transition-data'; with: [
			html strong with: [html span with: ('Due Date' translateFor: self session user)].
			html strong with: [html output "for: 'searchFields';" 
										style: ('color: ', aBpmActivityInstance getWarningColor,';');
										with: aBpmActivityInstance printDueDate.]].
	].