other
visitXpdlPackage: aXPDLPackageNode

	aXPDLPackageNode pools do: [:xpdlPoolNode | xpdlPoolNode acceptVisitor: self].

	self generateAdditionalReportItems