;<%
;---------------------------------------------------------------------------------------------------------------------------------------
;The parameters below are for normal board configuration.  These parameters can be changed easier in the web-based Administration area.
;If you manually modify these values, you still must log into the Admin area to restart the board for them to take effect.
;---------------------------------------------------------------------------------------------------------------------------------------
;
tstcfgBoardAvailable = True
tstcfgBoardNotAvailableError = The board is currently not available.  Please check back later.
tstcfgTakingNewRegistrations = True
tstcfgNoRegistrationsError = This board is not taking new registrations at this time.  Please check back again later.
tstcfgBoardTitle = SolarianLeague
tstcfgWebSiteName = SolarianLeague.com
tstcfgWebSiteURL = http://www.SolarianLeague.com/OldForum
tstcfgReplyPrefix = Re:
tstcfgSkinsAvailable = Standard
tstcfgDefaultSkin = Standard
tstcfgMaxSignatureLength = 1000
tstcfgMaxPagesonPageLink = 7
tstcfgWordWrapLength = 1000
tstcfgDefaultTopicsPerPage = 30
tstcfgDefaultPostsPerPage = 20
tstcfgReservedUsernames = |administrator|admin|webmaster|supervisor|moderator|guest
tstcfgBadWordFilter = True
tstcfgBadWordList = |fuck:****|shit:****|damn:****
tstcfgAutomaticallyLinkURLs = True
tstcfgAllowHTML = True
tstcfgAllowedHTML = |<b>|<i>|<img>|<font>|<a>|<u>|<p>|<em>|<ol>|<li>|<ul>|<blockquote>|<div>|<strong>|<br>|<span>
tstcfgEmailGateway = 127.0.0.1
tstcfgEmailComponent = CDOSYS
tstcfgFromName = Webmaster
tstcfgFromAddress = email@yourdomain.com
tstcfgRegisterSubject = Thank you for registering!
tstcfgRegisterMessage = Thank you for registering.  You are now able to post messages.<!--%BR%--><!--%BR%-->You should start by setting up your profile.  Here you can choose your skin and many other options.  To access your profile, click the link below:<!--%BR%--><!--%BR%--><a href='<!--%ProfileLink%-->'>Your profile</a><!--%BR%--><!--%BR%-->You will need to log in first.  Your username is "<!--%Username%-->".  Your password is:<!--%BR%--><!--%BR%--><!--%Password%--><!--%BR%--><!--%BR%-->Have fun!<!--%BR%--><!--%BR%-->
tstcfgLostPasswordSubject = Your Password
tstcfgLostPasswordMessage = You are receiving this email because you requested your password for username "<!--%Username%-->".  The password is:<!--%BR%--><!--%BR%--><!--%Password%--><!--%BR%--><!--%BR%-->This request was sent by a user at IP address <!--%IPAddress%-->.  If you are concerned that someone else may be trying to gain access to your password, please forward this e-mail to the webmaster.<!--%BR%--><!--%BR%-->
tstcfgNotifyReplySubject = Notification of Reply
tstcfgNotifyReplyMessage = You are receiving this email because you requested to be notified when somebody responded to your message.<!--%BR%--><!--%BR%--><!--%Replyer%--> has replied to your post "<!--%PostSubject%-->."  Click the link below or paste it into your browser to see the reply.<!--%BR%--><!--%BR%--><a href='<!--%PostLink%-->'><!--%PostSubject%--></a><!--%BR%--><!--%BR%-->
tstcfgOnErrorSendEmail = True
tstcfgRuntimeErrorTo = email@yourdomain.com
tstcfgRuntimeErrorSubject = An unrecoverable error occurred.
tstcfgRuntimeErrorMessage = An error occurred on your board.  Error details below: <!--%BR%--><!--%BR%-->Number:  <b><!--%ErrorNumber%--></b><!--%BR%-->Description:  <b><!--%ErrorDescription%--></b><!--%BR%-->Source:  <b><!--%ErrorSource%--></b><!--%BR%-->Cause:  <b><!--%ErrorCause%--></b><!--%BR%--><!--%BR%-->Debug info:<!--%BR%--><!--%BR%--><!--%Debug%--><!--%BR%--><!--%BR%-->As a last resort, try running setup.asp again to re-configure your board.  It will inform you of any errors it finds.
tstcfgPostSortOrder = tstdb_Post.PostDate ASC
tstcfgToastEmailURL = <Auto>
tstcfgDisableAutoEmoticons = False
tstcfgEmailRegExp = [A-Za-z0-9_+-.']+@\w+([-.]\w+)*\.\w+([-.]\w+)*
tstcfgURLRegExp = (((ht|f)tps?://)|(www\.))([\w-]+\.)+[\w-:]+(/[\w-./~?%#;:&=]*)?
tstcfgTimeOffset = 0
;
;This is the "New Install" flag.  Whenever Toast is installed successfully through the Setup program, this flag is set to False.  If Setup
;is ran again, an error will result.  This is a security measure, so Setup may not be run again by anyone else than you if you accidentally
;leave setup.asp on your webserver.  If you need to run Setup again for whatever reason, simply change this value to True.
;
tstcfgNewInstall = True
;
;%>
