BPM Flow
=======================

An implementation of BPM standart using GemStone/S and Orbeon.

The manuals of the Backoffice and Frontoffice Applications can be found here:<br>
https://brunobuzzi.gitbooks.io/bpm-using-orbeon-and-gemstone-s/content/

BPM packages for [GemStone/S](http://www.gemtalksystems.com/) ® implements the BPM standart. Each BPM model is created in [Bizagi Modeler](http://www.bizagi.com/es/productos/bpm-suite/modeler) ® and then exported as **XPDL** file.<br>The **XPDL** file is imported in the **BPM Meta Model Execution Engine** and it can be instantiated and executed inside **GemStone/S**.<br>
The **BPM application** can interact with other systems like [Orbeon](http://www.orbeon.com) ® or use Seaside components. <br>
Inside **Bizagi Modeler** if a task has the extended attribute -*seasideComponent*- then is a **Seaside** task if not then is an **Orbeon** form.<br> 
The execution engine will show a **Seaside** component or an **Orbeon** form depending on the task's definition in the **Bizagi Modeler**.

**Orbeon** is an optional application that interact with the BPM application (can be used or not).<br><br>

To install GemStone/S:<br>
https://github.com/GsDevKit/GsDevKit_home
