<%
'This file includes customizable code that you may modify freely.  The board will use the tstSendMail function
'whenever it needs to send an email.  The board also calls the functions below when certain events occur,
'so you may use these functions as events to do more customization to your board.
'
'Incidentally, you may also retrieve any configuration parameters from the config.asp file, like this:
'
'strBoardTitle = shrGetConfig("tstcfgBoardTitle")
'
'strBoardTitle would now hold the name of the Board.
'
'You may also display your own Error Messages or Information Messages using these two functions:
'
'		tstDoError strError
'		tstDoMessage strMessage
'
'These functions will stop all processing and display the message using the friendly Toast Forums
'error or info screens.

Function tstSendMail(strHost, strFromName, strFromAddress, strTo, strSubject, strMessage)
Dim msMail
'This function is provided so you can customize how e-mails are sent.  Do not change the parameters
'that are passed to the sendmail function.  You can customize how the actual function works, however,
'to fit your needs and your mail sender.  For even more security, you should probably rename this
'file and then change the INCLUDE statement in the main script file to use the new name.
'Many popular email component examples are provided.  These are not guaranteed to work with your
'environment, so you may need to tweak the code a bit.

strMessage = Replace(strMessage, vbCrLf, "<BR>") 'Converts line breaks to <BR> tags.

