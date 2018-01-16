process
renderTransitionSubProcessDataOn: html for: aBpmArtifactInstance

	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('User' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance getUserName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('State' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: (aBpmArtifactInstance printState translateFor: self session user)]].
	"html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Previous Form' translateFor: self session user)].
		html strong with: [html output with: (anOrbeonFormTransition startFormName translateFor: self session user)]]."
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Form to Fill' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance getDefinitionName]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Initial Date' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance creationTime]].
	html div class: 'transition-data'; with: [
		html strong with: [html span with: ('Not implemented' translateFor: self session user)].
		html strong with: [html output "for: 'searchFields';" with: aBpmArtifactInstance creationTime]].

	self renderTransitionSummaryOn: html for: aBpmArtifactInstance.
	self renderTransitionActionsOn: html for: aBpmArtifactInstance.