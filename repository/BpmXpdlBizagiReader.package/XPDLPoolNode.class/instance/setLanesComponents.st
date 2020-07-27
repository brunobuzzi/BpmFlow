component creation
setLanesComponents
	"The receiver add all subcomponents to each corresponding XPDLLane in <xpdlObjects> collection"

	lanes do: [:eachLane | 
		eachLane addAllXpdlObject: (workflow activitiesSelect: [:eachAct | eachLane rectangleIncludesActivity: eachAct])]