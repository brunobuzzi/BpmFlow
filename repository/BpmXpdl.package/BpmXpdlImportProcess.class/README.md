This class is used to create multiple <BpmProcessDefinition> instances form XPDL files.
The main purpose of this class is the orchestration when multi process are related to each other (subprocesses or process with send task nodes).
Each process (or XPDL file) is mapped to <anApplication> in <indexXpdlFileMapper>.

<processGenerator>  an instance of <BpmProcessGenerator>.
this inst var actually create the <BpmProcessDefinition> from XPDL files.

<xpdlReader> 
used to execute xPath queries on XPDL files.

<applications>              
Granted applications for the current user.

<indexApplicationMapper>
Key is an integer and the value is the name of an application.

<indexXpdlFileMapper>
Key is an integer and the value is XPDL file name.

<fileFormatErrors>
Key is an integer and value is string with the file format error description.

<bpmEnvironment>