test
testProcessesInstancesHolderSize
	"Check the size of <processInstances> and <processInstancesSet> in <aBpmProcessDefinition>"

	testRoot environmentsDo: [:environment |
		environment getAllProcessDefinitions do: [:eachProcDef | 
				self assert: eachProcDef processInstancesSize equals: eachProcDef processInstancesSetSize.
		].
	].

	"theorically it could be a clash of <id> in <processInstances> collection if for the same <BpmProcessDefinition> answer the same number [id := Lag1MwcRandom new integer].
	Lag1MwcRandom new integer - answer a nonnegative 32bit integer. (max 4.294.967.295)

	The probability of a clash depends on the number of <BpmProcessInstances>:
    It can be calculated with (it take to much time to calculate):
|max instances p m |

max := 4294967295.
instances := 100000.
m := 1.
1 to: instances - 1 do: [:k | m := m * (1 - (k/max))].
p := 1 - m.
p asFloat.

A more efficient way us (if answer false --> a clash has been produced):
| numbers instances clashes |
numbers := Set new.
instances := 900000.
1 to: instances do: [:each | numbers add: Lag1MwcRandom new integer  ].
clashes := instances - numbers size.
clashes

With 100000 is pretty possible to have a clash --> a new issue to control the clash of ids should be created.
"