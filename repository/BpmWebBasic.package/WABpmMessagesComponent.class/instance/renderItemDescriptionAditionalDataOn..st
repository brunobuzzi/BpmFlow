other
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Sent Date:' translateIn: self session)].
	html output: selectedLateralItem sentTime.
	html span with: [html strong: ('Send External Mail:' translateIn: self session)].
	html output: selectedLateralItem sendExternalMail.