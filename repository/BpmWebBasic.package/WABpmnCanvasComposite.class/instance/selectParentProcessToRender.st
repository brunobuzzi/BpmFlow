render subprocess
selectParentProcessToRender

	subProcess ifNil: [^self].

	subProcess := nil