other
acceptPoolNode: aXPDLPoolNode

	aXPDLPoolNode lanes do: [:xpdlLaneNode | xpdlLaneNode acceptVisitor: self].

	aXPDLPoolNode workflow acceptVisitor: self