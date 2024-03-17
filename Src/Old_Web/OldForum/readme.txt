~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
README.TXT  ~~  Part of Toast Forums
Copyright (c) 2000-2006 Headrush Media. (c) 2007 Appelsoft. All Rights Reserved.

This file may be not be reverse-engineered, redistributed or sold without prior
written authorization from Headrush Media (headrushmedia.com).  This copyright notice
must remain visible inside this file AT ALL TIMES.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Three easy steps to get your Toast Message Board up and running:

1.  Unzip the zip file into a temporary directory. The zip file password is should have
    been emailed to you when you downloaded the file.  Upload the files to a directory
    on your web server.
2.  Rename the data.mdb file to a different name.  After renaming the data.mdb file, open
    constants.asp and change the tstDBConnectString constant to reflect the new name.
    This is an extra security measure; see the SECURITY ALERT section below for details.
3.  Run "setup.asp" from the new directory.  Do this by opening your browser and typing
    in "http://www.yourwebserver.com/toastdirectory/setup.asp", replacing "yourwebserver.com"
    with the name of your website, and "toastdirectory" with the name of the directory that
    contains the Toast Forums files.

Some notes and things to consider:

SECURITY ALERT
--------------
  It is advisable to rename your data.mdb file to something else.  If you leave it named
  data.mdb in the default data subdirectory, it is very easy for a malicious person to 
  download the database and find out your admin password.  Rename the database file to
  something else, and then make sure and edit this line in constants.asp:

    tstDBConnectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("data\data.mdb") & ";"

  Change it to:

    tstDBConnectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("data\NewDatabaseNameHere.mdb") & ";"

  If your host has designated a specific directory to hold database files that is above
  your web root, it would be a good idea to move the data.mdb file to that location.  Simply
  change the path in the tstDBConnectString constant above to point to the new location.
  
  It is also advisable to remove setup.asp after completing Setup.  Setup will attempt to
  rename itself to setup.bak, but depending on your webserver's permissions it may not
  be successful.


FILE PERMISSIONS
----------------
  Toast Setup will make sure that two files are writable:  config.asp in the main Toast
  directory, and data.mdb in the data directory.  If these do not have appropriate write
  permissions, or they are read-only, Setup will let you know about it and make you fix
  it before continuing.  If you get errors during Setup, make sure that config.asp and
  data.mdb have at least Modify NTFS permissions for the IUSR_<machinename> account.  You
  might need to email your host and ask them to set these permissions for you.  You might
  also need to change the location of the config.asp file.  To do this, simply change the
  tstConfigFile in constants.asp to the correct path.


AFTER SETUP
-----------
  Setup will ask you to assign an Admin password during setup.  After Setup, you can log
  into the Admin area by going to "http://www.yourwebserver.com/toastdirectory/admin.asp",
  replacing "yourwebserver.com" with the name of your website, and "toastdirectory" with
  the directory you uploaded all the files to.  Log in as "admin" and the password you
  assigned during setup.

  You may want to modify the default Forum after you finish Setup.  To do this, login to
  the Admin area and click on "Manage Forums".

  You will probably want to go ahead and setup your own account on your board, so you can
  post messages under your name instead of "admin".  You can make yourself moderator of
  any forum by logging into the Admin area and selecting your username from the drop
  down Moderators list in the "Manage Forums" page.
  
SQL SERVER
----------
  Toast Forums 1.6 now officially supports SQL Server.  Follow these steps to get your
  SQL Server database up and running.
	1.  Using SQL Query Analyzer or any other SQL Server management tool, connect to the
		database you will be installing Toast Forums data into.
	2.  Open toast.sql (included in the toast16.exe self-extracting archive) and run it.
		This should create the database tables.
	3.  Use the Import Data command in SQL Server Enterprise Manager to import the data
		from the included Access database (data.mdb) into your new SQL Server database.
	4.  Change the tstDBConnectString constant in constants.asp to a valid connect string.
		An example is below:
  
		tstDBConnectString = "Provider=sqloledb;Network Library=DBMSSOCN;Data Source=xxx.xxx.xxx.xxx,1433;Initial Catalog=myDatabaseName;User ID=myUsername;Password=myPassword"
	
	5.  Change the tstSQLTrue and tstSQLDateDelimiter constants in constants.asp to the
		values below:
		
		Const tstSQLTrue = 1
		Const tstSQLDateDelimiter = "'"

UPGRADING FROM A PREVIOUS BUILD OF TOAST FORUMS 1.6
---------------------------------------------------
  If you are upgrading from a previous build of Toast Forums 1.6, use the steps below.  If
  you are upgrading from Toast Forums 1.5, see the section below.
  
	1.  Extract the files from the toast16.zip file to a local temp directory.
	
	2.  Upload admin.asp, shared.asp, toast.asp, \toastedit\toastedit.html and
		\toastedit\HeadrushMedia.WebControls.ToastEdit.js over your existing old
		1.6 files.
		
	3.  Upload the file \admin\news.html over your existing file.

UPGRADING FROM TOAST FORUMS 1.5
-------------------------------
  Instructions for upgrading from 1.5 to 1.6xx is available here:
  http://www.toastforums.com/support/docs/upgradefrom15.txt
  

WHERE TO GO FOR HELP
--------------------
  If you need further assistance, visit http://www.toastforums.com for the latest news and FAQs.
  Be sure and browse through the support forum and use the Search link to search for your
  answer. You may also send email to support@toastforums.com.