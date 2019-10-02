render subprocess
selectParentProcessToRender

	subProcess ifNil: [^self].

	subProcess := subProcess parentProcess.

	subProcess isTopProcess ifTrue: [subProcess := nil].

	mainPanel selectedSubProcess: subProcess