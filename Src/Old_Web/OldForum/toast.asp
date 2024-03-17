<%@  language="VBScript" %>
<%
option explicit:
%>
<% Response.Buffer=True
 Response.Clear
 Dim tstAutoRender
 tstAutoRender=True
%>
<!--#INCLUDE FILE="shared.asp"-->
<% Const za30910fff7="toast"
 Dim z51a0880992,ze7db80dbfc,zf4fe7ff1a2,zc1809c9abf,z86132a4fa1,z31f9040642
 Dim z1c126544a4
 If tstAutoRender Then tstRenderToastPage
 Sub tstRenderToastPage()
If Not tstDebugMode Then On Error Resume Next
 z3c742f66d9
 If Err.Number<>(&h10f9+5154-&H251b) Then zd00d4cc179 Err.Number,Err.Description,Err.Source,""
 zdcd0251e32
 z1c126544a4=Replace(z1c126544a4,"<!--*Header*-->",z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\header.html"))
z1c126544a4=Replace(z1c126544a4,"<!--*Footer*-->",z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\footer.html"))
tstBeforeDisplayPage z1c126544a4
 If InStr(z1c126544a4,"<!--*Header*-->")>(&hae0+6283-&H236b) Then
 z1c126544a4=Replace(z1c126544a4,"<!--*Header*-->",z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\header.html"))
z1c126544a4=Replace(z1c126544a4,"<!--*Footer*-->",z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\footer.html"))
End If
 z1c126544a4=z7bf18c145f(z1c126544a4)
Response.Write z1c126544a4
 End Sub
 Sub z3c742f66d9()
Response.Expires=-(&h2459+544-&H2291)
 If z2b79277e31("tstlngCharSet")<>"" Then
 Response.CharSet=z2b79277e31("tstlngCharSet")
Else
 Response.CharSet="iso-8859-1"
 End If
 z51a0880992=Request.ServerVariables("SCRIPT_NAME")
If IsNumeric(tstSessionTimeout) Then
Session.Timeout=tstSessionTimeout
 End If
 If Session(tstUniqueBoardKey &"tstsesUID")=(&h1148+505-&H1341) Then
 If Request.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login")("username")<>"" Then
 If Not zcc202045a5(Request.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login")("username"),z0e88947362(z2363c3e941,Request.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login")("password"))) Then
Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login").Expires=DateAdd("m",-(&h603+3336-&H130a),Now())
End If
 End If
 End If
 ze7db80dbfc=Session(tstUniqueBoardKey &"tstsesSkin")
If ze7db80dbfc="" Then ze7db80dbfc=z2b79277e31("tstcfgDefaultSkin")
zf88826d19f=Session(tstUniqueBoardKey &"tstsesUID")
z31f9040642=z8a99d62000(z2b79277e31("tstcfgLicenseKey"),Request.ServerVariables("SERVER_NAME"))
z1f5de5510d
 z16e31f4a61
 If z2b79277e31("tstcfgBoardAvailable")<>"True" Then
 zfc48387d45 z2b79277e31("tstcfgBoardNotAvailableError")
Exit Sub
 End If
 zc1809c9abf=Request("action")
If zc1809c9abf="" Then zc1809c9abf="forums"
 Select Case zc1809c9abf
 Case "forums"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 zc992197e9f
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "topics"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 zb80bc490b0
 Case "new"
 zf188947fe8
 Case "submit"
 If Request("modify")<>"" Or Request("modify.x")<>"" Then
 zf188947fe8
 Else
 z7ed0e85f17
 End If
 Case "lock"
 ze6d5226f3a
 Case "unlock"
 z6b5589b677
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "posts"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 zed73029eba
 Case "reply"
 zc298e4053f
 Case "submit"
 If Request("modify")<>"" Or Request("modify.x")<>"" Then
 zc298e4053f
 Else
 zb30f0f01af
 End If
 Case "showsearch"
 ze0bc09b9f1
 Case "search"
 z05c91b28fb
 Case "deleteconfirm"
 z5a2f41b07b
 Case "delete"
 z6ab5274546
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "modify"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 ze41952a32d
 Case "submit"
 If Request("modify")<>"" Or Request("modify.x")<>"" Then
 ze41952a32d
 Else
 zdc0daa36ba
 End If
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "register"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="new"
 Select Case z86132a4fa1
 Case "new"
 zbad0ddf4c6
 Case "submit"
 zc2a89e0dd2
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "login"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="showlogin"
 Select Case z86132a4fa1
 Case "showlogin"
 z21d09443ce
 Case "submit"
 z59aa9dd2ec
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "logout"
 z9d05cc8b25
 Case "profile"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then
 z05abc80a9d z51a0880992
 End If
 Select Case z86132a4fa1
 Case "view"
 z6043ecba04
 Case "modify"
 z8c8ba448bf
 Case "changeskin"
 z71f64aa78e
 Case "submit"
 zf9a6f4bd9d
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 Case "lostpassword"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z69c9d5e091
 Case "submit"
 z42a53ab869
 End Select
 Case "help"
 zf68119d687
 Case "tstDoError"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="langGenericError"
 zfc48387d45 z2b79277e31(z86132a4fa1)
Exit Sub
 Case Else
 zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End Select
 End Sub
 Sub zc992197e9f
 Dim ze47d69c91f
 Dim zd38b036918
 Dim zbfa4c82c6b,z1b9379055c,zd6ce1e0ef5,zaae542c3af,z7f9cc84556,z8e66fcd9b0,zd0479f0b55,z37c2ab73e3
 Dim zac7a1a9ff2,z52b0699802
 Dim zada8a1b513
 Dim zcca66305f9
 zac7a1a9ff2=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\forumslist.html")
Set zada8a1b513=New z6a54e5afd0
 If tstCacheForumList Then
 If z2b79277e31("tstcfgForumsList")<>"" Then
 ze47d69c91f=Split(z2b79277e31("tstcfgForumsList"),",")
For zd38b036918=(&h1148+577-&H1389) To UBound(ze47d69c91f)
zbfa4c82c6b=z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ForumName")
z1b9379055c=z51a0880992 &"?sub=show&amp;action=topics&amp;fid=" &z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ID")
zd6ce1e0ef5=z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"Description")
zaae542c3af=z51a0880992 &"?sub=view&amp;action=profile&amp;uid=" &z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ModeratorID")
z7f9cc84556=z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"Moderator")
z8e66fcd9b0=z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"TopicCount")
zd0479f0b55=z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"PostCount")
z37c2ab73e3=z4be8fcbf00(z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"LastPostDate"),z2b79277e31("tstlngLastPostDateText"))
z52b0699802=zac7a1a9ff2
 z52b0699802=Replace(z52b0699802,"<!--%ReadStatus%-->","notread")
z52b0699802=Replace(z52b0699802,"<!--%ForumName%-->",zbfa4c82c6b)
z52b0699802=Replace(z52b0699802,"<!--%ForumLink%-->",z1b9379055c)
z52b0699802=Replace(z52b0699802,"<!--%ForumDescription%-->",zd6ce1e0ef5)
z52b0699802=Replace(z52b0699802,"<!--%ForumModeratorProfileLink%-->",zaae542c3af)
z52b0699802=Replace(z52b0699802,"<!--%ForumModerator%-->",z7f9cc84556)
z52b0699802=Replace(z52b0699802,"<!--%TopicCount%-->",z8e66fcd9b0)
z52b0699802=Replace(z52b0699802,"<!--%PostCount%-->",zd0479f0b55)
z52b0699802=Replace(z52b0699802,"<!--%LastPostDate%-->",z37c2ab73e3)
zada8a1b513.Append(z52b0699802)
Next
 Else
 zfc48387d45 z2b79277e31("tstlngNoForumsDefinedError")
Exit Sub
 End If
 Else
 Set zcca66305f9=zce564571ba(Null,False)
If Not zcca66305f9.EOF Then
 Do While Not zcca66305f9.EOF
 zbfa4c82c6b=z423e920736(zcca66305f9(tstdbForumFieldName))
z1b9379055c=z51a0880992 &"?sub=show&amp;action=topics&amp;fid=" &zcca66305f9(tstdbForumFieldID)
zd6ce1e0ef5=z423e920736(zcca66305f9(tstdbForumFieldDescription))
zaae542c3af=z51a0880992 &"?sub=view&amp;action=profile&amp;uid=" &zcca66305f9(tstdbForumFieldModeratorID)
z7f9cc84556=z423e920736(zcca66305f9("Moderator"))
z8e66fcd9b0=zcca66305f9(tstdbForumFieldTopicCount)
zd0479f0b55=zcca66305f9(tstdbForumFieldPostCount)
z37c2ab73e3=zcca66305f9(tstdbForumFieldLastPostDate)
z52b0699802=zac7a1a9ff2
 z52b0699802=Replace(z52b0699802,"<!--%ReadStatus%-->","notread")
z52b0699802=Replace(z52b0699802,"<!--%ForumName%-->",zbfa4c82c6b)
z52b0699802=Replace(z52b0699802,"<!--%ForumLink%-->",z1b9379055c)
z52b0699802=Replace(z52b0699802,"<!--%ForumDescription%-->",zd6ce1e0ef5)
z52b0699802=Replace(z52b0699802,"<!--%ForumModeratorProfileLink%-->",zaae542c3af)
z52b0699802=Replace(z52b0699802,"<!--%ForumModerator%-->",z7f9cc84556)
z52b0699802=Replace(z52b0699802,"<!--%TopicCount%-->",z8e66fcd9b0)
z52b0699802=Replace(z52b0699802,"<!--%PostCount%-->",zd0479f0b55)
z52b0699802=Replace(z52b0699802,"<!--%LastPostDate%-->",z37c2ab73e3)
zada8a1b513.Append(z52b0699802)
zcca66305f9.MoveNext
 Loop
 End If
 z05a110f4c4 zcca66305f9
 End If
 Session(tstUniqueBoardKey &"tstsesCurrentForum")=""
 Session(tstUniqueBoardKey &"tstsesCurrentTopic")=""
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\forumsmain.html")
z1c126544a4=Replace(z1c126544a4,"<!--%ForumList%-->",zada8a1b513.ToString())
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=MainBoard&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub zb80bc490b0
 Dim zcee920255e,z29203c5c02,z9e4a2ac548
 Dim zbfa4c82c6b
 Dim z8ac5bb3cec,zebc2973c66,z71a1ab2fef
 Dim zd38b036918,z697c41cd9d,zcb00582367,ze4c10fd009
 Dim zc3d5368e7e,z86732a0882,z0e9d44a4bb,z5b7c89c8d8,ze7eea30a20,z6d16d839b1,zc1b540a9c7,z477f156806
 Dim z287ef78d99,z7bcc0393df
 Dim z049cf7b881
 Dim zcca66305f9
 zcee920255e=Request.ServerVariables("QUERY_STRING")
z29203c5c02=Request("fid")
z9e4a2ac548=Request("page")
zbfa4c82c6b=z2b79277e31("tstcfgForum" &z29203c5c02 &"ForumName")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If Not za4716380cd(z29203c5c02,"R") Then
If zf88826d19f=(&h32a+6149-&H1b2f) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(zcee920255e)
Else
 zfc48387d45 z2b79277e31("tstlngReadNoAccessError")
Exit Sub
 End If
 End If
 If z9e4a2ac548="" Or Not IsNumeric(z9e4a2ac548) Then
z9e4a2ac548=(&ha8a+1186-&Hf2b)
 Else
 z9e4a2ac548=Int(z9e4a2ac548)
End If
 Set zcca66305f9=zb76ffc630e(z29203c5c02,(&h273+2667-&Hcde),Null,Null,Null,Null,Null,Null,Null,Null,False,Null,Null,tstdbPostTable &"." &tstdbPostFieldLastReplyDate &" DESC",CInt(Session(tstUniqueBoardKey &"tstsesTopicsPerPage")))
Set z049cf7b881=New z6a54e5afd0
 If Not zcca66305f9.EOF Then
 zcca66305f9.AbsolutePage=z9e4a2ac548
 If zcca66305f9.PageCount>(&h143+3208-&Hdca) Then
 ze4c10fd009=z2b79277e31("tstcfgMaxPagesonPageLink")
If z9e4a2ac548>(&he3d+4166-&H1e82) Then
 zc1b540a9c7="<a href=""" &z51a0880992 &"?sub=show&amp;action=topics&amp;fid=" &z29203c5c02 &"&amp;page=" &z9e4a2ac548-(&h246+2885-&Hd8a) &""">" &z2b79277e31("tstlnkPreviousPageLinkText") &"</a> "
 End If
 z697c41cd9d=z9e4a2ac548-Int(((ze4c10fd009/(&h1e16+1685-&H24a9))+.5)-(&hee7+3164-&H1b42))
zcb00582367=z9e4a2ac548+Int(ze4c10fd009/(&h14d0+1477-&H1a93))
For zd38b036918=z697c41cd9d to zcb00582367
 If zd38b036918<(&h1542+2891-&H208c) Then
 z697c41cd9d=z697c41cd9d+(&h1442+4211-&H24b4)
 If zcb00582367<zcca66305f9.PageCount Then
 zcb00582367=zcb00582367+(&h41c+414-&H5b9)
 End If
 Elseif zd38b036918>zcca66305f9.PageCount Then
 zcb00582367=zcb00582367-(&he4+7747-&H1f26)
 If z697c41cd9d>(&h191d+247-&H1a13) Then
 z697c41cd9d=z697c41cd9d-(&h20f4+1087-&H2532)
 End If
 End If
 Next
 z8ac5bb3cec=z2b79277e31("tstlnkNumberedPageLinkText")
For zd38b036918=z697c41cd9d to zcb00582367
 If z9e4a2ac548=zd38b036918 Then
 zc1b540a9c7=zc1b540a9c7 &Replace(z2b79277e31("tstlnkSelectedPageLinkText"),"<!--%PageNumber%-->",z9e4a2ac548) &" "
 Else
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=topics&amp;fid=" &z29203c5c02 &"&amp;page=" &zd38b036918 &""">" &Replace(z8ac5bb3cec,"<!--%PageNumber%-->",zd38b036918) &"</a> "
 End If
 Next
 If z9e4a2ac548<zcca66305f9.PageCount Then
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=topics&amp;fid=" &z29203c5c02 &"&amp;page=" &z9e4a2ac548+(&h16d2+518-&H18d7) &""">" &z2b79277e31("tstlnkNextPageLinkText") &"</a>"
 End If
 End If
 z287ef78d99=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\topicslist.html")
