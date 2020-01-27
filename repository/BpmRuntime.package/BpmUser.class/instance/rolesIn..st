bpm environments
rolesIn: aBpmEnvironment
	"Answer a collection of <BpmRole>s that the receiver is included"
	| directRoles inheritRoles |

	directRoles := roles select: [:eachRole | eachRole bpmEnvironment == aBpmEnvironment].

	inheritRoles := Set new.

	userGroups do: [:eachGroup | inheritRoles addAll: (eachGroup roles select: [:eachRole | eachRole bpmEnvironment == aBpmEnvironment])].

	^directRoles, inheritRoles