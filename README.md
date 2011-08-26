---

+ title: IBM Installation Manager silent install samples
+ description: Sample Installation Manager silent install scripts.
+ author: Sean G Wilbur
+ tags: ibm, installation-manager, silent-install
+ created:  2011 Aug 26
+ modified: 2011 Aug 26

---

Installation Manager Silent Install
=========

 There are many cases when you may need to use a silent installation of one or more products. A few that I run into again and again are the need to install:

 *   Custom or old Context Roots (Namely for Jazz Migrations)
 *   Headless machines with no GUI
 *   Automated testing, laying down software to test against 

 The files themselves are straighforward to construct once you have a handle on the required properties. These examples are all for Jazz based products, 
 you can see where they use local respositories rather than the jazz.net public repositories as I have not figured out how to resolve the authentication
 in silent mode. Once that issue is resolved the only requirement will be a copy of the Installation Manager.


Usage
====

 Silient Install instructions:
   http://publib.boulder.ibm.com/infocenter/install/v1r4/index.jsp?topic=/com.ibm.silentinstall12.doc/topics/r_silent_inst_cmd_arg.html

TODO: Before running the installation command shown below, make sure this directory "installLocation" exists.

To install the Jazz Team Server, run the command below from the directory containing this IM response file and the 'userinstc' IM executable:

userinstc -dataLocation C:\tmp\silent-install\data -silent -showVerboseProgress -nosplash -input silent-install-server.xml

IBMIMc.exe -dataLocation "C:\Documents and Settings\All Users\Application Data\IBM\Installation Manager" -silent -showVerboseProgress -nosplash -input silent-install-server-localIM.xml

IBMIMc.exe -dataLocation "C:\Documents and Settings\All Users\Application Data\IBM\Installation Manager" -mode wizard -input silent-install-server-localIM.xml


 ** dataLocation
		http://publib.boulder.ibm.com/infocenter/install/v1r4/index.jsp?topic=/com.ibm.silentinstall12.doc/topics/r_app_data_loc.html

Windows Default:
C:\Program Files\IBM\IMShared

Linux Default
/opt/IBM/IMShared


---

Reference:
----------
 * [Installation Manager Information Center 1.4.x](http://publib.boulder.ibm.com/infocenter/install/v1r4/index.jsp)