zebc2973c66=z2b79277e31("tstlnkGuestUsernameText")
z71a1ab2fef=z2b79277e31("tstlnkRegisteredUsernameText")
For zd38b036918=(&h134+608-&H393) to zcca66305f9.PageSize
 zc3d5368e7e=z423e920736(zcca66305f9(tstdbPostFieldSubject))
zc3d5368e7e=z4e06689c9b(zc3d5368e7e)
z86732a0882=z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zcca66305f9(tstdbPostFieldID)
z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &zcca66305f9(tstdbPostFieldIcon))
If z0e9d44a4bb="" Then z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &z2b79277e31("tstlngDefaultMessageIcon"))
z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
If z5b7c89c8d8="" Then
 z5b7c89c8d8=Replace(zebc2973c66,"<!--%Username%-->",z423e920736(zcca66305f9(tstdbPostFieldGuestName)))
Else
 z5b7c89c8d8=z71a1ab2fef
 z5b7c89c8d8=Replace(z5b7c89c8d8,"<!--%ProfileLink%-->",z51a0880992 &"?sub=view&amp;action=profile&amp;uid=" &zcca66305f9(tstdbPostFieldMemberID))
z5b7c89c8d8=Replace(z5b7c89c8d8,"<!--%Username%-->",z423e920736(zcca66305f9(tstdbMemberFieldUsername)))
End If
 z5b7c89c8d8=z4e06689c9b(z5b7c89c8d8)
ze7eea30a20=z423e920736(zcca66305f9(tstdbPostFieldReplyCount))
z6d16d839b1=z423e920736(zcca66305f9(tstdbPostFieldHits))
z477f156806=z4be8fcbf00(zcca66305f9(tstdbPostFieldLastReplyDate),z2b79277e31("tstlngLastReplyDateText"))
z7bcc0393df=z287ef78d99
 z7bcc0393df=Replace(z7bcc0393df,"<!--%ReadStatus%-->","notread")
z7bcc0393df=Replace(z7bcc0393df,"<!--%TopicSubject%-->",zc3d5368e7e)
z7bcc0393df=Replace(z7bcc0393df,"<!--%TopicLink%-->",z86732a0882)
z7bcc0393df=Replace(z7bcc0393df,"<!--%Icon%-->",z0e9d44a4bb)
z7bcc0393df=Replace(z7bcc0393df,"<!--%Username%-->",z5b7c89c8d8)
z7bcc0393df=Replace(z7bcc0393df,"<!--%ReplyCount%-->",ze7eea30a20)
z7bcc0393df=Replace(z7bcc0393df,"<!--%LastReplyDate%-->",z477f156806)
z7bcc0393df=Replace(z7bcc0393df,"<!--%Hits%-->",z6d16d839b1)
z049cf7b881.Append(z7bcc0393df)
zcca66305f9.MoveNext
 If zcca66305f9.EOF Then Exit For
 Next
 Else
 z049cf7b881.Append(z2b79277e31("tstlngNoTopicsError"))
End If
 Session(tstUniqueBoardKey &"tstsesCurrentForum")=zbfa4c82c6b
 Session(tstUniqueBoardKey &"tstsesCurrentForumID")=z29203c5c02
 Session(tstUniqueBoardKey &"tstsesCurrentTopic")=""
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\topicsmain.html")
z1c126544a4=Replace(z1c126544a4,"<!--%ForumName%-->",zbfa4c82c6b)
z1c126544a4=Replace(z1c126544a4,"<!--%NewPostLink%-->",z51a0880992 &"?sub=new&amp;action=topics&amp;fid=" &z29203c5c02)
z1c126544a4=Replace(z1c126544a4,"<!--%TopicList%-->",z049cf7b881.ToString())
z1c126544a4=Replace(z1c126544a4,"<!--%PageNumberLink%-->",zc1b540a9c7)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=MainTopic&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 z05a110f4c4 zcca66305f9
 End Sub
 Sub zf188947fe8
 Dim z29203c5c02
 Dim z844c67087f,z25352d0d09,z3a8c5dc628,zb4b37c82b4
 Dim z54aef0d64a,z0e9d44a4bb,z57f08f595c,z8825a31cf0
 Dim zd38b036918
 z29203c5c02=Request("fid")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If za4716380cd(z29203c5c02,"T") Then
If zf88826d19f=(&h136b+2805-&H1e60) Then
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\guestpostnewtopic.html")
Else
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\postnewtopic.html")
End If
 z1c126544a4=z2f0fbca9f2(z1c126544a4,"message","<!--%Message%-->")
Else
 If zf88826d19f=(&h1007+5859-&H26ea) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
Else
 zfc48387d45 z2b79277e31("tstlngTopicNoAccessError")
Exit Sub
 End If
 End If
 If Session(tstUniqueBoardKey &"tempPostQueryString")=Request.ServerVariables("QUERY_STRING") Then
zb4b37c82b4=Session(tstUniqueBoardKey &"tempPostGuestName")
z844c67087f=Session(tstUniqueBoardKey &"tempPostSubject")
z25352d0d09=Session(tstUniqueBoardKey &"tempPostMessage")
z3a8c5dc628=Session(tstUniqueBoardKey &"tempPostIcon")
ElseIf Request("modify")<>"" Or Request("modify.x")<>"" Then
 zb4b37c82b4=Request("guestname")
z844c67087f=Request("subject")
z25352d0d09=Request("message")
z3a8c5dc628=Request("icon")
Else
 zb4b37c82b4=Session(tstUniqueBoardKey &"tstsesUsername")
z844c67087f=""
 z25352d0d09=""
 z3a8c5dc628=z2b79277e31("tstlngDefaultMessageIcon")
End If
 If z3a8c5dc628="" Then
 z3a8c5dc628=z2b79277e31("tstlngDefaultMessageIcon")
End If
 z1c126544a4=Replace(z1c126544a4,"<!--%Subject%-->",zab2d4505d1(z844c67087f))
z1c126544a4=Replace(z1c126544a4,"<!--%Message%-->",zab2d4505d1(z25352d0d09))
z1c126544a4=Replace(z1c126544a4,"<!--%GuestName%-->",zab2d4505d1(zb4b37c82b4))
For zd38b036918=(&haf5+115-&Hb67) to (&hb3+1732-&H76d)
 z0e9d44a4bb=z2b79277e31("tstlngSelectMessageIcon" &zd38b036918)
If zd38b036918=Int(z3a8c5dc628) Then
z0e9d44a4bb=Replace(z0e9d44a4bb,"<!--%SelectedMessageIconText%-->",z2b79277e31("tstlngSelectedMessageIconText"))
Else
 z0e9d44a4bb=Replace(z0e9d44a4bb,"<!--%SelectedMessageIconText%-->","")
End If
 z57f08f595c=z57f08f595c &z0e9d44a4bb
 Next
 If Session(tstUniqueBoardKey &"tstsesIncludeSignature") Then
z54aef0d64a="checked"
 Else
 z54aef0d64a=""
 End If
 If Session(tstUniqueBoardKey &"tstsesNotifyDefault") Then
z8825a31cf0="checked"
 Else
 z8825a31cf0=""
 End If
 z1c126544a4=Replace(z1c126544a4,"<!--%ForumID%-->",z29203c5c02)
z1c126544a4=Replace(z1c126544a4,"<!--%QueryString%-->",zab2d4505d1(Request.ServerVariables("QUERY_STRING")))
z1c126544a4=Replace(z1c126544a4,"<!--%Username%-->",z423e920736(Session(tstUniqueBoardKey &"tstsesUsername")))
z1c126544a4=Replace(z1c126544a4,"<!--%MessageIconList%-->",z57f08f595c)
z1c126544a4=Replace(z1c126544a4,"<!--%IncludeSig%-->",z54aef0d64a)
z1c126544a4=Replace(z1c126544a4,"<!--%NotifyDefault%-->",z8825a31cf0)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Topic&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 Response.CacheControl="no-cache"
 Response.AddHeader "Pragma","no-cache"
 End Sub
 Sub z7ed0e85f17
 Dim zf7494680f6
 Dim z29203c5c02,z894da14759,z0cc82d0440,z4ea1b0aa78,zbfc53e5441,zc91daf7bfa,zc4a5ca9c2d,zc202c93174
 Dim z349f07a138
 Dim z71cbb0fa33
 zf7494680f6=Request("preview")
z29203c5c02=Request("fid")
z4ea1b0aa78=Request("icon")
z894da14759=Request("guestname")
z0cc82d0440=zf88826d19f
 zbfc53e5441=Request("subject")
zc91daf7bfa=Request("message")
zc4a5ca9c2d=Request("notify")
zc202c93174=Request("includesig")
Session(tstUniqueBoardKey &"tempPostGuestName")=z894da14759
 Session(tstUniqueBoardKey &"tempPostSubject")=zbfc53e5441
 Session(tstUniqueBoardKey &"tempPostMessage")=zc91daf7bfa
 Session(tstUniqueBoardKey &"tempPostIcon")=z4ea1b0aa78
 Session(tstUniqueBoardKey &"tempPostQueryString")=Request("querystring")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If Not za4716380cd(z29203c5c02,"T") Then
If z0cc82d0440=(&h9a3+7391-&H2682) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request("querystring"))
Else
 zfc48387d45 z2b79277e31("tstlngTopicNoAccessError")
Exit Sub
 End If
 End If
 If z0cc82d0440=(&h769+7169-&H236a) Then
 If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z894da14759,tstdbPostFieldGuestNameFriendly,tstdbPostFieldGuestNameLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zbfc53e5441,tstdbPostFieldSubjectFriendly,tstdbPostFieldSubjectLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zc91daf7bfa,tstdbPostFieldMessageFriendly,tstdbPostFieldMessageLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 If zf7494680f6="True" Then
 z0e9e0faba8 "topics"
 Exit Sub
 End If
 zc91daf7bfa=zbede91cbb3(zc91daf7bfa)
If z4ea1b0aa78="" Then z4ea1b0aa78=z2b79277e31("tstlngDefaultMessageIcon")
If zc4a5ca9c2d="True" Then
 zc4a5ca9c2d=True
 Else
 zc4a5ca9c2d=False
 End If
 If zc202c93174="True" Then
 zc91daf7bfa=zc91daf7bfa &Replace(Session(tstUniqueBoardKey &"tstsesSignature"),zeb4424eb6e,"")
End If
 z349f07a138=(&h1719+2793-&H2202)
 If z71cbb0fa33="" Then z71cbb0fa33=z0d07400a80(z29203c5c02,z349f07a138,(&he8d+5973-&H25e2),z0cc82d0440,z894da14759,z4ea1b0aa78,zbfc53e5441,zc91daf7bfa,zc4a5ca9c2d)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 Session(tstUniqueBoardKey &"tempPostGuestName")=""
 Session(tstUniqueBoardKey &"tempPostSubject")=""
 Session(tstUniqueBoardKey &"tempPostMessage")=""
 Session(tstUniqueBoardKey &"tempPostIcon")=""
 Session(tstUniqueBoardKey &"tempPostQueryString")=""
 z05abc80a9d z51a0880992 &"?sub=show&action=posts&fid=" &z29203c5c02 &"&tid=" &z349f07a138
 End Sub
 Sub ze6d5226f3a
 Dim zea668177bb,z0cc82d0440
 Dim z71cbb0fa33
 zea668177bb=Request("tid")
z0cc82d0440=zf88826d19f
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zc810b06458(Null,Null,zea668177bb,z0cc82d0440,Null,Null,Null,Null,Null,False,Null)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 z613cd748c4 z2b79277e31("tstlngTopicLockedSuccess")
End Sub
 Sub z6b5589b677
 Dim zea668177bb,z0cc82d0440
 Dim z71cbb0fa33
 zea668177bb=Request("tid")
z0cc82d0440=zf88826d19f
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zc810b06458(Null,Null,zea668177bb,z0cc82d0440,Null,Null,Null,Null,Null,True,Null)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 z613cd748c4 z2b79277e31("tstlngTopicUnlockedSuccess")
End Sub
 Sub ze0bc09b9f1
 Dim ze47d69c91f
 Dim z52b0699802,za6b283449f
 Dim zd38b036918,z9faf0b4bc5,z47c3ce47e7
 ze47d69c91f=Split(z2b79277e31("tstcfgForumsList"),",")
