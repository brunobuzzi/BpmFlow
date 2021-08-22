Splitting

It is similar to an Inclusive Gateway. The difference lies in that it uses a single outgoing assignment within the Gateway instead of a set of conditions over the outgoing paths. The result is the same in the sense that one or more outgoing paths will be activated.

In general, one assignment has two parts: a condition and an action. When an assignment is executed, its condition is evaluated and if it is true, the action is performed; this action can be the updating a property of the process or a Data Object. In the case of a Complex Gateway, the outgoing assignment may refer to process data or its Data Objects and the status of its incoming paths (e.g. if the flow will come from a certain path in a certain process instance). For example, an outgoing assignment may evaluate process data and then select different sets of outgoing paths depending on the results of the evaluation. However, the outgoing assignment should ensure that at least one path will be chosen.

Merging

In this case, an incoming assignment is used when the flow reaches the Gateway. The condition may refer to the same data as in the Splitting behavior of the Complex Gateway (process data, Data Objects, etc.). If the condition evaluates to false, nothing happens except for the fact that the flow is stopped in the Gateway. If it evaluates to true, the action could be to let the flow continue or stop it.

Since the use of the Complex Gateway to merge paths can vary depending on the purpose for which it is used, modelers are recommended to use text annotations to inform the diagram readers about the behavior being assigned to the Gateway.

An example of use would be the discriminator pattern. In this pattern, there are two or more parallel tasks which are merged in a Complex Gateway. When one of the activities is completed, the following tasks can be started. It doesnt matter which activity is completed first. The other tasks are completed normally but they wont affect the process flow, that is to say, new instances of the following tasks will not be generated.