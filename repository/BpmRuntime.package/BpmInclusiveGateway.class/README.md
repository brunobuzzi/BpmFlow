Splitting

Its behavior is similar to the Exclusive Gateway in the sense that it allows for the creation of multiple alternative paths based on conditions imposed on those paths. The difference lies in that more than one path can be chosen, that is, all those whose corresponding conditions evaluate to true. In this case, the use of default paths is recommended in order to prevent the process from getting stuck in any situation.

Merging

It works similarly to a Parallel Gateway merging in the sense that it synchronizes all incoming paths. Unlike the Parallel Gateway, it only synchronizes those paths that actually reach the Gateway, which are not necessarily all the incoming paths in the diagram; this could be specific to each process instance.