z52b0699802=z2b79277e31("tstlnkForumListLinkText")
za6b283449f=za6b283449f &Replace(z52b0699802,"<!--%ForumID%-->","-1")
za6b283449f=Replace(za6b283449f,"<!--%ForumName%-->",z2b79277e31("tstlngSearchFormAllForumsText"))
For zd38b036918=(&hc+5391-&H151b) To UBound(ze47d69c91f)
za6b283449f=za6b283449f &Replace(z52b0699802,"<!--%ForumID%-->",z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ID"))
za6b283449f=Replace(za6b283449f,"<!--%ForumName%-->",z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ForumName"))
Next
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\searchmain.html")
z9faf0b4bc5=InStr(z1c126544a4,"<!--%BeginSearchResults%-->")
If z9faf0b4bc5>(&h85f+310-&H995) Then
 z47c3ce47e7=InStr(z1c126544a4,"<!--%EndSearchResults%-->")
If z47c3ce47e7>z9faf0b4bc5 Then
 z1c126544a4=Left(z1c126544a4,z9faf0b4bc5-(&h1bcd+2678-&H2642)) &Mid(z1c126544a4,z47c3ce47e7+(&heaa+2672-&H1901))
End If
 End If
 z1c126544a4=Replace(z1c126544a4,"<!--%ForumList%-->",za6b283449f)
z1c126544a4=Replace(z1c126544a4,"<!--%Author%-->","")
z1c126544a4=Replace(z1c126544a4,"<!--%Subject%-->","")
z1c126544a4=Replace(z1c126544a4,"<!--%Message%-->","")
z1c126544a4=Replace(z1c126544a4,"<!--%DayPrune%-->","-1")
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Search&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub z05c91b28fb
 Dim zcee920255e,z29203c5c02,ze318365b1b,zbfc53e5441,zc91daf7bfa,z3ca40fd3ab,zd5b6634d8a,z9e4a2ac548
 Dim ze47d69c91f
 Dim z52b0699802,za6b283449f
 Dim zd38b036918,z87ccc4d532,z697c41cd9d,zcb00582367,ze4c10fd009,z349f07a138,z8277f97be6
 Dim zcca66305f9
 Dim z8ac5bb3cec,zc1b540a9c7
 Dim zebc2973c66,z71a1ab2fef
 Dim zed4320f240,z766187f7a3
 Dim zb0cc1f1bec
 Dim z844c67087f,z0e9d44a4bb,z5b7c89c8d8,zb4b37c82b4,z3ebeaa4f75,z7bee735207,zd1423f8639,z02af392488,z537878c982,z2a420c3a0a,z25352d0d09,z5763e1ecf9,z4855155418
 Dim zea5a7ac0e8,z178306c27b,zf2d3e7d08e
 Dim z71396abb4a
 Dim zc31bd7b382
 Dim z08abd5d4ee
 Dim z4279953079
 z4279953079=zaa70a50e00(z60d9708bf1)
zcee920255e=Request.ServerVariables("QUERY_STRING")
z29203c5c02=Cint(Request("fid"))
ze318365b1b=Replace(left(Request("author"),(&h841+3462-&H15b7)),"'","''")
zbfc53e5441=Replace(Request("subject"),"'","''")
zc91daf7bfa=Replace(Request("message"),"'","''")
z3ca40fd3ab=Cint(Request("dayprune"))
z9e4a2ac548=Request("page")
If z9e4a2ac548<>Null then z9e4a2ac548=Cint(z9e4a2ac548)
ze47d69c91f=Split(z2b79277e31("tstcfgForumsList"),",")
z52b0699802=z2b79277e31("tstlnkForumListLinkText")
If z29203c5c02<>"" And IsNumeric(z29203c5c02)And z29203c5c02<>"-1" Then
 za6b283449f=Replace(z52b0699802,"<!--%ForumID%-->",z29203c5c02)
za6b283449f=Replace(za6b283449f,"<!--%ForumName%-->",z2b79277e31("tstcfgForum" &z29203c5c02 &"ForumName"))
End If
 za6b283449f=za6b283449f &Replace(z52b0699802,"<!--%ForumID%-->","-1")
za6b283449f=Replace(za6b283449f,"<!--%ForumName%-->",z2b79277e31("tstlngSearchFormAllForumsText"))
For zd38b036918=(&h311+4819-&H15e4) To UBound(ze47d69c91f)
If CInt(z29203c5c02)<>CInt(z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ID"))Or z29203c5c02="" Then
 za6b283449f=za6b283449f &Replace(z52b0699802,"<!--%ForumID%-->",z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ID"))
za6b283449f=Replace(za6b283449f,"<!--%ForumName%-->",z2b79277e31("tstcfgForum" &ze47d69c91f(zd38b036918) &"ForumName"))
End If
 Next
 If z29203c5c02="" Or Not IsNumeric(z29203c5c02)Or z29203c5c02="-1" Then
 z29203c5c02=Null
 End If
 If z3ca40fd3ab="-1" Then
 z3ca40fd3ab=Null
 End If
 If z9e4a2ac548="" Or Not IsNumeric(z9e4a2ac548) Then
z9e4a2ac548=(&h1165+923-&H14ff)
 Else
 z9e4a2ac548=Int(z9e4a2ac548)
End If
 Set zcca66305f9=zb76ffc630e(z29203c5c02,Null,Null,Null,ze318365b1b,Null,zbfc53e5441,zc91daf7bfa,Null,Null,False,z3ca40fd3ab,Null,Null,CInt(Session(tstUniqueBoardKey &"tstsesPostsPerPage")))
If IsNull(z3ca40fd3ab)Then z3ca40fd3ab="-1"
 If IsNull(z29203c5c02)Then z29203c5c02="-1"
 Set zb0cc1f1bec=New z6a54e5afd0
 z8277f97be6=zcca66305f9.RecordCount
 If Not zcca66305f9.EOF Then
 zcca66305f9.AbsolutePage=z9e4a2ac548
 If zcca66305f9.PageCount>(&hc78+709-&Hf3c) Then
 ze4c10fd009=z2b79277e31("tstcfgMaxPagesonPageLink")
If z9e4a2ac548>(&h19a6+843-&H1cf0) Then
 zc1b540a9c7="<a href=""" &z51a0880992 &"?sub=search&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;author=" &ze318365b1b &"&amp;subject=" &zbfc53e5441 &"&amp;message=" &zc91daf7bfa &"&amp;dayprune=" &z3ca40fd3ab &"&amp;advanced=" &zd5b6634d8a &"&amp;page=" &z9e4a2ac548-(&he7a+3589-&H1c7e) &""">" &z2b79277e31("tstlnkPreviousPageLinkText") &"</a> "
 End If
 z697c41cd9d=z9e4a2ac548-Int(((ze4c10fd009/(&h17a0+1165-&H1c2b))+.5)-(&h1ad3+1317-&H1ff7))
zcb00582367=z9e4a2ac548+Int(ze4c10fd009/(&h276+5293-&H1721))
For zd38b036918=z697c41cd9d to zcb00582367
 If zd38b036918<(&h6c2+3816-&H15a9) Then
 z697c41cd9d=z697c41cd9d+(&hced+3162-&H1946)
 If zcb00582367<zcca66305f9.PageCount Then
 zcb00582367=zcb00582367+(&h1421+3599-&H222f)
 End If
 Elseif zd38b036918>zcca66305f9.PageCount Then
 zcb00582367=zcb00582367-(&h3bc+2985-&Hf64)
 If z697c41cd9d>(&h990+147-&Ha22) Then
 z697c41cd9d=z697c41cd9d-(&h526+3186-&H1197)
 End If
 End If
 Next
 z8ac5bb3cec=z2b79277e31("tstlnkNumberedPageLinkText")
For zd38b036918=z697c41cd9d to zcb00582367
 If z9e4a2ac548=zd38b036918 Then
 zc1b540a9c7=zc1b540a9c7 &Replace(z2b79277e31("tstlnkSelectedPageLinkText"),"<!--%PageNumber%-->",z9e4a2ac548) &" "
 Else
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=search&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;author=" &ze318365b1b &"&amp;subject=" &zbfc53e5441 &"&amp;message=" &zc91daf7bfa &"&amp;dayprune=" &z3ca40fd3ab &"&amp;advanced=" &zd5b6634d8a &"&amp;page=" &zd38b036918 &""">" &Replace(z8ac5bb3cec,"<!--%PageNumber%-->",zd38b036918) &"</a> "
 End If
 Next
 If z9e4a2ac548<zcca66305f9.PageCount Then
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=search&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;author=" &ze318365b1b &"&amp;subject=" &zbfc53e5441 &"&amp;message=" &zc91daf7bfa &"&amp;dayprune=" &z3ca40fd3ab &"&amp;advanced=" &zd5b6634d8a &"&amp;page=" &z9e4a2ac548+(&hd76+6348-&H2641) &""">" &z2b79277e31("tstlnkNextPageLinkText") &"</a>"
 End If
 End If
 zed4320f240=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\searchlist.html")
zebc2973c66=z2b79277e31("tstlnkGuestUsernameText")
z71a1ab2fef=z2b79277e31("tstlnkRegisteredUsernameText")
For zd38b036918=(&h11d3+1650-&H1844) to zcca66305f9.PageSize
 If za4716380cd(zcca66305f9(tstdbPostFieldForumID),"R") Then
z349f07a138=zcca66305f9(tstdbPostFieldTopicID)
If z349f07a138=(&h25e5+6-&H25eb) Then z349f07a138=zcca66305f9(tstdbPostFieldID)
z844c67087f=z423e920736(zcca66305f9(tstdbPostFieldSubject))
z844c67087f=z4e06689c9b(z844c67087f)
z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &zcca66305f9(tstdbPostFieldIcon))
If z0e9d44a4bb="" Then z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &z2b79277e31("tstlngDefaultMessageIcon"))
zf2d3e7d08e=Split(zbfc53e5441," ")
For z87ccc4d532=(&h1bc+9450-&H26a6) To UBound(zf2d3e7d08e)
z71396abb4a=(&h24a+9217-&H264a)
 Do Until Instr(z71396abb4a,z844c67087f,zf2d3e7d08e(z87ccc4d532),(&h12a7+1083-&H16e1))=(&h1798+487-&H197f)
 z71396abb4a=Instr(z71396abb4a,z844c67087f,zf2d3e7d08e(z87ccc4d532),(&h89c+6583-&H2252))
If Not zb4e0e0c8f0(z844c67087f,z71396abb4a) Then
z844c67087f=Left(z844c67087f,z71396abb4a-(&h1e80+351-&H1fde)) &Replace(z844c67087f,zf2d3e7d08e(z87ccc4d532),Replace(z2b79277e31("tstlnkFoundSearchWordLinkText"),"<!--%SearchWord%-->",zf2d3e7d08e(z87ccc4d532)),z71396abb4a,(&h14c+4840-&H1433),(&hdd5+5997-&H2541))
End If
 z71396abb4a=z71396abb4a+Len(Replace(z2b79277e31("tstlnkFoundSearchWordLinkText"),"<!--%SearchWord%-->",zf2d3e7d08e(z87ccc4d532)))+(&hc61+1463-&H1217)
 Loop
 Next
 zc31bd7b382=z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &zcca66305f9(tstdbPostFieldForumID) &"&amp;tid=" &z349f07a138
 z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
zb4b37c82b4=z423e920736(zcca66305f9(tstdbPostFieldGuestName))
If z5b7c89c8d8="" Then
 z5b7c89c8d8=Replace(zebc2973c66,"<!--%Username%-->",zb4b37c82b4)
Else
 z5b7c89c8d8=Replace(z71a1ab2fef,"<!--%Username%-->",z5b7c89c8d8)
z5b7c89c8d8=Replace(z5b7c89c8d8,"<!--%ProfileLink%-->",z51a0880992 &"?sub=view&amp;action=profile&amp;uid=" &zcca66305f9(tstdbPostFieldMemberID))
End If
 z5b7c89c8d8=z4e06689c9b(z5b7c89c8d8)
zf2d3e7d08e=Split(ze318365b1b," ")
For z87ccc4d532=(&hc34+681-&Hedd) To UBound(zf2d3e7d08e)
z71396abb4a=(&h767+4657-&H1997)
 Do Until Instr(z71396abb4a,z5b7c89c8d8,zf2d3e7d08e(z87ccc4d532),(&h1231+3359-&H1f4f))=(&h195+3526-&Hf5b)
 z71396abb4a=Instr(z71396abb4a,z5b7c89c8d8,zf2d3e7d08e(z87ccc4d532),(&h96a+4639-&H1b88))
If Not zb4e0e0c8f0(z5b7c89c8d8,z71396abb4a) Then
z5b7c89c8d8=Replace(z5b7c89c8d8,zf2d3e7d08e(z87ccc4d532),Replace(z2b79277e31("tstlnkFoundSearchWordLinkText"),"<!--%SearchWord%-->",zf2d3e7d08e(z87ccc4d532)),z71396abb4a,(&h100+44-&H12b),(&h1f7a+269-&H2086))
End If
 z71396abb4a=z71396abb4a+(&h1d70+217-&H1e48)
 Loop
 Next
 z25352d0d09=z1aec8f0532(zcca66305f9(tstdbPostFieldMessage))
zf2d3e7d08e=Split(zc91daf7bfa," ")
For z87ccc4d532=(&h5e4+2172-&He60) To UBound(zf2d3e7d08e)
z71396abb4a=(&hc46+1829-&H136a)
 Do Until Instr(z71396abb4a,z25352d0d09,zf2d3e7d08e(z87ccc4d532),(&h38f+8870-&H2634))=(&h16e3+701-&H19a0)
 z71396abb4a=Instr(z71396abb4a,z25352d0d09,zf2d3e7d08e(z87ccc4d532),(&h468+1350-&H9ad))
If Not zb4e0e0c8f0(z25352d0d09,z71396abb4a) Then
z25352d0d09=Left(z25352d0d09,z71396abb4a-(&ha4b+477-&Hc27)) &Replace(z25352d0d09,zf2d3e7d08e(z87ccc4d532),Replace(z2b79277e31("tstlnkFoundSearchWordLinkText"),"<!--%SearchWord%-->",zf2d3e7d08e(z87ccc4d532)),z71396abb4a,(&h1e44+592-&H2093),(&h5ba+5436-&H1af5))
End If
 z71396abb4a=z71396abb4a+Len(Replace(z2b79277e31("tstlnkFoundSearchWordLinkText"),"<!--%SearchWord%-->",zf2d3e7d08e(z87ccc4d532)))+(&hf77+273-&H1087)
 Loop
 Next
 If z31f9040642=z961b3357ec Then
 z25352d0d09=z25352d0d09 &"<br>&nbsp;<hr>" &z4279953079
 End If
 z5763e1ecf9=z4be8fcbf00(zcca66305f9(tstdbPostFieldPostDate),z2b79277e31("tstlngPostDateText"))
z4855155418=z4be8fcbf00(zcca66305f9(tstdbPostFieldModifyDate),z2b79277e31("tstlngModifyDateText"))
If z4855155418="" Then z4855155418=z2b79277e31("tstlngNeverModifiedText")
z766187f7a3=zed4320f240
 z766187f7a3=Replace(z766187f7a3,"<!--%Icon%-->",z0e9d44a4bb)
z766187f7a3=Replace(z766187f7a3,"<!--%Subject%-->",z844c67087f)
z766187f7a3=Replace(z766187f7a3,"<!--%PostLink%-->",zc31bd7b382)
z766187f7a3=Replace(z766187f7a3,"<!--%Username%-->",z5b7c89c8d8)
z766187f7a3=Replace(z766187f7a3,"<!--%Message%-->",z25352d0d09)
z766187f7a3=Replace(z766187f7a3,"<!--%PostDate%-->",z5763e1ecf9)
z766187f7a3=Replace(z766187f7a3,"<!--%ModifyDate%-->",z4855155418)
zb0cc1f1bec.Append(z766187f7a3)
End If
 zcca66305f9.MoveNext
 If zcca66305f9.EOF Then Exit For
 Next
 End If
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\searchmain.html")
z1c126544a4=Replace(z1c126544a4,"<!--%ForumList%-->",za6b283449f)
z1c126544a4=Replace(z1c126544a4,"<!--%Author%-->",ze318365b1b)
z1c126544a4=Replace(z1c126544a4,"<!--%Subject%-->",zbfc53e5441)
z1c126544a4=Replace(z1c126544a4,"<!--%Message%-->",zc91daf7bfa)
z1c126544a4=Replace(z1c126544a4,"<!--%DayPrune%-->",z3ca40fd3ab)
z1c126544a4=Replace(z1c126544a4,"<!--%SearchList%-->",zb0cc1f1bec.ToString())
z1c126544a4=Replace(z1c126544a4,"<!--%ResultsFound%-->",Replace(z2b79277e31("tstlngResultsFound"),"<!--%ResultsFound%-->",z8277f97be6))
z1c126544a4=Replace(z1c126544a4,"<!--%PageNumberLink%-->",zc1b540a9c7)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Search&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 z05a110f4c4 zcca66305f9
 End Sub
 Sub zed73029eba
 Dim zcee920255e,zea668177bb,z29203c5c02,z9e4a2ac548
 Dim zbfa4c82c6b
 Dim zcca66305f9
 Dim zd38b036918,z697c41cd9d,zcb00582367,ze4c10fd009
 Dim zc1b540a9c7,z8ac5bb3cec
 Dim zebc2973c66,z71a1ab2fef,z6ad5695c30
 Dim z844c67087f,z0e9d44a4bb,z5b7c89c8d8,zb4b37c82b4,z3ebeaa4f75,z7bee735207,zd1423f8639,z02af392488,z537878c982,z2a420c3a0a,z25352d0d09,z5763e1ecf9,z4855155418
 Dim zfd86397985,z8863c23c87
 Dim zcfd609a75d
 Dim z08abd5d4ee,z4279953079
 Dim ze6621c5e1d
 z4279953079=zaa70a50e00(z60d9708bf1)
zcee920255e=Request.ServerVariables("QUERY_STRING")
z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9e4a2ac548=Request("page")
zbfa4c82c6b=z2b79277e31("tstcfgForum" &z29203c5c02 &"ForumName")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z31f9040642=z961b3357ec And InStr(Request.ServerVariables("HTTP_USER_AGENT"),zaa70a50e00("TWVkaWFwYXJ0bmVycy1Hb29nbGUg"))>(&hdb6+1725-&H1473) Then
 Else
 If Not za4716380cd(z29203c5c02,"R") Then
If zf88826d19f=(&h101a+69-&H105f) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(zcee920255e)
Else
 zfc48387d45 z2b79277e31("tstlngReadNoAccessError")
Exit Sub
 End If
 End If
 End If
 If z9e4a2ac548="" Or Not IsNumeric(z9e4a2ac548) Then
z9e4a2ac548=(&h542+33-&H562)
 Else
 z9e4a2ac548=Int(z9e4a2ac548)
End If
 ze6621c5e1d=z2b79277e31("tstcfgPostSortOrder")
If ze6621c5e1d="" Then
 ze6621c5e1d=tstdbPostTable &"." &tstdbPostFieldPostDate &" ASC"
 End If
 Set zcca66305f9=zb76ffc630e(z29203c5c02,zea668177bb,zea668177bb,Null,Null,Null,Null,Null,Null,Null,False,Null,Null,ze6621c5e1d,CInt(Session(tstUniqueBoardKey &"tstsesPostsPerPage")))
z86ff1488a7 zea668177bb
 If zcca66305f9.EOF Then
 zfc48387d45 z2b79277e31("tstlngPostNotFoundError")
Exit Sub
 End If
 If zcca66305f9.PageCount>(&hb73+5128-&H1f7a) then
 zcca66305f9.AbsolutePage=z9e4a2ac548
 else
 zcca66305f9.AbsolutePage=(&h1004+268-&H110f)
 end if
 If zcca66305f9.PageCount>(&h3af+4435-&H1501) Then
 ze4c10fd009=z2b79277e31("tstcfgMaxPagesonPageLink")
If z9e4a2ac548>(&h546+3820-&H1431) Then
 zc1b540a9c7="<a href=""" &z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;page=" &z9e4a2ac548-(&h3ad+3616-&H11cc) &""">" &z2b79277e31("tstlnkPreviousPageLinkText") &"</a> "
 End If
 z697c41cd9d=z9e4a2ac548-Int(((ze4c10fd009/(&h770+541-&H98b))+.5)-(&h9b5+1753-&H108d))
zcb00582367=z9e4a2ac548+Int(ze4c10fd009/(&hd9+4327-&H11be))
For zd38b036918=z697c41cd9d to zcb00582367
 If zd38b036918<(&h1a6b+2432-&H23ea) Then
 z697c41cd9d=z697c41cd9d+(&h4a9+5175-&H18df)
 If zcb00582367<zcca66305f9.PageCount Then
 zcb00582367=zcb00582367+(&h36d+5091-&H174f)
 End If
 Elseif zd38b036918>zcca66305f9.PageCount Then
 zcb00582367=zcb00582367-(&ha7+3503-&He55)
 If z697c41cd9d>(&h503+1602-&Hb44) Then
 z697c41cd9d=z697c41cd9d-(&h10c8+3613-&H1ee4)
 End If
 End If
 Next
 If z697c41cd9d>(&h944+526-&Hb51) Then
 zc1b540a9c7="<a href=""" &z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;page=1"">" &z2b79277e31("tstlnkFirstPageLinkText") &"</a> " &zc1b540a9c7
 End If
 z8ac5bb3cec=z2b79277e31("tstlnkNumberedPageLinkText")
For zd38b036918=z697c41cd9d to zcb00582367
 If z9e4a2ac548=zd38b036918 Then
 zc1b540a9c7=zc1b540a9c7 &Replace(z2b79277e31("tstlnkSelectedPageLinkText"),"<!--%PageNumber%-->",z9e4a2ac548) &" "
 Else
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;page=" &zd38b036918 &""">" &Replace(z8ac5bb3cec,"<!--%PageNumber%-->",zd38b036918) &"</a> "
 End If
 Next
 If z9e4a2ac548<zcca66305f9.PageCount Then
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;page=" &z9e4a2ac548+(&h1ced+1655-&H2363) &""">" &z2b79277e31("tstlnkNextPageLinkText") &"</a> "
 End If
 If zcb00582367<zcca66305f9.PageCount Then
 zc1b540a9c7=zc1b540a9c7 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;page=" &zcca66305f9.PageCount &""">" &z2b79277e31("tstlnkLastPageLinkText") &"</a>"
 End If
 End If
 z08abd5d4ee=z423e920736(zcca66305f9(tstdbPostFieldSubject))
z08abd5d4ee=z4e06689c9b(z08abd5d4ee)
zfd86397985=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\postslist.html")
Set zcfd609a75d=New z6a54e5afd0
 zebc2973c66=z2b79277e31("tstlnkGuestUsernameText")
z71a1ab2fef=z2b79277e31("tstlnkRegisteredUsernameText")
For zd38b036918=(&h189c+1157-&H1d20) to zcca66305f9.PageSize
 z844c67087f=z423e920736(zcca66305f9(tstdbPostFieldSubject))
z844c67087f=z4e06689c9b(z844c67087f)
z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &zcca66305f9(tstdbPostFieldIcon))
If z0e9d44a4bb="" Then z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &z2b79277e31("tstlngDefaultMessageIcon"))
z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
zb4b37c82b4=z423e920736(zcca66305f9(tstdbPostFieldGuestName))
If z5b7c89c8d8="" Then
 z5b7c89c8d8=Replace(zebc2973c66,"<!--%Username%-->",zb4b37c82b4)
