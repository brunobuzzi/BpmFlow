This class is used to set expected execution time of each task in a process diagram.

It is only used a warning message but it does NOT have any effect on the system. 
Is used as a visual warning to the final user.

value 				- the expected execution time (can be in days, hours or minutes). 
warningThreshold	- a number which details the warning threshold for the task. With 0.3(30%) value the warning it will turn to yellow after the current execution time is bigger than 30% the total execution time. 
calendar 			- default calendar <aBpmExceptionCalendar> to be used to calculate the current execution time.

The warning threshold can be viewed as:
0.7 - when 70% of value variable <value> is reached by the current execution time then the receiver enter in the Warning zone.
For example if value is 20 days and the threshold 0.7 --> after 14days a warning will be displayed to the user.