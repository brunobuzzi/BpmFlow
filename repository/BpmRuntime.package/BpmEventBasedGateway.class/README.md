Wait for all events until the Timer finalize. When the Timer answer true then the Gateway is finalized.
If there is NO timer then wait for event until the process is finalized (similar to parallel).

Splitting

This type of Gateway requires the use of one or more catching Intermediate Events. The valid types of events are as follows:
    Message
    Timer
    Conditional
    Signal

Receive tasks can be used instead of Message events, but they can't be mixed. 
It should be pointed out that if none of the events specified occur, the process will be stuck. Therefore, a Timer event is recommended as an alternative.

Merging

It works in the same way as the Exclusive Gateway.
(It merges the flow without making any synchronizations)