other
model: aModel

	"the parent component has changed the model selection --> <subProcess> is reset"
	(model == aModel) ifFalse: [subProcess := nil].

	^super model: aModel