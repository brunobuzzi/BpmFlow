other
renderItemDescriptionSecondaryDataOn: html
	| procsSize formsSize |

	procsSize := selectedLateralItem getNumberOfProcessesDefinition.
	formsSize := selectedLateralItem getNumberOfFormsDefinition.

	html span with: [html strong: ('Number of Processes Definition:' translateFor: self session user)].
	html output: procsSize printString.

	html span with: [html strong: ('Number of Forms Definition:' translateFor: self session user)].
	html output: formsSize printString.

	(procsSize = 0) ifTrue: [^self].
 
	html span with: [html strong: ('Average of Forms in a Process:' translateFor: self session user)].
	html output: ((formsSize/procsSize) asScaledDecimal: 1)  printString.