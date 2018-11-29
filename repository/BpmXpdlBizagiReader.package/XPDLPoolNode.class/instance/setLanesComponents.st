component creation
setLanesComponents
	"The receiver add all subcomponents to each corresponding XPDLLane in <xpdlObjects> collection"
	| activities |

	activities := self activities.

	lanes do: [:eachLane | 
		eachLane addAllXpdlObject: (activities select: [:eachAct | eachLane rectangleIncludesActivity: eachAct])]