roles
rolesIn: aBpmEnvironment
	"Answer a collection of <BpmRole>s that the receiver is included for environment <aBpmEnvironment>.
	1) User can have direct roles through its <roles> collection.
	2) Or can inherit roles through <userGroups> collection."
	| directRoles inheritRoles |

	directRoles := roles select: [:eachRole | eachRole bpmEnvironment == aBpmEnvironment].

	inheritRoles := Set new.

	userGroups do: [:eachGroup | inheritRoles addAll: (eachGroup rolesSelect: [:eachRole | eachRole bpmEnvironment == aBpmEnvironment])].

	^directRoles, inheritRoles