Else
 z6ad5695c30=z71a1ab2fef
 z6ad5695c30=Replace(z6ad5695c30,"<!--%ProfileLink%-->",z51a0880992 &"?sub=view&amp;action=profile&amp;uid=" &zcca66305f9(tstdbPostFieldMemberID))
z6ad5695c30=Replace(z6ad5695c30,"<!--%Username%-->",z5b7c89c8d8)
z5b7c89c8d8=z6ad5695c30
 End If
 z5b7c89c8d8=z4e06689c9b(z5b7c89c8d8)
z3ebeaa4f75=z51a0880992 &"?sub=reply&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;pid=" &zcca66305f9(tstdbPostFieldID)
z2a420c3a0a=z51a0880992 &"?sub=sendemail&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;pid=" &zcca66305f9(tstdbPostFieldID)
z25352d0d09=z1aec8f0532(zcca66305f9(tstdbPostFieldMessage))
If z31f9040642=z961b3357ec And zd38b036918=(&h144+3319-&He3a) Then
 z25352d0d09=z25352d0d09 &z4279953079
 End If
 z5763e1ecf9=z4be8fcbf00(zcca66305f9(tstdbPostFieldPostDate),z2b79277e31("tstlngPostDateText"))
z4855155418=z4be8fcbf00(zcca66305f9(tstdbPostFieldModifyDate),z2b79277e31("tstlngModifyDateText"))
If z4855155418="" Then z4855155418=z2b79277e31("tstlngNeverModifiedText")
z02af392488=zcca66305f9(tstdbPostFieldActive)
z537878c982=""
 If(zcca66305f9(tstdbPostFieldMemberID)=zf88826d19f And zcca66305f9(tstdbPostFieldMemberID)<>(&h561+7129-&H213a))Or zcca66305f9(tstdbForumFieldModeratorID)=zf88826d19f Or Session(tstUniqueBoardKey &"tstsesAdmin") Then
z7bee735207=z2b79277e31("tstlnkModifyPostEnabled")
If zcca66305f9(tstdbPostFieldTopic) Then
If zcca66305f9(tstdbForumFieldModeratorID)=zf88826d19f Or Session(tstUniqueBoardKey &"tstsesAdmin") Then
If zcca66305f9(tstdbPostFieldActive) Then
z537878c982=z2b79277e31("tstlnkLockTopicEnabled")
z537878c982=Replace(z537878c982,"<!--%LockTopicLink%-->",z51a0880992 &"?sub=lock&amp;action=topics&amp;tid=" &zea668177bb)
Else
 z537878c982=z2b79277e31("tstlnkUnLockTopicEnabled")
z537878c982=Replace(z537878c982,"<!--%LockTopicLink%-->",z51a0880992 &"?sub=unlock&amp;action=topics&amp;tid=" &zea668177bb)
End If
 zd1423f8639=z2b79277e31("tstlnkDeletePostEnabled")
Else
 zd1423f8639=z2b79277e31("tstlnkDeletePostDisabled")
End If
 Else
 zd1423f8639=z2b79277e31("tstlnkDeletePostEnabled")
End If
 Else
 z7bee735207=z2b79277e31("tstlnkModifyPostDisabled")
If zcca66305f9(tstdbPostFieldTopic) Then
If zcca66305f9(tstdbPostFieldActive) Then
z537878c982=z2b79277e31("tstlnkLockTopicDisabled")
z537878c982=Replace(z537878c982,"<!--%LockTopicLink%-->",z51a0880992 &"?sub=lock&amp;action=topics&amp;tid=" &zea668177bb)
Else
 z537878c982=z2b79277e31("tstlnkUnLockTopicDisabled")
z537878c982=Replace(z537878c982,"<!--%LockTopicLink%-->",z51a0880992 &"?sub=unlock&amp;action=topics&amp;tid=" &zea668177bb)
End If
 End If
 zd1423f8639=z2b79277e31("tstlnkDeletePostDisabled")
End If
 zd1423f8639=Replace(zd1423f8639,"<!--%DeletePostLink%-->",z51a0880992 &"?sub=deleteconfirm&amp;action=posts&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;pid=" &zcca66305f9(tstdbPostFieldID))
z7bee735207=Replace(z7bee735207,"<!--%ModifyPostLink%-->",z51a0880992 &"?sub=show&amp;action=modify&amp;fid=" &z29203c5c02 &"&amp;tid=" &zea668177bb &"&amp;pid=" &zcca66305f9(tstdbPostFieldID))
z8863c23c87=zfd86397985
 z8863c23c87=Replace(z8863c23c87,"<!--%Subject%-->",z844c67087f)
