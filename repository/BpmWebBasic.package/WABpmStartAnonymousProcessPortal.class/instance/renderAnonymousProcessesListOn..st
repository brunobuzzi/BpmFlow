render
renderAnonymousProcessesListOn: html
	| processes |

	processes := environment getProcessesDefinitionWithAnonymouStart.
	processes isEmpty ifTrue: [^html div id: 'no-environment'; with: ('No Available Processes to Start' translateTo: self getSelectedLanguage)].

	processes do: [:procDefinition | | taskName |
		taskName := procDefinition getOrderedTasks ifEmpty: [('Errror' translateTo: self selectedLanguage)] ifNotEmpty: [:collection | collection first name].
		html div class: 'form-link'; with: [
			html anchor 
				target: '_blank';
				callback: [self redirecToOrbeonFormToStart: procDefinition withTaskNamed: taskName];
				with: [html output: (procDefinition applicationName, ' - ', taskName)].
		]
	].