code generation
create_testClass
	"Create a new GS Class subclass of <BpmProcessExecutionTest>. The new test class will be like:
(
BpmProcessExecutionTest subclass: 'Proc3215866310ProcessExecutionTest'
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''
	category: 'BpmRuntime_Tests'
	options: #()
)
	Where <3215866310> is the id of the <BpmProcessInstance>."
	| arguments |

	arguments := OrderedCollection new.
	arguments add: self getTestClassName;
		add: #(); "instVarNames:"
		add: #(); "classVars:"
		add: #(); "classInstVars:"
		add: #(); "poolDictionaries:"
		add: ''; "inDictionary:"
		add: 'BpmRuntime_Tests'; "category:"
		add: #(). "options:"


	BpmProcessExecutionTest perform: #subclass:instVarNames:classVars:classInstVars:poolDictionaries:inDictionary:category:options: withArguments: arguments asArray.