z8863c23c87=Replace(z8863c23c87,"<!--%Icon%-->",z0e9d44a4bb)
z8863c23c87=Replace(z8863c23c87,"<!--%Username%-->",z5b7c89c8d8)
z8863c23c87=Replace(z8863c23c87,"<!--%ReplyLink%-->",z3ebeaa4f75)
z8863c23c87=Replace(z8863c23c87,"<!--%ModifyPostLink%-->",z7bee735207)
z8863c23c87=Replace(z8863c23c87,"<!--%LockTopicLink%-->",z537878c982)
z8863c23c87=Replace(z8863c23c87,"<!--%DeletePostLink%-->",zd1423f8639)
z8863c23c87=Replace(z8863c23c87,"<!--%SendEmailLink%-->",z2a420c3a0a)
z8863c23c87=Replace(z8863c23c87,"<!--%Message%-->",z25352d0d09)
z8863c23c87=Replace(z8863c23c87,"<!--%PostDate%-->",z5763e1ecf9)
z8863c23c87=Replace(z8863c23c87,"<!--%ModifyDate%-->",z4855155418)
zcfd609a75d.Append(z8863c23c87)
zcca66305f9.MoveNext
 If zcca66305f9.EOF Then Exit For
 Next
 Session(tstUniqueBoardKey &"tstsesCurrentForum")=zbfa4c82c6b
 Session(tstUniqueBoardKey &"tstsesCurrentForumID")=z29203c5c02
 Session(tstUniqueBoardKey &"tstsesCurrentTopic")=z08abd5d4ee
 Session(tstUniqueBoardKey &"tstsesCurrentTopicID")=zea668177bb
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\postsmain.html")
z1c126544a4=Replace(z1c126544a4,"<!--%TopicName%-->",z08abd5d4ee)
z1c126544a4=Replace(z1c126544a4,"<!--%PostList%-->",zcfd609a75d.ToString())
z1c126544a4=Replace(z1c126544a4,"<!--%PageNumberLink%-->",zc1b540a9c7)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=MainPost&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 z05a110f4c4 zcca66305f9
 End Sub
 Sub zc298e4053f
 Dim z29203c5c02,zea668177bb,z9fc73f1ad1
 Dim zcca66305f9
 Dim z84fa5eda0b,z473c138484,za2b1782287,z5b7c89c8d8,z3a8c5dc628,zb4b37c82b4
 Dim z54aef0d64a,z0e9d44a4bb,z57f08f595c,z8825a31cf0
 Dim zd38b036918
 z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z9fc73f1ad1="" Or Not IsNumeric(z9fc73f1ad1) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If za4716380cd(z29203c5c02,"P") Then
If zf88826d19f=(&h36a+2350-&Hc98) Then
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\guestpostnewreply.html")
Else
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\postnewreply.html")
End If
 z1c126544a4=z2f0fbca9f2(z1c126544a4,"message","<!--%Message%-->")
Else
 If zf88826d19f=(&h297+676-&H53b) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
Else
 zfc48387d45 z2b79277e31("tstlngReplyNoAccessError")
Exit Sub
 End If
 End If
 Set zcca66305f9=zb76ffc630e(Null,Null,z9fc73f1ad1,Null,Null,Null,Null,Null,Null,Null,False,Null,Null,Null,-(&h154+5611-&H173e))
If zcca66305f9.EOF Then
 zfc48387d45 z2b79277e31("tstlngPostNotFoundError")
Exit Sub
 End If
 If Not zcca66305f9(tstdbPostFieldActive) Then
zfc48387d45 z2b79277e31("tstlngTopicLockedError")
Exit Sub
 End If
 z84fa5eda0b=z423e920736(zcca66305f9(tstdbPostFieldSubject))
z84fa5eda0b=z4e06689c9b(z84fa5eda0b)
If Left(z84fa5eda0b,Len(z2b79277e31("tstcfgReplyPrefix")))<>z2b79277e31("tstcfgReplyPrefix") Then
z84fa5eda0b=z2b79277e31("tstcfgReplyPrefix") &" " &z84fa5eda0b
 End If
 z473c138484=z1aec8f0532(zcca66305f9(tstdbPostFieldMessage))
z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
If z5b7c89c8d8="" Then z5b7c89c8d8=z423e920736(zcca66305f9(tstdbPostFieldGuestName))
z05a110f4c4 zcca66305f9
 za2b1782287=z2b79277e31("tstlngReplyBodyText")
If za2b1782287<>"" Then
 za2b1782287=Replace(za2b1782287,"<!--%Username%-->",z5b7c89c8d8)
za2b1782287=Replace(za2b1782287,"<!--%Message%-->",z473c138484)
End If
 z1c126544a4=Replace(z1c126544a4,"<!--%ForumID%-->",z29203c5c02)
z1c126544a4=Replace(z1c126544a4,"<!--%TopicID%-->",zea668177bb)
z1c126544a4=Replace(z1c126544a4,"<!--%PostID%-->",z9fc73f1ad1)
z1c126544a4=Replace(z1c126544a4,"<!--%QueryString%-->",zab2d4505d1(Request.ServerVariables("QUERY_STRING")))
z1c126544a4=Replace(z1c126544a4,"<!--%Username%-->",z423e920736(Session(tstUniqueBoardKey &"tstsesUsername")))
If Session(tstUniqueBoardKey &"tempPostQueryString")=Request.ServerVariables("QUERY_STRING") Then
zb4b37c82b4=Session(tstUniqueBoardKey &"tempPostGuestName")
z84fa5eda0b=Session(tstUniqueBoardKey &"tempPostSubject")
z473c138484=Session(tstUniqueBoardKey &"tempPostMessage")
z3a8c5dc628=Session(tstUniqueBoardKey &"tempPostIcon")
ElseIf Request("modify")<>"" Or Request("modify.x")<>"" Then
 zb4b37c82b4=Request("guestname")
z84fa5eda0b=Request("subject")
z473c138484=Request("message")
z3a8c5dc628=Request("icon")
Else
 zb4b37c82b4=Session(tstUniqueBoardKey &"tstsesUsername")
z473c138484=""
 z3a8c5dc628=z2b79277e31("tstlngDefaultMessageIcon")
End If
 If z3a8c5dc628="" Then
 z3a8c5dc628=z2b79277e31("tstlngDefaultMessageIcon")
End If
 z1c126544a4=Replace(z1c126544a4,"<!--%ReplySubject%-->",z84fa5eda0b)
z1c126544a4=Replace(z1c126544a4,"<!--%Message%-->",zab2d4505d1(z473c138484))
z1c126544a4=Replace(z1c126544a4,"<!--%GuestName%-->",zab2d4505d1(zb4b37c82b4))
For zd38b036918=(&h150+2757-&Hc14) to (&h1ca3+2201-&H2532)
 z0e9d44a4bb=z2b79277e31("tstlngSelectMessageIcon" &zd38b036918)
If zd38b036918=Int(z3a8c5dc628) Then
z0e9d44a4bb=Replace(z0e9d44a4bb,"<!--%SelectedMessageIconText%-->",z2b79277e31("tstlngSelectedMessageIconText"))
Else
 z0e9d44a4bb=Replace(z0e9d44a4bb,"<!--%SelectedMessageIconText%-->","")
End If
 z57f08f595c=z57f08f595c &z0e9d44a4bb
 Next
 If Session(tstUniqueBoardKey &"tstsesIncludeSignature") Then
z54aef0d64a="checked"
 Else
 z54aef0d64a=""
 End If
 If Session(tstUniqueBoardKey &"tstsesNotifyDefault") Then
z8825a31cf0="checked"
 Else
 z8825a31cf0=""
 End If
 z1c126544a4=Replace(z1c126544a4,"<!--%ReplyMessage%-->",za2b1782287)
z1c126544a4=Replace(z1c126544a4,"<!--%IncludeSig%-->",z54aef0d64a)
z1c126544a4=Replace(z1c126544a4,"<!--%NotifyDefault%-->",z8825a31cf0)
z1c126544a4=Replace(z1c126544a4,"<!--%MessageIconList%-->",z57f08f595c)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Post&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 Response.CacheControl="no-cache"
 Response.AddHeader "Pragma","no-cache"
 End Sub
 Sub zb30f0f01af
 Dim zf7494680f6
 Dim z29203c5c02,zea668177bb,z9fc73f1ad1,z894da14759,z0cc82d0440,z4ea1b0aa78,zbfc53e5441,zc91daf7bfa,zc4a5ca9c2d,zc202c93174
 Dim z71cbb0fa33
 zf7494680f6=Request("preview")
z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
z4ea1b0aa78=Request("icon")
z894da14759=Request("guestname")
z0cc82d0440=zf88826d19f
 zbfc53e5441=Request("subject")
zc91daf7bfa=Request("message")
zc4a5ca9c2d=Request("notify")
zc202c93174=Request("includesig")
Session(tstUniqueBoardKey &"tempPostGuestName")=z894da14759
 Session(tstUniqueBoardKey &"tempPostSubject")=zbfc53e5441
 Session(tstUniqueBoardKey &"tempPostMessage")=zc91daf7bfa
 Session(tstUniqueBoardKey &"tempPostIcon")=z4ea1b0aa78
 Session(tstUniqueBoardKey &"tempPostQueryString")=Request("querystring")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z9fc73f1ad1="" Or Not IsNumeric(z9fc73f1ad1) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If Not za4716380cd(z29203c5c02,"P") Then
If z0cc82d0440=(&h1f7+8112-&H21a7) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request("querystring"))
Else
 zfc48387d45 z2b79277e31("tstlngReplyNoAccessError")
Exit Sub
 End If
 End If
 If z0cc82d0440=(&h126a+4626-&H247c) Then
 If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z894da14759,tstdbPostFieldGuestNameFriendly,tstdbPostFieldGuestNameLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zbfc53e5441,tstdbPostFieldSubjectFriendly,tstdbPostFieldSubjectLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zc91daf7bfa,tstdbPostFieldMessageFriendly,tstdbPostFieldMessageLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 If zf7494680f6="True" Then
 z0e9e0faba8 "posts"
 Exit Sub
 End If
 zc91daf7bfa=zbede91cbb3(zc91daf7bfa)
If z4ea1b0aa78="" Then z4ea1b0aa78=z2b79277e31("tstlngDefaultMessageIcon")
If zc4a5ca9c2d="True" Then
 zc4a5ca9c2d=True
 Else
 zc4a5ca9c2d=False
 End If
 If zc202c93174="True" Then
 zc91daf7bfa=zc91daf7bfa &Replace(Session(tstUniqueBoardKey &"tstsesSignature"),zeb4424eb6e,"")
End If
 If z71cbb0fa33="" Then z71cbb0fa33=z0d07400a80(z29203c5c02,zea668177bb,z9fc73f1ad1,z0cc82d0440,z894da14759,z4ea1b0aa78,zbfc53e5441,zc91daf7bfa,zc4a5ca9c2d)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 Session(tstUniqueBoardKey &"tempPostGuestName")=""
 Session(tstUniqueBoardKey &"tempPostSubject")=""
 Session(tstUniqueBoardKey &"tempPostMessage")=""
 Session(tstUniqueBoardKey &"tempPostIcon")=""
 Session(tstUniqueBoardKey &"tempPostQueryString")=""
 z05abc80a9d z51a0880992 &"?sub=show&action=posts&fid=" &z29203c5c02 &"&tid=" &zea668177bb
 End Sub
 Sub ze41952a32d
 Dim z29203c5c02,zea668177bb,z9fc73f1ad1
 Dim zcca66305f9
 Dim z844c67087f,z25352d0d09,zde22d774d6,zd19c1e5c9f,z5b7c89c8d8,z5763e1ecf9,z5fa3ab9f0b,z0e9d44a4bb,z57f08f595c,z290c787f9e
 Dim zd38b036918
 If zf88826d19f=(&h1d76+1450-&H2320) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z9fc73f1ad1="" Or Not IsNumeric(z9fc73f1ad1) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 Set zcca66305f9=zb76ffc630e(Null,Null,z9fc73f1ad1,Null,Null,Null,Null,Null,Null,Null,False,Null,Null,Null,-(&h4f+742-&H334))
If zcca66305f9.EOF Then
 zfc48387d45 z2b79277e31("tstlngPostNotFoundError")
Exit Sub
 End If
 zde22d774d6=zcca66305f9(tstdbPostFieldMemberID)
zd19c1e5c9f=zcca66305f9(tstdbForumFieldModeratorID)
z844c67087f=z423e920736(zcca66305f9(tstdbPostFieldSubject))
z25352d0d09=z423e920736(zcca66305f9(tstdbPostFieldMessage))
z5763e1ecf9=z423e920736(zcca66305f9(tstdbPostFieldPostDate))
z290c787f9e=zcca66305f9(tstdbPostFieldMailNotice)
z5fa3ab9f0b=zcca66305f9(tstdbPostFieldIcon)
z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
If z5b7c89c8d8="" Then z5b7c89c8d8=z423e920736(zcca66305f9(tstdbPostFieldGuestName))
z05a110f4c4 zcca66305f9
 If zd19c1e5c9f<>zf88826d19f And Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
If zde22d774d6=(&h145f+4618-&H2669) Or zde22d774d6<>zf88826d19f Then
 zfc48387d45 z2b79277e31("tstlngNotAuthorError")
Exit Sub
 End If
 End If
 If Session(tstUniqueBoardKey &"tempPostQueryString")=Request.ServerVariables("QUERY_STRING") Then
z844c67087f=zab2d4505d1(Session(tstUniqueBoardKey &"tempPostSubject"))
z25352d0d09=zab2d4505d1(Session(tstUniqueBoardKey &"tempPostMessage"))
z5fa3ab9f0b=Int(Session(tstUniqueBoardKey &"tempPostIcon"))
ElseIf Request("modify")<>"" Or Request("modify.x")<>"" Then
 z844c67087f=zab2d4505d1(Request("subject"))
z25352d0d09=zab2d4505d1(Request("message"))
z5fa3ab9f0b=Int(Request("icon"))
End If
 If z290c787f9e Then
 z290c787f9e="Checked"
 End If
 For zd38b036918=(&h18f5+1971-&H20a7) to (&h13f1+3260-&H20a3)
 z0e9d44a4bb=z2b79277e31("tstlngSelectMessageIcon" &zd38b036918)
If zd38b036918=z5fa3ab9f0b Then
 z0e9d44a4bb=Replace(z0e9d44a4bb,"<!--%SelectedMessageIconText%-->",z2b79277e31("tstlngSelectedMessageIconText"))
Else
 z0e9d44a4bb=Replace(z0e9d44a4bb,"<!--%SelectedMessageIconText%-->","")
End If
 z57f08f595c=z57f08f595c &z0e9d44a4bb
 Next
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\modifypost.html")
z2f0fbca9f2 z1c126544a4,"message","<!--%ReplyMessage%-->"
 z1c126544a4=Replace(z1c126544a4,"<!--%ForumID%-->",z29203c5c02)
