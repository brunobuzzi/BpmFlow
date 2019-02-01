other
renderItemDescriptionAditionalDataOn: html
	| procsSize formsSize |

	procsSize := selectedLateralItem getNumberOfProcessesDefinition.
	formsSize := selectedLateralItem getNumberOfFormsDefinition.

	html span with: [html strong: ('Number of Processes Definition:' translateIn: self session)].
	html output: procsSize printString.

	html span with: [html strong: ('Number of Forms Definition:' translateIn: self session)].
	html output: formsSize printString.

	(procsSize = 0) ifFalse: [
		html span with: [html strong: ('Average of Forms in a Process:' translateIn: self session)].
		html output: ((formsSize/procsSize) asScaledDecimal: 1)  printString.
	].

	html span: [html strong: ('Type:' translateIn: self session)]. 
	html output: selectedLateralItem printType.