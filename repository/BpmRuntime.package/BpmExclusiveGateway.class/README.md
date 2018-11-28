Splitting

This type of Gateway divides the flow into two or more paths but the process flow will go down only one of these paths. Conditions are expressed as Gateway attributes and can be expressed in natural language or as formal expressions. The selection of the path to follow will be based on the evaluation of the conditions set for each path. They are evaluated one at a time, in the order in which they were defined in the Gateway (which doesn't mean that their corresponding paths are evaluated as displayed in the diagram) and the path corresponding to the first condition that evaluates to true will be selected. If none of the conditions is true, the process will be stuck in the Gateway. In this case, the use of default paths is suggested.


Merging

It merges the flow without making any synchronizations.