z1c126544a4=Replace(z1c126544a4,"<!--%TopicID%-->",zea668177bb)
z1c126544a4=Replace(z1c126544a4,"<!--%PostID%-->",z9fc73f1ad1)
z1c126544a4=Replace(z1c126544a4,"<!--%UserID%-->",zde22d774d6)
z1c126544a4=Replace(z1c126544a4,"<!--%Username%-->",z5b7c89c8d8)
z1c126544a4=Replace(z1c126544a4,"<!--%ReplySubject%-->",z844c67087f)
z1c126544a4=Replace(z1c126544a4,"<!--%ReplyMessage%-->",z25352d0d09)
z1c126544a4=Replace(z1c126544a4,"<!--%PostDate%-->",z5763e1ecf9)
z1c126544a4=Replace(z1c126544a4,"<!--%MessageIconList%-->",z57f08f595c)
z1c126544a4=Replace(z1c126544a4,"<!--%NotifyDefault%-->",z290c787f9e)
z1c126544a4=Replace(z1c126544a4,"<!--%IncludeSig%-->","")
z1c126544a4=Replace(z1c126544a4,"<!--%QueryString%-->",Request.ServerVariables("QUERY_STRING"))
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=modify&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 Response.CacheControl="no-cache"
 Response.AddHeader "Pragma","no-cache"
 End Sub
 Sub zdc0daa36ba
 Dim zf7494680f6
 Dim z29203c5c02,zea668177bb,z9fc73f1ad1,z0cc82d0440,zbfc53e5441,zc91daf7bfa,z4ea1b0aa78,zc4a5ca9c2d,zc202c93174
 Dim z71cbb0fa33
 zf7494680f6=Request("preview")
z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
z0cc82d0440=Request("uid")
zbfc53e5441=Request("subject")
zc91daf7bfa=Request("message")
z4ea1b0aa78=Request("icon")
zc4a5ca9c2d=Request("notify")
zc202c93174=Request("includesig")
Session(tstUniqueBoardKey &"tempPostSubject")=zbfc53e5441
 Session(tstUniqueBoardKey &"tempPostMessage")=zc91daf7bfa
 Session(tstUniqueBoardKey &"tempPostIcon")=z4ea1b0aa78
 Session(tstUniqueBoardKey &"tempPostQueryString")=Request("querystring")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z9fc73f1ad1="" Or Not IsNumeric(z9fc73f1ad1) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z4ea1b0aa78="" Then z4ea1b0aa78=z2b79277e31("tstlngDefaultMessageIcon")
If zc4a5ca9c2d="True" Then
 zc4a5ca9c2d=True
 Else
 zc4a5ca9c2d=False
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zbfc53e5441,tstdbPostFieldSubjectFriendly,tstdbPostFieldSubjectLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zc91daf7bfa,tstdbPostFieldMessageFriendly,tstdbPostFieldMessageLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 If zf7494680f6="True" Then
 z0e9e0faba8 "modify"
 Exit Sub
 End If
 zc91daf7bfa=zbede91cbb3(zc91daf7bfa)
If zc202c93174="True" Then
 zc91daf7bfa=zc91daf7bfa &Replace(Session(tstUniqueBoardKey &"tstsesSignature"),zeb4424eb6e,"")
End If
 If z71cbb0fa33="" Then z71cbb0fa33=zc810b06458(z29203c5c02,zea668177bb,z9fc73f1ad1,zf88826d19f,Null,z4ea1b0aa78,zbfc53e5441,zc91daf7bfa,zc4a5ca9c2d,Null,Null)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 z05abc80a9d z51a0880992 &"?sub=show&action=posts&fid=" &z29203c5c02 &"&tid=" &zea668177bb
 End Sub
 Sub z5a2f41b07b
 Dim z29203c5c02,zea668177bb,z9fc73f1ad1
 Dim z6234291e28
 z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z9fc73f1ad1="" Or Not IsNumeric(z9fc73f1ad1) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 z6234291e28=z2b79277e31("tstlngDeleteConfirmation")
z6234291e28=Replace(z6234291e28,"<!--%ForumID%-->",z29203c5c02)
z6234291e28=Replace(z6234291e28,"<!--%TopicID%-->",zea668177bb)
z6234291e28=Replace(z6234291e28,"<!--%PostID%-->",z9fc73f1ad1)
z613cd748c4 z6234291e28
 End Sub
 Sub z6ab5274546
 Dim z29203c5c02,zea668177bb,z9fc73f1ad1
 Dim z71cbb0fa33
 z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If zea668177bb="" Or Not IsNumeric(zea668177bb) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z9fc73f1ad1="" Or Not IsNumeric(z9fc73f1ad1) Then
zfc48387d45 z2b79277e31("tstlngInvalidPOSTorGET")
Exit Sub
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zc810b06458(z29203c5c02,zea668177bb,z9fc73f1ad1,zf88826d19f,Null,Null,Null,Null,Null,Null,True)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 Session(tstUniqueBoardKey &"tstsesCurrentForum")=z2b79277e31("tstcfgForum" &z29203c5c02 &"ForumName")
Session(tstUniqueBoardKey &"tstsesCurrentForumID")=z29203c5c02
 Session(tstUniqueBoardKey &"tstsesCurrentTopic")=""
 z613cd748c4 z2b79277e31("tstlngDeleteSuccessful")
End Sub
 Sub z0e9e0faba8(z4946ec3d61)
Dim zea668177bb,z29203c5c02,z9fc73f1ad1,z179a77b9a4,zbfc53e5441,z78ce31f976,z894da14759,z44f02bdd68,z4773a5e2f8,zc4a5ca9c2d,zc91daf7bfa,zdd76b70d65
 Dim z0e9d44a4bb,z5b7c89c8d8,z3ebeaa4f75,zf2ee506e98,z2a420c3a0a,z70dea0fc8d,z4855155418,z8546e9ff6c
 Dim zfd86397985,z8863c23c87
 z29203c5c02=Request("fid")
zea668177bb=Request("tid")
z9fc73f1ad1=Request("pid")
z179a77b9a4=Request("uid")
zbfc53e5441=z423e920736(Request("subject"))
zc91daf7bfa=Request("message")
z4773a5e2f8=Request("includesig")
z78ce31f976=Request("icon")
zc4a5ca9c2d=Request("notify")
zdd76b70d65=Request("postdate")
z894da14759=z423e920736(Request("guestname"))
z44f02bdd68=z423e920736(Request("username"))
If z4946ec3d61="modify" Then
 z4855155418=z4be8fcbf00(Now(),z2b79277e31("tstlngModifyDateText"))
zdd76b70d65=z4be8fcbf00(zdd76b70d65,z2b79277e31("tstlngPostDateText"))
Else
 z4855155418=z2b79277e31("tstlngNeverModifiedText")
zdd76b70d65=z4be8fcbf00(Now(),z2b79277e31("tstlngPostDateText"))
End If
 If zf88826d19f=(&h1802+1479-&H1dc9) Then
 z5b7c89c8d8=Replace(z2b79277e31("tstlnkGuestUsernameText"),"<!--%Username%-->",z894da14759)
Else
 z5b7c89c8d8=z2b79277e31("tstlnkRegisteredUsernameText")
If z179a77b9a4="" Then
 z179a77b9a4=zf88826d19f
 z44f02bdd68=Session(tstUniqueBoardKey &"tstsesUsername")
End If
 z5b7c89c8d8=Replace(z5b7c89c8d8,"<!--%ProfileLink%-->",z51a0880992 &"?sub=view&amp;action=profile&amp;uid=" &z179a77b9a4)
z5b7c89c8d8=Replace(z5b7c89c8d8,"<!--%Username%-->",z44f02bdd68)
End If
 z5b7c89c8d8=z4e06689c9b(z5b7c89c8d8)
zc91daf7bfa=zbede91cbb3(zc91daf7bfa)
z70dea0fc8d=zc91daf7bfa
 If z4773a5e2f8="True" Then
 z70dea0fc8d=z70dea0fc8d &Replace(Session(tstUniqueBoardKey &"tstsesSignature"),zeb4424eb6e,"")
End If
 z70dea0fc8d=z1aec8f0532(z70dea0fc8d)
z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &z78ce31f976)
If z0e9d44a4bb="" Then z0e9d44a4bb=z2b79277e31("tstlngMessageIcon" &z2b79277e31("tstlngDefaultMessageIcon"))
z3ebeaa4f75=z51a0880992 &"?sub=tstlngPreviewModeError&amp;action=x_tstDoError"
 zf2ee506e98=z51a0880992 &"?sub=tstlngPreviewModeError&amp;action=x_tstDoError"
 z2a420c3a0a=z51a0880992 &"?sub=tstlngPreviewModeError&amp;action=x_tstDoError"
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\preview.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Subject%-->",zbfc53e5441)
z1c126544a4=Replace(z1c126544a4,"<!--%Icon%-->",z0e9d44a4bb)
z1c126544a4=Replace(z1c126544a4,"<!--%Username%-->",z5b7c89c8d8)
z1c126544a4=Replace(z1c126544a4,"<!--%ReplyLink%-->",z3ebeaa4f75)
z1c126544a4=Replace(z1c126544a4,"<!--%ModifyLink%-->",zf2ee506e98)
z1c126544a4=Replace(z1c126544a4,"<!--%SendEmailLink%-->",z2a420c3a0a)
z1c126544a4=Replace(z1c126544a4,"<!--%PreviewMessage%-->",z70dea0fc8d)
z1c126544a4=Replace(z1c126544a4,"<!--%PreviewSubject%-->",z4e06689c9b(zbfc53e5441))
z1c126544a4=Replace(z1c126544a4,"<!--%PostDate%-->",zdd76b70d65)
z1c126544a4=Replace(z1c126544a4,"<!--%ModifyDate%-->",z4855155418)
z1c126544a4=Replace(z1c126544a4,"<!--%Action%-->",z4946ec3d61)
z1c126544a4=Replace(z1c126544a4,"<!--%IconVal%-->",z78ce31f976)
z1c126544a4=Replace(z1c126544a4,"<!--%GuestName%-->",z894da14759)
z1c126544a4=Replace(z1c126544a4,"<!--%Message%-->",zab2d4505d1(zc91daf7bfa))
z1c126544a4=Replace(z1c126544a4,"<!--%IncludeSig%-->",z4773a5e2f8)
z1c126544a4=Replace(z1c126544a4,"<!--%Notify%-->",zc4a5ca9c2d)
z1c126544a4=Replace(z1c126544a4,"<!--%QueryString%-->",Request("querystring"))
z1c126544a4=Replace(z1c126544a4,"<!--%ForumID%-->",z29203c5c02)
z1c126544a4=Replace(z1c126544a4,"<!--%TopicID%-->",zea668177bb)
z1c126544a4=Replace(z1c126544a4,"<!--%PostID%-->",z9fc73f1ad1)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Preview&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub zbad0ddf4c6
 If z2b79277e31("tstcfgTakingNewRegistrations")<>"True" Then
 zfc48387d45 z2b79277e31("tstcfgNoRegistrationsError")
Exit Sub
 End If
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\register.html")
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Register&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub zc2a89e0dd2
 Dim z44f02bdd68,z001cf00a5b,z0b70b41846
 Dim zca55268ebc
 Dim z25352d0d09
 Dim z71cbb0fa33
 z44f02bdd68=Request("username")
z001cf00a5b=Request("password")
z0b70b41846=Request("email")
If z2b79277e31("tstcfgTakingNewRegistrations")<>"True" Then
 zfc48387d45 z2b79277e31("tstlngNoRegistrationsError")
Exit Sub
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z44f02bdd68,tstdbMemberFieldUsernameFriendly,tstdbMemberFieldUsernameLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z001cf00a5b,tstdbMemberFieldPasswordFriendly,tstdbMemberFieldPasswordLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z0b70b41846,tstdbMemberFieldEmailFriendly,tstdbMemberFieldEmailLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 If z001cf00a5b<>Request("confirmpw") Then
zfc48387d45 z2b79277e31("tstlngVerifyPasswordError")
Exit Sub
 End If
 If Not z1fd942829e(z0b70b41846) Then
zfc48387d45 z2b79277e31("tstlngVerifyEmailError")
Exit Sub
 End If
 If z71cbb0fa33="" Then z71cbb0fa33=z32fca02bcb(-(&h3f3+5110-&H17e8),Null,Null,z44f02bdd68,z001cf00a5b,z0b70b41846,Null,Null,Null,Null,Null,Null,Null)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 zcc202045a5 z44f02bdd68,z001cf00a5b
 z25352d0d09=z2b79277e31("tstlngRegistrationSuccess") &"<br>"
 zca55268ebc=z2b79277e31("tstcfgRegisterMessage")
zca55268ebc=Replace(zca55268ebc,"<!--%Email%-->",z0b70b41846)
zca55268ebc=Replace(zca55268ebc,"<!--%Username%-->",z44f02bdd68)
zca55268ebc=Replace(zca55268ebc,"<!--%Password%-->",z001cf00a5b)
If shrGetConfig("tstcfgToastEmailURL")="<Auto>" Or shrGetConfig("tstcfgToastEmailURL")="" Then
 zca55268ebc=Replace(zca55268ebc,"<!--%ProfileLink%-->","http://" &Request.ServerVariables("SERVER_NAME") &Mid(Request.ServerVariables("SCRIPT_NAME"),(&h64b+1036-&Ha56),InStrRev(Request.ServerVariables("SCRIPT_NAME"),"/")) &tstToastScriptName &"?sub=modify&amp;action=profile")
Else
 zca55268ebc=Replace(zca55268ebc,"<!--%ProfileLink%-->",shrGetConfig("tstcfgToastEmailURL") &"?sub=modify&amp;action=profile")
End If
 zca55268ebc=Replace(zca55268ebc,"<!--%BR%-->",vbCrLf)
