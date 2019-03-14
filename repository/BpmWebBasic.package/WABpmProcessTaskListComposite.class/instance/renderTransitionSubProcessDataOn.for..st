other
renderTransitionSubProcessDataOn: html for: aBpmArtifactInstance

	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('User' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance getUserName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('State' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: (aBpmArtifactInstance printState translateIn: self session)]].
	"html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Previous Form' translateIn: self session)].
		html strong with: [html output with: (anOrbeonFormTransition startFormName translateIn: self session)]]."
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Form to Fill' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance getDefinitionName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Initial Date' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance creationTime]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Not implemented' translateIn: self session)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance creationTime]].

	self renderTransitionSummaryOn: html for: aBpmArtifactInstance.
	self renderTransitionActionsOn: html for: aBpmArtifactInstance.