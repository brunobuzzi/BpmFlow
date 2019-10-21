execution
resumeProcessWithException: aCodeEvaluationException
	"The receiver switch the <state> to <running> with <exception>.
	Some <BpmBlockCode> has failed or answer an incorrect type"
	| exceptionState |

	self registerFailedEvaluation: aCodeEvaluationException.
	exceptionState := BpmRunningWithExceptionState newFor: self user: nil.
	exceptionState exception: aCodeEvaluationException.

	^states add: exceptionState