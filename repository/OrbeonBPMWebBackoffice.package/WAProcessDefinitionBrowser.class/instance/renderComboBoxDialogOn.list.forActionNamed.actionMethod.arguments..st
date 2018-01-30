jquery
renderComboBoxDialogOn: html list: list forActionNamed: actionName actionMethod: actionMethod arguments: arguments
	"<buttonsNames> Array with: (Array with: name with: value) with: (Array with: name2 with: value2)
	Array with: #('First Value' #firstValue) with: #('Second Value' #secondValue)"

	html div class: 'jquery-dialog-yes-no'; with: [
		html form with: [
			html fieldSet with: [
				html label class: 'margin-right-10px'; attributeAt: 'for' put: 'assignationPolicy'; with: ('Assignation Policy' translateFor: self session user).
				html select 
					attributeAt: 'id' put: 'assignationPolicy';
					list: list;
					callback: [:policyName | self setAssignationPolicy: policyName];
					selected: selectedLateralItem printPolicyName.

				html submitButton with: ('Confirm' translateFor: self session user).
			]
		] 
	].