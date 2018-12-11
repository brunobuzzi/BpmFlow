other
visitXpdlPackage: aXPDLPackageNode

	aXPDLPackageNode pools do: [:xpdlPoolNode | 
		currentWorkflow := xpdlPoolNode workflow.
		xpdlPoolNode acceptVisitor: self].

	self generateAdditionalReportItems