Select Case shrGetConfig("tstcfgEmailComponent")
	Case "CDONTS"
		'When using IIS's built in CDONTS object:
		Set msMail = CreateObject("CDONTS.NewMail")
		With msMail
			.BodyFormat = 0 'Set to 0 for HTML email, 1 for plain text.
			.MailFormat = 0 'Set to 0 for HTML email, 1 for plain text.
			.To = strTo
			.From = strFromName & " <" & strFromAddress & ">"
			.Subject = strSubject
			.Body = strMessage
			.Send
		End With
	Case "CDOSYS"
		'When using IIS's build in CDO object:
		Dim conf
		Set conf = Server.CreateObject("CDO.Configuration")
		With conf.Fields
			.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = strHost
			.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport")  = 25
			.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
			.Item("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
			.Update 
		End With
		Set msMail = Server.CreateObject("CDO.Message")
		With msMail
			Set .Configuration = conf
			.From = strFromName & " <" & strFromAddress & ">"
			.To = strTo
			.Subject = strSubject
			.HTMLBody = strMessage
			.Send
		End With
	Case "AspMail"
		'When using AspMail (http://www.serverobjects.com)
		Set msMail = Server.CreateObject("SMTPsvg.Mailer")
		With msMail
			.ContentType = "text/html"
			.RemoteHost = strHost
			.FromName = strFromName
			.FromAddress = strFromAddress
			.AddRecipient "", strTo
			.Subject = strSubject
			.BodyText = strMessage
			.SendMail
		End With
	Case "AspEmail"
		'When using AspEmail 5.0 (http://www.aspemail.com):
		Set msMail = Server.CreateObject("Persits.MailSender")
		With msMail
			.Host = strHost
			.From = strFromAddress
			.FromName = strFromName
			.AddAddress strTo
			.Subject = strSubject
			.Body = strMessage
			.IsHTML = True
			.Send
		End With
	Case "Geocel"
		'When using Geocel DevMailer 1.5 (http://www.geocel.com):
		Set msMail = Server.CreateObject("Geocel.Mailer")
		With msMail
			.AddServer strHost, 25
			.FromAddress = strFromAddress
			.FromName = strFromName
			.AddRecipient strTo, ""
			.Subject = strSubject
			.Body =	strMessage
			.ContentType = "text/html"
			.LogLevel = 4
			.LogFile = "c:\temp\emailcoms\geocel.log"
			.Send
		End With
	case "JMail"
		'When using JMail (http://tech.dimac.net)
		Set msMail = Server.CreateOBject("JMail.Message")
		With msMail
			.From = strFromAddress
			.FromName = strFromName
			.AddRecipient strTo
			.Subject = strSubject
			.HTMLBody = strMessage
			.Send(strHost)
		End With
	Case "DynuEmail"
		'When using DynuEmail (http://www.dynu.com)
		Set msMail = Server.CreateObject("Dynu.Email")
		With msMail
			.Host = strHost
			.IsHTML = True
			.From = strFromAddress
			.FromName = strFromName
			.AddAddress strTo
			.Subject = strSubject
			.Body = strMessage
			.Send()
		End With
	Case "EasyMail"
		'When using EasyMail 5 (http://www.easymailobjects.com)
		Set msMail = Server.CreateObject("EasyMail.SMTP.5") 
		With msMail
			.MailServer = strHost
			.BodyFormat = 1 'For HTML
			.FromAddr = strFromAddress
			.AddRecipient "", strTo, 1
			.Subject = strSubject
			.Send()
		End With
	Case "SA-SMTPMail"
		'When using SA-SMTPMAIL (http://www.aspstudio.com)
		Set msMail = Server.CreateObject("SoftArtisans.SMTPMail")
		With msMail
			.RemoteHost = strHost
			.FromAddress = strFromAddress
			.FromName = strFromName
			.AddRecipient strTo
			.Subject = strSubject
			.HTMLText = strMessage
			.Wordwrap = True
			.SendMail
		End With	
	Case "ocxQmail"
		'When using ocxQmail (http://www.flicks.com/ocxQmail)
		Set msMail = Server.CreateObject("ocxQmail.ocxQmailCtrl.1") 
		msMail.XHeader "Content-Type", "text/html; charset=""iso-8859-1"""
		msMail.Q strHost, strFromName, strFromAddress, "", "", strTo, "", "", "", strSubject, strMessage
	Case "Dundas"
		'When using Dundas Mailer (http://www.aspalliance.com)
		Set msMail = Server.CreateObject("Dundas.Mailer")
		With msMail
			.SMTPRelayServers = strHost
			.FromAddress = strFromAddress
			.FromName = strFromName
			.TOs.add strTo
			.Subject = strSubject
			.Body = strMessage
			.Wordwrap = True
			.SendMail
		End With	
	End Select

	Set msMail = Nothing

End Function

'----------------------------------------------------------------------------------------

Sub tstBeforeDisplayPage(ByRef strDisplayPage)
'This event happens before every page is written to the client.  strDisplayPage contains the complete Page that is about to be written.
'This event happens right before all special Global tags are replaced, so if you insert any one of the special varibles in strDisplayPage,
'it will be correctly parsed before being written to the client.
'
'This function should NOT be removed if you are not using it, or it will generate a runtime error.

	'Do any string manipulation on strDisplayPage here.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeNewTopic(ByRef intForumID, ByRef intMemberID, ByRef strGuestName, ByRef strIcon, ByRef strSubject, ByRef strMessage, ByRef intMailNotice)
'This event happens before a New Topic is inserted into the database.  If you change these parameters, they will be changed before 
'being inserted.  Also, you can return an error message that will be displayed to the user and will cancel the topic.  Just set
'tstBeforeNewTopic to the error message.  A description of parameters follows:
'
'intForumID:  The ID of the Forum this topic will be posted to.
'intMemberID:  This is the ID of the member making the Topic.  Will be 0 if a Guest made the Topic.
'strGuestName:  The name of the Guest, if a Guest made the Topic.  Will be blank if a Member made the Topic
'strIcon:  The number of the Icon that the user chose.
'strSubject:  The subject of the Topic.
'strMessage:  The body of the Topic.
'intMailNotice:  "Email Notification of Replies" checkbox.  1 if checked, 0 if not checked.

End Function

'----------------------------------------------------------------------------------------

Sub tstAfterNewTopic(intID, intForumID, intMemberID, strGuestName, strIcon, strSubject, strMessage, intMailNotice)
'This event after before a New Topic is inserted into the database.  A description of parameters follows:
'
'intID:  The ID of the newly inserted Topic.
'intForumID:  The ID of the Forum this topic will be posted to.
'intMemberID:  This is the ID of the member making the Topic.  Will be 0 if a Guest made the Topic.
'strGuestName:  The name of the Guest, if a Guest made the Topic.  Will be blank if a Member made the Topic
'strIcon:  The number of the Icon that the user chose.
'strSubject:  The subject of the Topic.
'strMessage:  The body of the Topic.
'intMailNotice:  "Email Notification of Replies" checkbox.  1 if checked, 0 if not checked.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeNewReply(intForumID, ByRef intTopicID, ByRef intPostID, ByRef intMemberID, ByRef strGuestName, ByRef strIcon, ByRef strSubject, ByRef strMessage, ByRef intMailNotice)
'This event happens before a New Reply is inserted into the database.  If you change these parameters, they will be changed before 
'being inserted.  Also, you can return an error message that will be displayed to the user and will cancel the reply.  Just set 
'tstBeforeNewReply to the error message.  A description of parameters follows:
'
'intForumID:   The ID of the Forum this topic will be posted to.  It is read-only.
'intTopicID:  This is the ID of the Topic that the reply will be posted under.
'intPostID:  This is the ID of the Post that is being replied to.
'intMemberID:  This is the ID of the member making the Reply.  Will be 0 if a Guest made the Reply.
'strGuestName:  The name of the Guest, if a Guest made the Reply.  Will be blank if a Member made the Reply
'strIcon:  The number of the Icon that the user chose.
'strSubject:  The subject of the Reply.
'strMessage:  The body of the Reply.
'intMailNotice:  "Email Notification of Replies" checkbox.  1 if checked, 0 if not checked.

End Function

'----------------------------------------------------------------------------------------

Sub tstAfterNewReply(intID, intForumID, intTopicID, intPostID, intMemberID, strGuestName, strIcon, strSubject, strMessage, intMailNotice)
'This event after before a New Reply is inserted into the database.  A description of parameters follows:
'
'intID:  The ID of the newly inserted Reply.
'intForumID:  The ID of the Forum this topic will be posted to.
'intTopicID:  This is the ID of the Topic that the reply will be posted under.
'intPostID:  This is the ID of the Post that is being replied to.
'intMemberID:  This is the ID of the member making the Reply.  Will be 0 if a Guest made the Reply.
'strGuestName:  The name of the Guest, if a Guest made the Reply.  Will be blank if a Member made the Reply
'strIcon:  The number of the Icon that the user chose.
'strSubject:  The subject of the Reply.
'strMessage:  The body of the Reply.
'intMailNotice:  "Email Notification of Replies" checkbox.  1 if checked, 0 if not checked.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeModifyPost(ByRef intForumID, ByRef intTopicID, intPostID, ByRef intMemberID, ByRef strGuestName, ByRef intIcon, ByRef strSubject, ByRef strMessage, ByRef intMailNotice, ByRef intActive, ByRef intDeleted)
'This event happens before a Post (Topic or Reply) is modified.  If you change these parameters, they will be changed before 
'being updated.  Also, you can return an error message that will be displayed to the user and will cancel the modify.  Just set 
'tstBeforeModifyPost to the error message.  A description of parameters follows:
'
'intForumID:  The ID of the Forum the post is in.
'intTopicID:  The ID of the Topic the Post is under (will be 0 if Post is a Topic)
'intPostID:  The ID of the Post.
'intMemberID:  The ID of the author of the post (will be 0 if made by a Guest)
'strGuestName:  The name of the Guest that made the post (will be blank if a member made the post)
'intIcon:  The number of the Icon that the user chose.
'strSubject:  The subject of the Post.
'strMessage:  The body of the Post.
'intMailNotice:  "Email Notification of Replies" checkbox.  1 if checked, 0 if not checked.
'intActive:  Will be 1 if Post is Unlocked, 0 if Locked (only applies to Topics)
'intDeleted:  Will be 1 if Post is marked as deleted, 0 if not deleted.

End Function

'----------------------------------------------------------------------------------------

Sub tstAfterModifyPost(intForumID, intTopicID, intPostID, intMemberID, strGuestName, intIcon, strSubject, strMessage, intMailNotice, intActive, intDeleted)
'This event happens after a Post (Topic or Reply) is modified.  A description of parameters follows:
'
'intForumID:  The ID of the Forum the post is in.
'intTopicID:  The ID of the Topic the Post is under (will be 0 if Post is a Topic)
'intPostID:  The ID of the Post.
'intMemberID:  The ID of the author of the post (will be 0 if made by a Guest)
'strGuestName:  The name of the Guest that made the post (will be blank if a member made the post)
'intIcon:  The number of the Icon that the user chose.
'strSubject:  The subject of the Post.
'strMessage:  The body of the Post.
'intMailNotice:  "Email Notification of Replies" checkbox.  1 if checked, 0 if not checked.
'intActive:  Will be 1 if Post is Unlocked, 0 if Locked (only applies to Topics)
'intDeleted:  Will be 1 if Post is marked as deleted, 0 if not deleted.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeNewUser(ByRef strFName, ByRef strLName, ByRef strUsername, ByRef strPassword, ByRef strEmail, ByRef intHideEmail, ByRef strICQ, ByRef strHomePage, ByRef strSignature, ByRef strSkin, ByRef intIncludeSignature, ByRef intNotifyDefault)
'This event happens before a New Member is inserted into the database.  If you change these parameters, they will be changed before 
'being inserted.  Also, you can return an error message that will be displayed to the user and will cancel the registration.  Just set 
'tstBeforeNewUser to the error message.  A description of parameters follows:
'
'strFName:  The First name of the new user.
'strLName:  The Last name of the new user.
'strUserName:  This is the Username the User chose.
'strPassword:  This is the user's password (before it is encrypted and inserted in DB)
'strEmail:  This is the user's email address.
'intHideEmail:  Set to 1 if Email should be hidden, 0 if email should be shown on profile page.
'strICQ:  The ICQ number of the new user.
'strHomepage:  The homepage of the new user.
'strSignature:  The Signature of the new user.
'strSkin:  The Skin of the new user.
'intIncludeSignature:  1 if signature is to be included on all posts by default.
'intNotifyDefault:  1 if a notification is to be sent by default to user when someone replies to his/her post. 0 if not.


End Function

'----------------------------------------------------------------------------------------

Sub tstAfterNewUser(intUserID, strFName, strLName, strUsername, strPassword, strEmail, intHideEmail, strICQ, strHomePage, strSignature, strSkin, intIncludeSignature, intNotifyDefault)
'This event happens after a New Member is inserted into the database.  A description of parameters follows:
'
'intUserID:  The ID of the newly created user.
'strFName:  The First name of the new user.
'strLName:  The Last name of the new user.
'strUserName:  This is the Username the User chose.
'strPassword:  This is the user's password (after it is encrypted)
'strEmail:  This is the user's email address.
'intHideEmail:  Set to 1 if Email should be hidden, 0 if email should be shown on profile page.
'strICQ:  The ICQ number of the new user.
'strHomepage:  The homepage of the new user.
'strSignature:  The Signature of the new user.
'strSkin:  The Skin of the new user.
'intIncludeSignature:  1 if signature is to be included on all posts by default.
'intNotifyDefault:  1 if a notification is to be sent by default to user when someone replies to his/her post. 0 if not.


End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeModifyUser(intUserID, ByRef strFName, ByRef strLName, ByRef strUsername, ByRef strPassword, ByRef strEmail, ByRef intHideEmail, ByRef strICQ, ByRef strHomePage, ByRef strSignature, ByRef strSkin, ByRef intIncludeSignature, ByRef intNotifyDefault, ByRef intPostCount, ByRef strLastLoginDate, ByRef strLastPostDate)
'This event before a User is modified in the database.  Also, you can return an error message that will be displayed to the user and will cancel the registration.  Just set 
'tstBeforeModifyUser to the error message.  A description of parameters follows:
'
'intUserID:  The ID of the user.
'strFName:  The First name of the user.
'strLName:  The Last name of the user.
'strUserName:  This is the Username the User chose.
'strPassword:  This is the user's password (before it is encrypted)
'strEmail:  This is the user's email address.
'intHideEmail:  Set to 1 if Email should be hidden, 0 if email should be shown on profile page.
'strICQ:  The ICQ number of the user.
'strHomepage:  The homepage of the user.
'strSignature:  The Signature of the user.
'strSkin:  The Skin of the user.
'intIncludeSignature:  1 if signature is to be included on all posts by default.
'intNotifyDefault:  1 if a notification is to be sent by default to user when someone replies to his/her post. 0 if not.
'intPostCount:  Number of Posts for this user.
'strLastLoginDate:  Last time this user has logged in.
'strLastPostDate:  Last time this user has posted.


End Function

'----------------------------------------------------------------------------------------

Sub tstAfterModifyUser(intUserID, strFName, strLName, strUsername, strPassword, strEmail, intHideEmail, strICQ, strHomePage, strSignature, strSkin, intIncludeSignature, intNotifyDefault, intPostCount, strLastLoginDate, strLastPostDate)
'This event happens after a User is modified in the database.  A description of parameters follows:
'
'intUserID:  The ID of the user.
'strFName:  The First name of the user.
'strLName:  The Last name of the user.
'strUserName:  This is the Username the User chose.
'strPassword:  This is the user's password (after it is encrypted)
'strEmail:  This is the user's email address.
'intHideEmail:  Set to 1 if Email should be hidden, 0 if email should be shown on profile page.
'strICQ:  The ICQ number of the user.
'strHomepage:  The homepage of the user.
'strSignature:  The Signature of the user.
'strSkin:  The Skin of the user.
'intIncludeSignature:  1 if signature is to be included on all posts by default.
'intNotifyDefault:  1 if a notification is to be sent by default to user when someone replies to his/her post. 0 if not.
'intPostCount:  Number of Posts for this user.
'strLastLoginDate:  Last time this user has logged in.
'strLastPostDate:  Last time this user has posted.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeNewForum(ByRef intCategoryID, ByRef intModeratorID, ByRef strForumName, ByRef strDescription, ByRef strGuestAccess, ByRef strMemberAccess, ByRef intDeleted)
'This event happens after a new Forum is added.  Also, you can return an error message that will be displayed to the user and will cancel the registration.  Just set 
'tstBeforeNewForum to the error message.  A description of parameters follows:
'
'intCategoryID:  The category of the new forum. (not implemented in current version)
'intModeratorID:  The ModeratorID of the new forum.
'strForumName:  The name of the new forum.
'strDescription:  The description of the new forum.
'strGuestAccess:  Guest Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'strMemberAccess:  Member Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'intDeleted:  1 if deleted, 0 if not deleted.

End Function

'----------------------------------------------------------------------------------------

Sub tstAfterNewForum(intForumID, intCategoryID, intModeratorID, strForumName, strDescription, strGuestAccess, strMemberAccess, intDeleted)
'This event happens after a new Forum is added.  A description of parameters follows:
'
'intForumID:  The ID of the newly created Forum
'intCategoryID:  The category of the new forum. (not implemented in current version)
'intModeratorID:  The ModeratorID of the new forum.
'strForumName:  The name of the new forum.
'strDescription:  The description of the new forum.
'strGuestAccess:  Guest Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'strMemberAccess:  Member Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'intDeleted:  1 if deleted, 0 if not deleted.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeModifyForum(intForumID, ByRef intCategoryID, ByRef intModeratorID, ByRef strForumName, ByRef strDescription, ByRef strGuestAccess, ByRef strMemberAccess, ByRef intDeleted)
'This event happens after a Forum is modified.  Also, you can return an error message that will be displayed to the user and will cancel the registration.  Just set 
'tstBeforeModifyForum to the error message.  A description of parameters follows:
'
'intForumID:  The ID of the Forum.
'intCategoryID:  The category of the forum. (not implemented in current version)
'intModeratorID:  The ModeratorID of the forum.
'strForumName:  The name of the forum.
'strDescription:  The description of the forum.
'strGuestAccess:  Guest Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'strMemberAccess:  Member Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'intDeleted:  1 if deleted, 0 if not deleted.

End Function

'----------------------------------------------------------------------------------------

Sub tstAfterModifyForum(intForumID, intCategoryID, intModeratorID, strForumName, strDescription, strGuestAccess, strMemberAccess, intDeleted)
'This event happens after a Forum is modified.  A description of parameters follows:
'
'intForumID:  The ID of the Forum
'intCategoryID:  The category of the forum. (not implemented in current version)
'intModeratorID:  The ModeratorID of the forum.
'strForumName:  The name of the forum.
'strDescription:  The description of the forum.
'strGuestAccess:  Guest Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'strMemberAccess:  Member Access of the forum.  "R" means Read Access, "T" means Post Topic Access, "P" means Post Reply Access.
'intDeleted:  1 if deleted, 0 if not deleted.

End Sub

'----------------------------------------------------------------------------------------

Function tstBeforeLogin(valUsername, valPassword)
'This event happens before the username and password are verified with the Toast database.
'Use this event to verify the username/password with an external database as well.  This
'function should return one of three constants.  These constants are listed here:
'
'tstLoginFailed:  Return this constant if verification with an external source fails.
'tstLoginSuccess:  Return this constant if external verification succeeded, and tell Toast
'                  to check the password in it's database as well.
'tstLoginSuccessBypass:  Return this constant if external verification succeeded, and tell
'                        Toast to bypass it's own password checking.  If the user does not
'                        exist in the Toast database, the "User Not Found" error will still
'                        be displayed.
'tstLoginSuccessBypassCreateUser:  Same as tstLoginSuccessBypass, but will also automatically
'																	 create the user in the Toast database if the user doesn't
'																	 already exist.
'
' ***Be VERY careful using the tstLoginSuccessBypass return.  If your code is not correctly
'    verifying username password, then people can log in using any username!!***

	'Do any external verification here.
	tstBeforeLogin = tstLoginSuccess

End Function

%>