If z75665b832a(z2b79277e31("tstcfgEmailGateway"),z2b79277e31("tstcfgFromName"),z2b79277e31("tstcfgFromAddress"),z0b70b41846,z2b79277e31("tstcfgRegisterSubject"),zca55268ebc)="" Then
 zca55268ebc=z2b79277e31("tstlngEmailSent")
zca55268ebc=Replace(zca55268ebc,"<!--%Email%-->",z0b70b41846)
z25352d0d09=z25352d0d09 &zca55268ebc
 Else
 zca55268ebc=z2b79277e31("tstlngEmailError")
zca55268ebc=Replace(zca55268ebc,"<!--%Email%-->",z0b70b41846)
z25352d0d09=z25352d0d09 &zca55268ebc
 End If
 z613cd748c4 z25352d0d09
 End Sub
 Sub z21d09443ce
 Dim z44f02bdd68,z001cf00a5b,z2f07b1ef62
 Dim z6a3c64c9b1
 z44f02bdd68=Request.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login")("username")
z2f07b1ef62=Request("return")
z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\login.html")
z1c126544a4=Replace(z1c126544a4,"<!--%ReturnPage%-->",zab2d4505d1(z2f07b1ef62))
z1c126544a4=Replace(z1c126544a4,"<!--%Username%-->",z44f02bdd68)
z1c126544a4=Replace(z1c126544a4,"<!--%Password%-->",z001cf00a5b)
z1c126544a4=Replace(z1c126544a4,"<!--%SavePassword%-->",z6a3c64c9b1)
z1c126544a4=Replace(z1c126544a4,"<!--%LostPasswordLink%-->","<a href=""" &z51a0880992 &"?action=lostpassword"">" &z2b79277e31("tstlnkLostPasswordLinkText") &"</a>")
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Login&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub z59aa9dd2ec
 Dim z44f02bdd68,z001cf00a5b,z2f07b1ef62,z774641b4ee
 Dim z71cbb0fa33
 z44f02bdd68=Request("username")
z001cf00a5b=Request("password")
z774641b4ee=Request("remember")
z2f07b1ef62=Request("return")
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z44f02bdd68,tstdbMemberFieldUsernameFriendly,tstdbMemberFieldUsernameLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z001cf00a5b,tstdbMemberFieldPasswordFriendly,tstdbMemberFieldPasswordLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 If zcc202045a5(z44f02bdd68,z001cf00a5b) Then
If z774641b4ee="True" Then
 Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login")("username")=z44f02bdd68
 Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login")("password")=z0e88947362(z2363c3e941,z001cf00a5b)
Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login").Expires=DateAdd("m",(&h150c+4351-&H260a),Now())
Else
 Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login").Expires=DateAdd("m",-(&h1b7c+1022-&H1f79),Now())
End If
 If z2f07b1ef62<>"" And InStr(z2f07b1ef62,"action=logout")=(&h30f+5845-&H19e4) Then
 z05abc80a9d z51a0880992 &"?" &z2f07b1ef62
 Else
 z05abc80a9d z51a0880992
 End If
 Else
 Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login").Expires=DateAdd("m",-(&h13da+1891-&H1b3c),Now())
zfc48387d45 z2b79277e31("tstlngLoginFailedError")
Exit Sub
 End If
 End Sub
 Sub z9d05cc8b25
 Dim z8e5acd0ea0
 If Request("sub")="done" Then
 z613cd748c4 z2b79277e31("tstlngLoggedOut")
Else
 Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login").Expires=DateAdd("m",-(&h811+5762-&H1e92),Now())
z1bbae28466
 For Each z8e5acd0ea0 In Session.Contents
 Session(z8e5acd0ea0)=""
 Next
 z05abc80a9d z51a0880992 &"?action=logout&sub=done"
 End If
 End Sub
 Const z60d9708bf1="PGJyPiZuYnNwOzxocj48Y2VudGVyPjxzY3JpcHQgdHlwZT0idGV4dC9qYXZhc2NyaXB0Ij48IS0tDQpnb29nbGVfYWRfY2xpZW50ID0gInB1Yi02NTExNTAxMTMwMjgwMTUxIjtnb29nbGVfYWx0ZXJuYXRlX2FkX3VybCA9ICJodHRwOi8vd3d3LnRvYXN0Zm9ydW1zLmNvbS9wc2EuYXNwIjtnb29nbGVfYWRfd2lkdGggPSA3Mjg7Z29vZ2xlX2FkX2hlaWdodCA9IDkwO2dvb2dsZV9hZF9mb3JtYXQgPSAiNzI4eDkwX2FzIjtnb29nbGVfYWRfY2hhbm5lbCA9IiI7Z29vZ2xlX2NvbG9yX2JvcmRlciA9ICJDQ0NDQ0MiO2dvb2dsZV9jb2xvcl9iZyA9ICJGRkZGRkYiO2dvb2dsZV9jb2xvcl9saW5rID0gIjAwMDAwMCI7Z29vZ2xlX2NvbG9yX3VybCA9ICI2NjY2NjYiO2dvb2dsZV9jb2xvcl90ZXh0ID0gIjMzMzMzMyI7Ly8tLT48L3NjcmlwdD48c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSJodHRwOi8vcGFnZWFkMi5nb29nbGVzeW5kaWNhdGlvbi5jb20vcGFnZWFkL3Nob3dfYWRzLmpzIj48L3NjcmlwdD48L2NlbnRlcj4g"
 Sub z8c8ba448bf
 Dim zcca66305f9
 Dim z68db608c44,z592e048640,z3090078ab5,z76844678c8,z068600d1b4,zb835606b12,z8546e9ff6c,z54aef0d64a,z8825a31cf0
 If zf88826d19f=(&h16f0+2195-&H1f83) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zcca66305f9=z43b73c2129(zf88826d19f,Null,Null,Null,Null,Null)
If Not zcca66305f9.EOF Then
 z68db608c44=z423e920736(zcca66305f9(tstdbMemberFieldFName))
z592e048640=z423e920736(zcca66305f9(tstdbMemberFieldLName))
z3090078ab5=z423e920736(zcca66305f9(tstdbMemberFieldEmail))
If z423e920736(zcca66305f9(tstdbMemberFieldHideEmail))="True" Then
 z76844678c8="Checked"
 Else
 z76844678c8=""
 End If
 z068600d1b4=z423e920736(zcca66305f9(tstdbMemberFieldICQ))
zb835606b12=z423e920736(zcca66305f9(tstdbMemberFieldHomepage))
z8546e9ff6c=zcca66305f9(tstdbMemberFieldSignature)
z8546e9ff6c=Replace(z8546e9ff6c,zeb4424eb6e,"")
If zcca66305f9(tstdbMemberFieldIncludeSignature) Then
z54aef0d64a="Checked"
 Else
 z54aef0d64a=""
 End If
 If zcca66305f9(tstdbMemberFieldNotifyDefault) Then
z8825a31cf0="Checked"
 Else
 z8825a31cf0=""
 End If
 Else
 zfc48387d45 z2b79277e31("tstlngUserNotFoundError")
Exit Sub
 End If
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\modifyprofile.html")
z1c126544a4=z2f0fbca9f2(z1c126544a4,"signature",zab2d4505d1(z8546e9ff6c))
z1c126544a4=Replace(z1c126544a4,"<!--%FirstName%-->",z68db608c44)
z1c126544a4=Replace(z1c126544a4,"<!--%LastName%-->",z592e048640)
z1c126544a4=Replace(z1c126544a4,"<!--%Email%-->",z3090078ab5)
z1c126544a4=Replace(z1c126544a4,"<!--%HideEmail%-->",z76844678c8)
z1c126544a4=Replace(z1c126544a4,"<!--%ICQNumber%-->",z068600d1b4)
z1c126544a4=Replace(z1c126544a4,"<!--%Homepage%-->",zb835606b12)
z1c126544a4=Replace(z1c126544a4,"<!--%IncludeSig%-->",z54aef0d64a)
z1c126544a4=Replace(z1c126544a4,"<!--%NotifyDefault%-->",z8825a31cf0)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=Profile&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 z05a110f4c4 zcca66305f9
 End Sub
 Sub zf9a6f4bd9d
 Dim z0cc82d0440,z1bc295b017,z631ef5b0c5,z001cf00a5b,z0b70b41846,zdec87a543d,z6be941f1ea,z72d5e3ac64,zc202c93174,z1911ace0fa,z1cc8a05f43,zd5927896d4,z8533fd0de9
 Dim z71cbb0fa33
 If zf88826d19f=(&h17c3+756-&H1ab7) Then
 z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z0cc82d0440=zf88826d19f
 z1bc295b017=Request("fname")
z631ef5b0c5=Request("lname")
z001cf00a5b=Request("password")
z0b70b41846=Request("email")
zdec87a543d=Request("hideemail")
z6be941f1ea=Request("icq")
z72d5e3ac64=Request("homepage")
zc202c93174=Request("signature")
z1911ace0fa=Request("skin")
z1cc8a05f43=Request("includesig")
zd5927896d4=Request("notifydefault")
z8533fd0de9=Request("unsave")
zc202c93174=zbede91cbb3(zc202c93174)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z1bc295b017,tstdbMemberFieldFNameFriendly,tstdbMemberFieldFNameLen,True)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z631ef5b0c5,tstdbMemberFieldLNameFriendly,tstdbMemberFieldLNameLen,True)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z001cf00a5b,tstdbMemberFieldPasswordFriendly,tstdbMemberFieldPasswordLen,True)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z0b70b41846,tstdbMemberFieldEmailFriendly,tstdbMemberFieldEmailLen,False)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z6be941f1ea,tstdbMemberFieldICQFriendly,tstdbMemberFieldICQLen,True)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z72d5e3ac64,tstdbMemberFieldHomepageFriendly,tstdbMemberFieldHomepageLen,True)
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(zc202c93174,tstdbMemberFieldSignatureFriendly,z2b79277e31("tstcfgMaxSignatureLength"),True)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 If z001cf00a5b<>Request("confirmpw") Then
zfc48387d45 z2b79277e31("tstlngVerifyPasswordError")
Exit Sub
 End If
 If Not z1fd942829e(z0b70b41846) Then
zfc48387d45 z2b79277e31("tstlngVerifyEmailError")
Exit Sub
 End If
 If z001cf00a5b="" Then z001cf00a5b=Null
 If zdec87a543d="" Then
 zdec87a543d=False
 Else
 zdec87a543d=True
 End If
 If z1cc8a05f43="" Then
 z1cc8a05f43=False
 Else
 z1cc8a05f43=True
 End If
 If zd5927896d4="" Then
 zd5927896d4=False
 Else
 zd5927896d4=True
 End If
 If InStr(z2b79277e31("tstcfgSkinsAvailable"),z1911ace0fa)=(&h13b3+4289-&H2474) Or z1911ace0fa="" Then
 z1911ace0fa=z2b79277e31("tstcfgDefaultSkin")
End If
 If z71cbb0fa33="" Then z71cbb0fa33=zfdd5f559cf(z0cc82d0440,z1bc295b017,z631ef5b0c5,Null,z001cf00a5b,z0b70b41846,zdec87a543d,z6be941f1ea,z72d5e3ac64,zc202c93174,z1911ace0fa,z1cc8a05f43,zd5927896d4,Null,Null,Null)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 Session(tstUniqueBoardKey &"tstsesSkin")=z1911ace0fa
 ze7db80dbfc=z1911ace0fa
 If z8533fd0de9="True" Then
 Response.Cookies(z2b79277e31("tstcfgBoardTitle") &"Login").Expires=DateAdd("m",-(&h395+649-&H61d),Now())
End If
 Session(tstUniqueBoardKey &"tstsesSignature")=zc202c93174
 If z1cc8a05f43="True" Then
 Session(tstUniqueBoardKey &"tstsesIncludeSignature")=True
 Else
 Session(tstUniqueBoardKey &"tstsesIncludeSignature")=False
 End If
 If zd5927896d4="True" Then
 Session(tstUniqueBoardKey &"tstsesNotifyDefault")=True
 Else
 Session(tstUniqueBoardKey &"tstsesNotifyDefault")=False
 End If
 z613cd748c4 z2b79277e31("tstlngUpdateProfileSuccess")
End Sub
 Sub z71f64aa78e
 Dim z1911ace0fa
 Dim z0cc82d0440
 Dim z71cbb0fa33
 z1911ace0fa=Request("skin")
z0cc82d0440=zf88826d19f
 If InStr(z2b79277e31("tstcfgSkinsAvailable"),z1911ace0fa)=(&h1f27+1211-&H23e2) Then
 z1911ace0fa=z2b79277e31("tstcfgDefaultSkin")
End If
 If z0cc82d0440<>(&h273+2033-&Ha64) Then
 If z71cbb0fa33="" Then z71cbb0fa33=zfdd5f559cf(z0cc82d0440,Null,Null,Null,Null,Null,Null,Null,Null,Null,z1911ace0fa,Null,Null,Null,Null,Null)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 End If
 Session(tstUniqueBoardKey &"tstsesSkin")=z1911ace0fa
 ze7db80dbfc=z1911ace0fa
 z05abc80a9d z51a0880992 &"?" &Request("return")
End Sub
 Sub z6043ecba04
 Dim z0cc82d0440
 Dim zcca66305f9
 Dim z5b7c89c8d8,z68db608c44,z592e048640,z3090078ab5,z068600d1b4,zb835606b12,zd0479f0b55,ze7e9296041,z37c2ab73e3
 z0cc82d0440=Request("uid")
If Not IsNumeric(z0cc82d0440) Then
zfc48387d45 z2b79277e31("tstlngUserNotFoundError")
Exit Sub
 End If
 Set zcca66305f9=z43b73c2129(z0cc82d0440,Null,Null,Null,Null,Null)
If Not zcca66305f9.EOF Then
 z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
z68db608c44=z423e920736(zcca66305f9(tstdbMemberFieldFName))
z592e048640=z423e920736(zcca66305f9(tstdbMemberFieldLName))
If zcca66305f9(tstdbMemberFieldHideEmail) Then
z3090078ab5=z2b79277e31("tstlngHiddenEmailText")
Else
 z3090078ab5=z423e920736(zcca66305f9(tstdbMemberFieldEmail))
