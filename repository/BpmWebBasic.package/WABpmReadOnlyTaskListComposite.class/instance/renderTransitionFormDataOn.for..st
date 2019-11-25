other
renderTransitionFormDataOn: html for: aBpmArtifactInstance

	self renderFormDataOn: html for: aBpmArtifactInstance.

	self renderTransitionSummaryOn: html for: aBpmArtifactInstance.

	"this is used by backoffice users with <WABpmProcessRadarComposite>"
	aBpmArtifactInstance renderHtmlOn: html for: self. "render <anOrbeon> or <aSeaside> link"