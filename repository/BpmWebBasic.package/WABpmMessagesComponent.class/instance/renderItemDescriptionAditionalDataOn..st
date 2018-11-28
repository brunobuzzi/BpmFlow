other
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Sent Date:' translateFor: self session user)].
	html output: selectedLateralItem sentTime.
	html span with: [html strong: ('Send External Mail:' translateFor: self session user)].
	html output: selectedLateralItem sendExternalMail.