End If
 z3090078ab5=z149b606b96(z3090078ab5)
z068600d1b4=z423e920736(zcca66305f9(tstdbMemberFieldICQ))
zb835606b12=z149b606b96(z423e920736(zcca66305f9(tstdbMemberFieldHomepage)))
zd0479f0b55=z423e920736(zcca66305f9(tstdbMemberFieldPostCount))
ze7e9296041=z4be8fcbf00(z423e920736(zcca66305f9(tstdbMemberFieldLastLoginDate)),z2b79277e31("tstlngMemberLastLoginDateText"))
If ze7e9296041="" Then ze7e9296041=z2b79277e31("tstlngMemberNeverLoggedInText")
z37c2ab73e3=z4be8fcbf00(z423e920736(zcca66305f9(tstdbMemberFieldLastPostDate)),z2b79277e31("tstlngMemberLastPostDateText"))
If z37c2ab73e3="" Then z37c2ab73e3=z2b79277e31("tstlngMemberNeverPostedText")
Else
 zfc48387d45 z2b79277e31("tstlngProfileNotFoundError")
Exit Sub
 End If
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\viewprofile.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Username%-->",z5b7c89c8d8)
z1c126544a4=Replace(z1c126544a4,"<!--%FirstName%-->",z68db608c44)
z1c126544a4=Replace(z1c126544a4,"<!--%LastName%-->",z592e048640)
z1c126544a4=Replace(z1c126544a4,"<!--%Email%-->",z3090078ab5)
z1c126544a4=Replace(z1c126544a4,"<!--%ICQNumber%-->",z068600d1b4)
z1c126544a4=Replace(z1c126544a4,"<!--%Homepage%-->",zb835606b12)
z1c126544a4=Replace(z1c126544a4,"<!--%PostCount%-->",zd0479f0b55)
z1c126544a4=Replace(z1c126544a4,"<!--%LastLoginDate%-->",ze7e9296041)
z1c126544a4=Replace(z1c126544a4,"<!--%LastPostDate%-->",z37c2ab73e3)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=ViewProfile&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 z05a110f4c4 zcca66305f9
 End Sub
 Sub z69c9d5e091
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\lostpassword.html")
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?sub=LostPassword&amp;action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub z42a53ab869
 Dim z44f02bdd68
 Dim zcca66305f9
 Dim z6716f3fbac,z047d4b1cbe
 Dim z3090078ab5
 Dim z71cbb0fa33
 z44f02bdd68=Request("username")
If z71cbb0fa33="" Then z71cbb0fa33=zeac5c1e272(z44f02bdd68,tstdbMemberFieldUsernameFriendly,tstdbMemberFieldUsernameLen,False)
If z71cbb0fa33<>"" Then
 zfc48387d45 z71cbb0fa33
 Exit Sub
 End If
 Set zcca66305f9=z43b73c2129(Null,Null,Null,z44f02bdd68,Null,Null)
If Not zcca66305f9.EOF Then
 z6716f3fbac=zcca66305f9(tstdbMemberFieldEmail)
z047d4b1cbe=zcca66305f9(tstdbMemberFieldPassword)
Else
 zfc48387d45 z2b79277e31("tstlngUserNotFoundError")
Exit Sub
 End If
 z3090078ab5=z2b79277e31("tstcfgLostPasswordMessage")
z3090078ab5=Replace(z3090078ab5,"<!--%Username%-->",z44f02bdd68)
z3090078ab5=Replace(z3090078ab5,"<!--%Password%-->",z0e88947362(z2363c3e941,z047d4b1cbe))
z3090078ab5=Replace(z3090078ab5,"<!--%IPAddress%-->",Request.ServerVariables("REMOTE_ADDR"))
z3090078ab5=Replace(z3090078ab5,"<!--%BR%-->",vbCrLf)
z05a110f4c4 zcca66305f9
 If z75665b832a(z2b79277e31("tstcfgEmailGateway"),z2b79277e31("tstcfgFromName"),z2b79277e31("tstcfgFromAddress"),z6716f3fbac,z2b79277e31("tstcfgLostPasswordSubject"),z3090078ab5)="" Then
 z613cd748c4 z2b79277e31("tstlngLostPasswordSuccess")
Else
 zfc48387d45 z2b79277e31("tstlngEmailError")
Exit Sub
 End If
 End Sub
 Sub zf68119d687
 Dim z0af3bed337
 Dim z70b7e4261c,z5df68a1b5e
 z0af3bed337=Request("sub")
If z0af3bed337="" Then z0af3bed337="NotFound"
 z70b7e4261c=z2b79277e31("tstlngHelp" &z0af3bed337 &"Subject")
z5df68a1b5e=z2b79277e31("tstlngHelp" &z0af3bed337 &"Message")
If z70b7e4261c="" Then z70b7e4261c=z2b79277e31("tstlngHelpNotFoundSubject")
If z5df68a1b5e="" Then z5df68a1b5e=z2b79277e31("tstlngHelpNotFoundMessage")
z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\help.html")
z1c126544a4=Replace(z1c126544a4,"<!--%HelpSubject%-->",z2b79277e31("tstlngHelp" &z0af3bed337 &"Subject"))
z1c126544a4=Replace(z1c126544a4,"<!--%HelpMessage%-->",z2b79277e31("tstlngHelp" &z0af3bed337 &"Message"))
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub zfc48387d45(zba0b6d687e)
If zba0b6d687e="" Then Exit Sub
 z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\error.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Error%-->",zba0b6d687e)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Sub z613cd748c4(z25352d0d09)
z1c126544a4=z33888dbd2a(Server.MapPath(tstSkinsPath) &"\" &ze7db80dbfc &"\message.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Message%-->",z25352d0d09)
zf4fe7ff1a2="<a href=""" &z51a0880992 &"?action=help"">" &z2b79277e31("tstlnkHelpLinkText") &"</a>"
 End Sub
 Function z7bf18c145f(z1c126544a4)
Dim z5305b9d501,ze285b47af1,z6bf9d39bad,zd38b036918
 Dim z77af0b9cfa
 Dim zc4433a7212
 Dim z67f20415d2,z84e6873ca2,z8347cc3045
 Dim z96a9762248,zae27ee9528,zd2e1bae974
 z5305b9d501=z2b79277e31("tstlnkSkinListLinkText")
ze285b47af1=Replace(z5305b9d501,"<!--%SkinName%-->",ze7db80dbfc)
z6bf9d39bad=Split(z2b79277e31("tstcfgSkinsAvailable"),"|",-(&h830+5361-&H1d20))
For zd38b036918=(&h16d2+1641-&H1d3b) To UBound(z6bf9d39bad)
z6bf9d39bad(zd38b036918)=Trim(z6bf9d39bad(zd38b036918))
If z6bf9d39bad(zd38b036918)<>ze7db80dbfc Then
 ze285b47af1=ze285b47af1 &Replace(z5305b9d501,"<!--%SkinName%-->",z423e920736(z6bf9d39bad(zd38b036918)))
End If
 Next
 If zf88826d19f<>(&h50c+5246-&H198a) Then
 z67f20415d2="<a href=""" &z51a0880992 &"?action=logout"">" &z2b79277e31("tstlnkLogoutLinkText") &"</a>"
 z84e6873ca2="<a href=""" &z51a0880992 &"?sub=modify&amp;action=profile"">" &z2b79277e31("tstlnkProfileLinkText") &"</a>"
 Else
 If Request.QueryString("action")<>"login" Then
 z67f20415d2="<a href=""" &z51a0880992 &"?action=login&amp;return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING")) &""">" &z2b79277e31("tstlnkLoginLinkText") &"</a>"
 Else
 z67f20415d2="<a href=""" &z51a0880992 &"?action=login&amp;return=" &Server.URLEncode(Request.QueryString("return")) &""">" &z2b79277e31("tstlnkLoginLinkText") &"</a>"
 End If
 z84e6873ca2="<a href=""" &z51a0880992 &"?action=register"">" &z2b79277e31("tstlnkRegisterLinkText") &"</a>"
 End If
 z8347cc3045="<a href=""" &z51a0880992 &"?sub=showsearch&amp;action=posts"">" &z2b79277e31("tstlnkSearchLinkText") &"</a>"
 If tstDebugMode Then
 zc4433a7212="<br>Debug information follows.  To turn off debug information, open constants.asp and set tstDebugMode to False.<br><textarea style=""width:100%;"" rows=""30"">" &z43e40faa8f &"</textarea><br>"
 Else
 zc4433a7212=""
 End If
 zae27ee9528=z2b79277e31("tstlnkNavigationLinkText")
zd2e1bae974=z2b79277e31("tstlnkNavigationLinkSeparator")
z96a9762248="<a href=""" &z51a0880992 &""">" &Replace(zae27ee9528,"<!--%Navigation%-->",z2b79277e31("tstcfgBoardTitle")) &"</a> " &zd2e1bae974 &" "
 If Session(tstUniqueBoardKey &"tstsesCurrentForum")<>"" Then
 z96a9762248=z96a9762248 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=topics&amp;fid=" &Session(tstUniqueBoardKey &"tstsesCurrentForumID") &""">" &Replace(zae27ee9528,"<!--%Navigation%-->",Session(tstUniqueBoardKey &"tstsesCurrentForum")) &"</a> " &zd2e1bae974 &" "
 End If
 If Session(tstUniqueBoardKey &"tstsesCurrentTopic")<>"" Then
 z96a9762248=z96a9762248 &"<a href=""" &z51a0880992 &"?sub=show&amp;action=posts&amp;fid=" &Session(tstUniqueBoardKey &"tstsesCurrentForumID") &"&amp;tid=" &Session(tstUniqueBoardKey &"tstsesCurrentTopicID") &""">" &Replace(zae27ee9528,"<!--%Navigation%-->",Session(tstUniqueBoardKey &"tstsesCurrentTopic")) &"</a> " &zd2e1bae974 &" "
 End If
 z1c126544a4=Replace(z1c126544a4,"<!--*ToastVersion*-->",z283272137a)
z1c126544a4=Replace(z1c126544a4,"<!--*SkinList*-->",ze285b47af1)
z1c126544a4=Replace(z1c126544a4,"<!--*Return*-->",Server.URLEncode(Request.ServerVariables("QUERY_STRING")))
z1c126544a4=Replace(z1c126544a4,"<!--*ScriptName*-->",z51a0880992)
z1c126544a4=Replace(z1c126544a4,"<!--*BoardTitle*-->",z2b79277e31("tstcfgBoardTitle"))
z1c126544a4=Replace(z1c126544a4,"<!--*ToastScriptName*-->",tstToastScriptName)
z1c126544a4=Replace(z1c126544a4,"<!--*AdminScriptName*-->",tstAdminScriptName)
z1c126544a4=Replace(z1c126544a4,"<!--*WebSiteName*-->",z2b79277e31("tstcfgWebSiteName"))
z1c126544a4=Replace(z1c126544a4,"<!--*WebSiteURL*-->",z2b79277e31("tstcfgWebSiteURL"))
z1c126544a4=Replace(z1c126544a4,"<!--*SkinsPath*-->",tstSkinsPath)
z1c126544a4=Replace(z1c126544a4,"<!--*LoginoutLink*-->",z67f20415d2)
z1c126544a4=Replace(z1c126544a4,"<!--*ProfileRegisterLink*-->",z84e6873ca2)
z1c126544a4=Replace(z1c126544a4,"<!--*NavigationLink*-->",z96a9762248)
z1c126544a4=Replace(z1c126544a4,"<!--*SearchLink*-->",z8347cc3045)
z1c126544a4=Replace(z1c126544a4,"<!--*HelpLink*-->",zf4fe7ff1a2)
z1c126544a4=Replace(z1c126544a4,"<!--*SelectedSkin*-->",ze7db80dbfc)
z1c126544a4=Replace(z1c126544a4,"<!--*SelectedSkinPath*-->",tstSkinsPath &"/" &ze7db80dbfc &"/")
z1c126544a4=Replace(z1c126544a4,"<!--*Username*-->",Session(tstUniqueBoardKey &"tstsesUsername"))
z1c126544a4=Replace(z1c126544a4,"<!--*RegisteredMembersCount*-->",z2b79277e31("tstcfgRegisterMembersCount"))
z1c126544a4=Replace(z1c126544a4,"<!--*ActiveUsersCount*-->",z2b79277e31("tstcfgActiveUsers"))
z1c126544a4=Replace(z1c126544a4,"<!--*Debug*-->",zc4433a7212)
Select Case CInt(Left(z31f9040642,(&h77b+5264-&H1c0a)))
Case zef77e02ea0,zc67da6b639,zd2118b3199
 Case z3da753509a,z923b766c14
 If z2b79277e31("tstcfgKillPoweredByBug")<>"True" Or Mid(z31f9040642,(&h1087+1130-&H14ef),(&h997+6060-&H2140))="T16" Then
 z1c126544a4=ze7da9e061f(z1c126544a4,z3da753509a)
End If
 Case z4590a1f8a1
 If z2b79277e31("tstcfgKillPoweredByBug")<>"True" Or Mid(z31f9040642,(&hab+6690-&H1acb),(&h12+8031-&H1f6e))="T16" Then
 z1c126544a4=ze7da9e061f(z1c126544a4,z4590a1f8a1)
End If
 Case Else
 If Request("action")="posts" And Request("sub")="show" Then
 If Instr(z1c126544a4,zaa70a50e00(z60d9708bf1))=(&h97+5418-&H15c1) Then z1c126544a4="Branding code not found."
 End If
 z1c126544a4=ze7da9e061f(z1c126544a4,z961b3357ec)
End Select
 z7bf18c145f=z1c126544a4
 End Function
 Sub tstDoError(strError)
zfc48387d45 strError
 End Sub
 Sub tstDoMessage(strMessage)
z613cd748c4 strMessage
 End Sub
%>
