render subprocess
selectParentProcessToRender

	subProcess ifNil: [^self].

	subProcess := subProcess parentProcess