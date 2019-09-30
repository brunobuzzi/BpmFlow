visiting
visitXpdlPackage: aXPDLPackageNode
	"The receiver start visiting the XPDL package <aXPDLPackageNode> and from this XPDL element all way down"

	aXPDLPackageNode pools do: [:xpdlPoolNode | 
		currentWorkflow := xpdlPoolNode workflow.
		xpdlPoolNode acceptVisitor: self.
		(currentWorkflow activities select: [:each | each hasNoInOrOutTransitions]) do: [:each | self addIsolatedActivityItemFor: each].
	].

	self generateAdditionalReportItems.