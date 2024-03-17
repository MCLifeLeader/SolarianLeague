<%
	'This is the connect string to the database.  It is advisable to rename your data.mdb file to something else.
	'If you leave it named data.mdb in the default data subdirectory, it is very easy for a malicious person to 
	'download the database and find out your admin password.  Rename the data.mdb file and then change the filename
	'in the connect string below.
	Dim tstDBConnectString

	' Connection string for Access database file:
	tstDBConnectString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("data\SoliDBFile.mdb") & ";"
	
	' Connection string for MSSQL database:
	'tstDBConnectString = "Provider=sqloledb;Network Library=DBMSSOCN;Data Source=localhost,1433;Initial Catalog=myDatabaseName;User ID=myUsername;Password=myPassword"

	'The following are SQL specific.  Certain things about a SQL statement will be different when using Access or SQL Server.
	'If you use SQL server, you should comment out (') the lines that say "Use for MSAccess" and remove the comment
	'tag for the lines that say "User for SQL Server". Vice versa if you use Access of course!

	Const tstSQLTrue = -1 'Use for MSAccess
	'Const tstSQLTrue = 1 'Use for SQL Server
	
	Const tstSQLDateDelimiter = "#" 'Use for MSAccess
	'Const tstSQLDateDelimiter = "'" 'Use for SQL Server

	'This value is provided in case you need to change the path or name of the config.asp file.  This file must be writable, so
	'if your host only allows you to place writable files in a certain directory, you can move the config.asp file to that directory
	'and change the path here.
	Dim tstConfigFile
	tstConfigFile = Server.MapPath("config.asp") 'path to config.asp

	'****************************************************************************************************************
	'Everything below this point is ADVANCED CONFIGURATION and should not be modified unless you know EXACTLY what you
	'are doing.  Modifying the wrong values could cause Toast to stop functioning completely!
	'****************************************************************************************************************

	Const tstUniqueBoardKey = "T16" 'unique identifier for this board.  This constant is made available so multiple Toast boards can be run under the same Web "application".  The shorter the better...try to keep it under 5 characters.
	Const tstDebugMode = False
	
	'List of Emoticons and their replacements when a new post is made.  First array is an array of keystrokes, and the
	'second array is the list of the respective replacements.
	Dim tstEmoticonKeystrokes, tstEmoticonReplacements
	tstEmoticonKeystrokes = Array("(})", "(v)", "({)", "(^)", ":D", ":B", ":?", "8)", ":'(", "8O", "(6)", "(!)", ";(", "(i)", "(lol)", ":@", "(mrgreen)", ":|", "(?)", ":P", ":$", "(roll)", ":(", ":)", ":o", "};)", ";)")
	tstEmoticonReplacements = Array("<img src=""emoticons/icon_arrow.gif"">", "<img src=""emoticons/icon_arrowd.gif"">", "<img src=""emoticons/icon_arrowl.gif"">", "<img src=""emoticons/icon_arrowu.gif"">", "<img src=""emoticons/icon_biggrin.gif"">", "<img src=""emoticons/icon_cheesygrin.gif"">", "<img src=""emoticons/icon_confused.gif"">", "<img src=""emoticons/icon_cool.gif"">", "<img src=""emoticons/icon_cry.gif"">", "<img src=""emoticons/icon_eek.gif"">", "<img src=""emoticons/icon_evil.gif"">", "<img src=""emoticons/icon_exclaim.gif"">", "<img src=""emoticons/icon_frown.gif"">", "<img src=""emoticons/icon_idea.gif"">", "<img src=""emoticons/icon_lol.gif"">", "<img src=""emoticons/icon_mad.gif"">", "<img src=""emoticons/icon_mrgreen.gif"">", "<img src=""emoticons/icon_neutral.gif"">", "<img src=""emoticons/icon_question.gif"">", "<img src=""emoticons/icon_razz.gif"">", "<img src=""emoticons/icon_redface.gif"">", "<img src=""emoticons/icon_rolleyes.gif"">", "<img src=""emoticons/icon_sad.gif"">", "<img src=""emoticons/icon_smile.gif"">", "<img src=""emoticons/icon_surprised.gif"">", "<img src=""emoticons/icon_twisted.gif"">", "<img src=""emoticons/icon_wink.gif"">")
	
	'Set this value to false if you are running multiple boards on different sites that share the same database.
	Const tstCacheForumList = True
	
	'HTML that is rendered for downlevel browsers (any browser other than IE 5.5+).  <!--*TextBoxName*--> is replaced with the name of the
	'textbox, and <!--*TextBoxValue*--> is replaced with the value.
	Const tstToastEditDownlevelHTML = "<textarea cols=""70"" rows=""10"" name=""<!--*TextBoxName*-->""><!--*TextBoxValue*--></textarea><br><font color=""red"">If you were using Internet Explorer 5.5 or greater, you would be able to edit your posts using different fonts, colors and emoticons!  <a href=""http://www.microsoft.com/ie"" target=""_blank""><font color=""red"" style=""text-decoration:underline;"">Get Internet Explorer</font></a> now!</font>"
	
	'This is the path to the skins directory, relative to toast.asp.
	Const tstSkinsPath = "skins"
	
	'This is the path to the admin directory, relative to admin.asp.
	Const tstAdminPath = "admin"

	'This is the path to the toastedit directory, relative to admin.asp.
	Const tstToastEditPath = "toastedit"
	
	'This is the ProgID of the FileSystemObject component.  Some webhosts have disabled the default FileSystemObject and replaced it with
	'a third party FSO that limits scripts to your directory on the server.  If this is the case, simply modify this constant to use the
	'correct progID.  The third party FSO component must be fully compatible with the Microsoft FSO component to work.
	Const tstFileSystemObjectProgID = "Scripting.FileSystemObject"
	
	'This is the Session Timeout of all Toast Forums scripts.  Default is 20 (minutes).
	Const tstSessionTimeout = 20

	'This is the Active User Timeout.  This is how long before the Active user list is cleaned up, in minutes.
	Const tstActiveUserCleanupTimeout = 1

	'This is the Alphanumeric Username check.  Make it False to disable alphanumeric username check during registration.
	Const tstAlphanumericUsernameCheck = False
	
	'These are the names of the two major scripts, by default called toast.asp and admin.asp.  Both scripts can be renamed to whatever you
	'want, but these variables must also be changed or the scripts will not work with each other correctly.

	Const tstToastScriptName = "toast.asp"
	Const tstAdminScriptName = "admin.asp"

	'Cursor type to use when reading or updating the database.  This value should only be modified if you are getting a
	'"Microsoft Cursor Engine" error.  Instead of modifying this value, it is recommended that you install the
	'latest MDAC from Microsoft on your server, found at: http://www.microsoft.com/data
	'Values are:
	'		   -1 = Use default Cursor type (recommended for tstReadOnlyCursorType)
	'			0 = adOpenForwardOnly
	'			1 = adOpenKeyset (recommended for tstUpdateCursorType)
	'			2 = adOpenDynamic
	'			3 = adOpenStatic (try this next)
	Const tstReadOnlyCursorType = 2
	Const tstUpdateCursorType = 1

	'Cursor location to use when reading or updating the database.  This value should only be modified if you are getting a
	'"Microsoft Cursor Engine" error.  Instead of modifying this value, it is recommended that you install the
	'latest MDAC from Microsoft on your server, found at: http://www.microsoft.com/data
	'Values are:
	'		   -1 = Use whatever default Cursor type your webserver provides (do not use this cursor location for tstReadOnlyCursorLocation)
	'			1 = adUseNone (Very bad for performance, may not even be supported)
	'			2 = adUseServer (only use for tstUpdateCursorLocation; do not use this cursor location for tstReadOnlyCursorLocation)
	'			3 = adUseClient (recommended for tstReadOnlyCursorLocation)
	Const tstReadOnlyCursorLocation = 3
	Const tstUpdateCursorLocation = 3

	'Lock type to use when reading or updating the database.  This value should only be modified if you are getting a
	'"Microsoft Cursor Engine" error.  Instead of modifying this value, it is recommended that you install the
	'latest MDAC from Microsoft on your server, found at: http://www.microsoft.com/data
	'Values are:
	'		  -1 = Use whatever default Lock type your webserver provides (do not use this lock type for tstUpdateLockType)
	'			1 = adLockReadOnly
	'			2 = adLockPessimistic (probably won't work with Access database)
	'			3 = adLockOptimistic (recommended for tstUpdateLockType)
	Const tstReadOnlyLockType = 1
	Const tstUpdateLockType = 3

	Const tstNullDate = "1900-01-01 00:00:00"
	Const tstSQLFalse = 0


		
	'The following constants are for the Database schema.  You may change table names, field names, and field lengths.  The "Friendly"
	'Constants are the friendly names of the fields that a user would see during a Verify Error.

	'For the Forum table
	Const tstdbForumTable = "tstdb_Forum"
	Const tstdbForumFieldID = "ID"
	Const tstdbForumFieldCategoryID = "CategoryID"
	Const tstdbForumFieldModeratorID = "ModeratorID"
	Const tstdbForumFieldName = "ForumName"
	Const tstdbForumFieldNameFriendly = "Forum Name"
	Const tstdbForumFieldNameLen = 100
	Const tstdbForumFieldDescription = "Description"
	Const tstdbForumFieldDescriptionFriendly = "Description"
	Const tstdbForumFieldDescriptionLen = 255
	Const tstdbForumFieldGuestAccess = "GuestAccess"
	Const tstdbForumFieldMemberAccess = "MemberAccess"
	Const tstdbForumFieldTopicCount = "TopicCount"
	Const tstdbForumFieldPostCount = "PostCount"
	Const tstdbForumFieldLastPostDate = "LastPostDate"
	Const tstdbForumFieldDeleted = "Deleted"

	'For the Post table (holds Topics AND replies)
	Const tstdbPostTable = "tstdb_Post"
	Const tstdbPostFieldID = "ID"
	Const tstdbPostFieldForumID = "ForumID"
	Const tstdbPostFieldTopicID = "TopicID"
	Const tstdbPostFieldMemberID = "MemberID"
	Const tstdbPostFieldGuestName = "GuestName"
	Const tstdbPostFieldGuestNameFriendly = "Guest Name"
	Const tstdbPostFieldGuestNameLen = 20
	Const tstdbPostFieldSubject = "Subject"
	Const tstdbPostFieldSubjectFriendly = "Subject"
	Const tstdbPostFieldSubjectLen = 100
	Const tstdbPostFieldIcon = "Icon"
	Const tstdbPostFieldMessage = "Message"
	Const tstdbPostFieldMessageFriendly = "Message"
	Const tstdbPostFieldMessageLen = 8192
	Const tstdbPostFieldPostDate = "PostDate"
	Const tstdbPostFieldModifyDate = "ModifyDate"
	Const tstdbPostFieldActive = "Active"
	Const tstdbPostFieldDeleted = "Deleted"
	Const tstdbPostFieldTopic = "Topic"
	Const tstdbPostFieldMailNotice = "MailNotice"
	Const tstdbPostFieldReplyCount = "ReplyCount"
	Const tstdbPostFieldLastReplyDate = "LastReplyDate"
	Const tstdbPostFieldHits = "Hits"

	'For the member table
	Const tstdbMemberTable = "tstdb_Member"
	Const tstdbMemberFieldID = "ID"
	Const tstdbMemberFieldFName = "FName"
	Const tstdbMemberFieldFNameFriendly = "First Name"
	Const tstdbMemberFieldFNameLen = 20
	Const tstdbMemberFieldLName = "LName"
	Const tstdbMemberFieldLNameFriendly = "Last Name"
	Const tstdbMemberFieldLNameLen = 20
	Const tstdbMemberFieldUsername = "Username"
	Const tstdbMemberFieldUsernameFriendly = "Username"
	Const tstdbMemberFieldUsernameLen = 16
	Const tstdbMemberFieldPassword = "Password"
	Const tstdbMemberFieldPasswordFriendly = "Password"
	Const tstdbMemberFieldPasswordLen = 12
	Const tstdbMemberFieldEmail = "Email"
	Const tstdbMemberFieldEmailFriendly = "Email Address"
	Const tstdbMemberFieldEmailLen = 100
	Const tstdbMemberFieldHideEmail = "HideEmail"
	Const tstdbMemberFieldICQ = "ICQ"
	Const tstdbMemberFieldICQFriendly = "ICQ Number"
	Const tstdbMemberFieldICQLen = 25
	Const tstdbMemberFieldHomepage = "Homepage"
	Const tstdbMemberFieldHomepageFriendly = "Homepage"
	Const tstdbMemberFieldHomepageLen = 100
	Const tstdbMemberFieldSignature = "Signature"
	Const tstdbMemberFieldSignatureFriendly = "Signature"
	Const tstdbMemberFieldIP = "IP"
	Const tstdbMemberFieldSkin = "Skin"
	Const tstdbMemberFieldIncludeSignature = "IncludeSignature"
	Const tstdbMemberFieldNotifyDefault = "NotifyDefault"
	Const tstdbMemberFieldPostCount = "PostCount"
	Const tstdbMemberFieldLastLoginDate = "LastLoginDate"
	Const tstdbMemberFieldLastPostDate = "LastPostDate"

	'For the Group table
	Const tstdbGroupTable = "tstdb_Group"
	Const tstdbGroupFieldID = "ID"
	Const tstdbGroupFieldName = "Name"
	Const tstdbGroupFieldBuiltIn = "BuiltIn"

	'For the Member-Group Link table
	Const tstdbMemberGroupTable = "tstdb_MemberGroupLink"
	Const tstdbMemberGroupFieldID = "ID"
	Const tstdbMemberGroupFieldMemberID = "MemberID"
	Const tstdbMemberGroupFieldGroupID = "GroupID"

	'For the Totals table
	Const tstdbTotalsTable = "tstdb_Totals"
	Const tstdbTotalsFieldID = "ID"
	Const tstdbTotalsFieldPostCount = "PostCount"
	Const tstdbTotalsFieldUserCount = "UserCount"

	'For the Info table
	Const tstdbInfoTable = "tstdb_Info"
	Const tstdbInfoFieldID = "ID"
	Const tstdbInfoFieldDBVersion = "DBVersion"
%>
