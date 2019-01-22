[![Build Status](https://travis-ci.org/brunobuzzi/OrbeonPersistenceLayer.svg?branch=master)](https://github.com/brunobuzzi/BpmFlow)
BPM Flow
=======================

An Open Source implementation of BPM standart using GemStone/S, Orbeon, Bizagi and Highcharts.<br>
![BpmFlow](https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LH4gGgyMb1_fhOg782r%2F-LWpVpKsPpMtJ-U3TCUS%2F-LWpVtYdqza6vnesL2ib%2Fimage.png?alt=media&token=7104d8e1-a20b-4281-b6b0-cb90c7dd1f4f)<br>
![BpmFlow](https://blobscdn.gitbook.com/v0/b/gitbook-28427.appspot.com/o/assets%2F-LH4gGgyMb1_fhOg782r%2F-LWpZBjJ6ZCi7C62mW7v%2F-LWpZEDQ_kQkzViuaeXg%2Fimage.png?alt=media&token=b4cdf06d-f4ef-4a84-a81c-94fc8d92bae8)<br>
The manuals of the Backoffice and Frontoffice Applications can be found here:<br>
https://bpmflow.gitbook.io/project/introduction

BPM packages for [GemStone/S](http://www.gemtalksystems.com/) ® implements the BPM standart. Each BPM model is created in [Bizagi Modeler](http://www.bizagi.com/es/productos/bpm-suite/modeler) ® and then exported as **XPDL** file.<br>The **XPDL** file is imported in the **BPM Meta Model Execution Engine** and it can be instantiated and executed inside **GemStone/S**.<br>
The **BPM application** can interact with other systems like [Orbeon](http://www.orbeon.com) ® or use Seaside components. <br>
Inside **Bizagi Modeler** if a task has the extended attribute -*seasideComponent*- then is a **Seaside** task if not then is an **Orbeon** form.<br> 
The execution engine will show a **Seaside** component or an **Orbeon** form depending on the task's definition in the **Bizagi Modeler**.

**Orbeon** is an optional application that interact with the BPM application (can be used or not).<br><br>

To install GemStone/S:<br>
https://github.com/GsDevKit/GsDevKit_home
