---

+ title: IBM Installation Manager silent install samples
+ description: Sample Installation Manager silent install scripts.
+ author: Sean G Wilbur
+ tags: ibm, installation-manager, silent-install
+ created:  2011 Aug 26
+ modified: 2014 June 10

---

#### Installation Manager Silent Install
=========

 There are many cases when you may need to use a silent installation of one or more products. A few that I run into again and again are the need to install:

 *   Custom or old Context Roots (Namely for Jazz Migrations)
 *   Headless machines with no GUI
 *   Automated testing, laying down multiple copies of different version software to test against on a single machine (N.B. the use of the dataLocation switch is key here to avoid problems with a shared IMData directory and conflicts this may generate )

 The files themselves are straighforward to construct once you have a handle on the required properties. These examples are all for Jazz based products, 
 you can see where they use local respositories rather than the jazz.net public repositories as I have not figured out how to resolve the authentication
 in silent mode. Once that issue is resolved the only requirement will be a copy of the Installation Manager.

#### Installation Manager Version Compatability

I don't claim or even try to test these with different or older versions, check the available branches named according to version for any previous iterations.

#### Usage
====

 Silent Install instructions:  
   http://publib.boulder.ibm.com/infocenter/install/v1r4/index.jsp?topic=/com.ibm.silentinstall12.doc/topics/r_silent_inst_cmd_arg.html

TODO: Before running the installation command shown below, make sure this directory "installLocation" exists.

To install the Jazz Team Server, run the command below from the directory containing this IM response file and the 'userinstc' IM executable:

Basic example on Unix/Linux, with root (or sudo) access, and using the default data location:

    sudo ./IBMIM -silent -acceptLicense -showVerboseProgress -nosplash -input silent-install-server-localIM.xml

Windows example of a non-root installation:	

	userinstc -dataLocation C:\tmp\silent-install\data -silent -showVerboseProgress -nosplash -input silent-install-server.xml



 *Default dataLocation*
		http://publib.boulder.ibm.com/infocenter/install/v1r4/index.jsp?topic=/com.ibm.silentinstall12.doc/topics/r_app_data_loc.html

Linux/Unix

    /var/ibm/InstallationManager

Windows

    ?

*IM Shared Location:*

Windows Default:  
C:\Program Files\IBM\IMShared

Linux Default  
/opt/IBM/IMShared

#### Public IBM Rational Repositories

These require authentication with an IBM ID but they are exposed publically on the internet. Check each product directory for a README with a list of public directories I may have included.


#### Reference:

 * [IBM Installation Manager Support Home]()
 * [IBM Installation Manager 1.7 Information Center](http://pic.dhe.ibm.com/infocenter/install/v1r7/topic/com.ibm.cic.agent.ui.doc/helpindex_imic.html)
 * [ibm.com - Installation Manager and Packaging Utility download links](http://www-01.ibm.com/support/docview.wss?uid=swg27025142)
