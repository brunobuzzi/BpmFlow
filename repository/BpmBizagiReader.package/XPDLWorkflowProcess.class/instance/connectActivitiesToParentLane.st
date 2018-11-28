connecting
connectActivitiesToParentLane
	"The receiver connect/set all XPDL subcomponents for each corresponding XPDL Lane.
	Also set the role for each transition"

	self lanes do: [:eachLane | "set the role of each transition -each activity inTransitions-"
		eachLane xpdlObjects: (self activities select: [:eachAct | eachLane absoluteRectangleIncludesActivity: eachAct]).
		"add the rol for each transition"
		eachLane xpdlObjects do: [:eachAct | 
			eachAct inTransitions do: [:eachTr | eachTr roles: (OrderedCollection with: eachLane getName)]]
	].