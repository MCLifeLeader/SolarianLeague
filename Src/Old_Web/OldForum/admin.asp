<%@  language="VBScript" %>
<%
option explicit:
%>
<% Response.Buffer=True
 Response.Clear
%>
<!--#INCLUDE FILE="shared.asp"-->
<% Const za30910fff7="admin"
 Dim z51a0880992,ze7db80dbfc,zf4fe7ff1a2,zc1809c9abf,z86132a4fa1
 If Not tstDebugMode Then On Error Resume Next
 z7474130745
 If Err.Number<>(&hfa1+1349-&H14e6) Then zd00d4cc179 Err.Number,Err.Description,Err.Source,""
 zdcd0251e32
 Sub z7474130745()
Response.Expires=-(&h15a7+17-&H11d0)
 If z2b79277e31("tstlngCharSet")<>"" Then
 Response.CharSet=z2b79277e31("tstlngCharSet")
Else
 Response.CharSet="iso-8859-1"
 End If
 If IsNumeric(tstSessionTimeout) Then
Session.Timeout=tstSessionTimeout
 End If
 z51a0880992=Request.ServerVariables("SCRIPT_NAME")
ze7db80dbfc=Session(tstUniqueBoardKey &"tstsesSkin")
zf88826d19f=Session(tstUniqueBoardKey &"tstsesUID")
z1f5de5510d
 z16e31f4a61
 zc1809c9abf=Request("action")
If zc1809c9abf="" Then zc1809c9abf="news"
 Select Case zc1809c9abf
 Case "login"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="showlogin"
 Select Case z86132a4fa1
 Case "showlogin"
 z3dfba22264
 Case "submit"
 z571fdcae24
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "news"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z0f685ed788
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "boardinfo"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z850a48bc1a "boardinfo"
 Case "submit"
 z8f7dfcba7f
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "boardrules"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z850a48bc1a "boardrules"
 Case "submit"
 z8f7dfcba7f
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "email"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z850a48bc1a "emailconfig"
 Case "submit"
 z8f7dfcba7f
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "testemail"
 z2937311f92
 Case "skins"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z850a48bc1a "skins"
 Case "submit"
 z8f7dfcba7f
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "dbconfig"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z850a48bc1a "dbconfig"
 Case "submit"
 z8f7dfcba7f
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "forums"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 zdc80e8921c
 Case "add"
 z71ac6510d8
 Case "edit"
 zf4f1ece603
 Case "submit"
 z5b22099440
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "users"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 z7a0efd1824
 Case "add"
 zb05372481f
 Case "edit"
 zee1cbfd5f4
 Case "submit"
 zc52219229c
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "recyclebin"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 zff4a5bed5f
 Case "submitforums"
 za02d610594
 Case "submitposts"
 zafda832869
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "logout"
 zb0139b2778
 Case "stop"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="showstopmessage"
 Select Case z86132a4fa1
 Case "showstopmessage"
 z33d3706f35
 Case "stopboard"
 z74dbf385cf
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "start"
 z1140d9691d
 Case "restart"
 zb14048bc4a
 Case "help"
 z9ee3c72db9 Request("sub")
Case "license"
 z86132a4fa1=Request("sub")
If z86132a4fa1="" Then z86132a4fa1="show"
 Select Case z86132a4fa1
 Case "show"
 zf6edb8b610
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 Case "finishsetup"
 z3c8045b933
 Case Else
 z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End Select
 End Sub
 Sub z0f685ed788
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z33888dbd2a(Server.MapPath(tstAdminPath) &"\news.html"))
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z3dfba22264
 Dim z1c126544a4
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z33888dbd2a(Server.MapPath(tstAdminPath) &"\login.html"))
z1c126544a4=Replace(z1c126544a4,"<!--%ReturnPage%-->",Request("return"))
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z571fdcae24
 Dim z44f02bdd68,z001cf00a5b,z2f07b1ef62,z774641b4ee
 z44f02bdd68=Request("username")
zeac5c1e272 z44f02bdd68,"User Name",(&h12a6+4513-&H243b),False
 z001cf00a5b=Request("password")
zeac5c1e272 z001cf00a5b,"Password",(&h1e5a+1351-&H2395),False
 If zcc202045a5(z44f02bdd68,z001cf00a5b) Then
If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z734046d1de z3c851ed905("tstadmAdminLoginFailedError")
End If
 z2f07b1ef62=Request("return")
If z2f07b1ef62<>"" Then
 z05abc80a9d z51a0880992 &"?" &z2f07b1ef62
 Else
 z05abc80a9d z51a0880992
 End If
 Else
 z734046d1de z3c851ed905("tstadmAdminLoginFailedError")
End If
 End Sub
 Sub zb0139b2778
 Dim z8e5acd0ea0
 z1bbae28466
 For Each z8e5acd0ea0 In Session.Contents
 Session(z8e5acd0ea0)=""
 Next
 z05abc80a9d tstToastScriptName
 End Sub
 Sub z850a48bc1a(zfe8d9a1dd2)
Dim zd1cb26e371
 Dim z2c46bf2a36
 Dim zd38b036918
 Dim zf68ae58f05,z63f4bb4eda,z3e3619dc53,z06a4b750b5,z2685bf7cc4
 Dim zc577d4a897,ze16b114831,z184651673b
 Dim z6bf9d39bad,ze3564af927,z186c16b974,z29be69f925,z89337f1502
 Dim zc08b1c4e13,z1049935d27,z337bbce1f2
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Select Case zfe8d9a1dd2
 Case "boardinfo"
 z63f4bb4eda=z33888dbd2a(Server.MapPath(tstAdminPath) &"\boardinfo.html")
Case "boardrules"
 z63f4bb4eda=z33888dbd2a(Server.MapPath(tstAdminPath) &"\boardrules.html")
Case "emailconfig"
 z63f4bb4eda=z33888dbd2a(Server.MapPath(tstAdminPath) &"\emailconfig.html")
Case "skins"
 z63f4bb4eda=z33888dbd2a(Server.MapPath(tstAdminPath) &"\skinconfig.html")
Case "dbconfig"
 z63f4bb4eda=z33888dbd2a(Server.MapPath(tstAdminPath) &"\dbconfig.html")
End Select
 Set zd1cb26e371=z4b400b6588(tstConfigFile)
For Each z2c46bf2a36 In zd1cb26e371
 Select Case z2c46bf2a36
 Case "tstcfgTakingNewRegistrations","tstcfgOnErrorSendEmail","tstcfgAutomaticallyLinkURLs","tstcfgAllowHTML","tstcfgBadWordFilter"
 zf68ae58f05=""
 If zd1cb26e371(z2c46bf2a36)="True" Then
 zf68ae58f05=zf68ae58f05 &"<option value='True'>True</option><option value='False'>False</option>"
 Else
 zf68ae58f05=zf68ae58f05 &"<option value='False'>False</option><option value='True'>True</option>"
 End If
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%" &z2c46bf2a36 &"%-->",zf68ae58f05)
Case "tstcfgSkinsAvailable"
 Set zc577d4a897=Server.CreateObject(tstFileSystemObjectProgID)
Set ze16b114831=zc577d4a897.GetFolder(Server.MapPath(tstSkinsPath))
zf68ae58f05=""
 For Each z184651673b in ze16b114831.SubFolders
 If InStr((&h41f+1964-&Hbca),zd1cb26e371(z2c46bf2a36),z184651673b.Name) Then
zf68ae58f05=zf68ae58f05 &"<option value='" &z184651673b.Name &"' selected>" &z184651673b.Name &"</option>"
 Else
 zf68ae58f05=zf68ae58f05 &"<option value='" &z184651673b.Name &"'>" &z184651673b.Name &"</option>"
 End If
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgSkinsAvailable%-->",zf68ae58f05)
Case "tstcfgReservedUsernames"
 zf68ae58f05=""
 z1049935d27=zd1cb26e371("tstcfgReservedUsernames")
If Left(z1049935d27,(&h547+4493-&H16d3))="|" Then z1049935d27=Right(z1049935d27,Len(z1049935d27)-(&h808+352-&H967))
If Right(z1049935d27,(&h69c+563-&H8ce))="|" Then z1049935d27=Left(z1049935d27,Len(z1049935d27)-(&h5f1+6227-&H1e43))
z29be69f925=Split(z1049935d27,"|",-(&h52a+4523-&H16d4))
For zd38b036918=(&h12ca+711-&H1591) To UBound(z29be69f925)
z29be69f925(zd38b036918)=Trim(z29be69f925(zd38b036918))
zf68ae58f05=zf68ae58f05 &"<option value='" &z29be69f925(zd38b036918) &"'>" &z423e920736(z29be69f925(zd38b036918)) &"</option>"
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgReservedUsernames%-->",zf68ae58f05)
Case "tstcfgAllowedHTML"
 zf68ae58f05=""
 zc08b1c4e13=zd1cb26e371("tstcfgAllowedHTML")
If Left(zc08b1c4e13,(&h479+1962-&Hc22))="|" Then zc08b1c4e13=Right(zc08b1c4e13,Len(zc08b1c4e13)-(&h1005+1355-&H154f))
If Right(zc08b1c4e13,(&h1ec2+1212-&H237d))="|" Then zc08b1c4e13=Left(zc08b1c4e13,Len(zc08b1c4e13)-(&h1ed2+1161-&H235a))
z186c16b974=Split(zc08b1c4e13,"|",-(&h870+995-&Hc52))
For zd38b036918=(&hf81+4785-&H2232) To UBound(z186c16b974)
z186c16b974(zd38b036918)=Trim(z186c16b974(zd38b036918))
zf68ae58f05=zf68ae58f05 &"<option value='" &z423e920736(z186c16b974(zd38b036918)) &"'>" &z186c16b974(zd38b036918) &"</option>"
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgAllowedHTML%-->",zf68ae58f05)
Case "tstcfgBadWordList"
 zf68ae58f05=""
 z337bbce1f2=zd1cb26e371("tstcfgBadWordList")
If Left(z337bbce1f2,(&h18e0+2301-&H21dc))="|" Then z337bbce1f2=Right(z337bbce1f2,Len(z337bbce1f2)-(&h140d+73-&H1455))
If Right(z337bbce1f2,(&h64+4205-&H10d0))="|" Then z337bbce1f2=Left(z337bbce1f2,Len(z337bbce1f2)-(&he2a+3645-&H1c66))
z89337f1502=Split(z337bbce1f2,"|",-(&h53b+379-&H6b5))
For zd38b036918=(&hdaf+452-&Hf73) To UBound(z89337f1502)
z89337f1502(zd38b036918)=Trim(z89337f1502(zd38b036918))
zf68ae58f05=zf68ae58f05 &"<option value='" &z89337f1502(zd38b036918) &"'>" &z423e920736(z89337f1502(zd38b036918)) &"</option>"
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgBadWordList%-->",zf68ae58f05)
Case "tstcfgEmailComponent"
 zf68ae58f05="<option value='" &zd1cb26e371(z2c46bf2a36) &"'>" &zd1cb26e371(z2c46bf2a36) &"</option>"
 ze3564af927=Split(z3c851ed905("tstadmEmailList"),",",-(&h190b+2466-&H22ac))
For zd38b036918=(&hc70+3340-&H197c) To UBound(ze3564af927)
ze3564af927(zd38b036918)=Trim(ze3564af927(zd38b036918))
If ze3564af927(zd38b036918)<>zd1cb26e371(z2c46bf2a36) Then
zf68ae58f05=zf68ae58f05 &"<option value='" &ze3564af927(zd38b036918) &"'>" &ze3564af927(zd38b036918) &"</option>"
 End If
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgEmailComponent%-->",zf68ae58f05)
Case "tstcfgDefaultSkin"
 zf68ae58f05="<option value='" &zd1cb26e371(z2c46bf2a36) &"'>" &zd1cb26e371(z2c46bf2a36) &"</option>"
 z6bf9d39bad=Split(zd1cb26e371("tstcfgSkinsAvailable"),"|",-(&h178d+1391-&H1cfb))
For zd38b036918=(&h9df+2177-&H1260) To UBound(z6bf9d39bad)
z6bf9d39bad(zd38b036918)=Trim(z6bf9d39bad(zd38b036918))
If z6bf9d39bad(zd38b036918)<>zd1cb26e371(z2c46bf2a36) Then
zf68ae58f05=zf68ae58f05 &"<option value='" &z423e920736(z6bf9d39bad(zd38b036918)) &"'>" &z423e920736(z6bf9d39bad(zd38b036918)) &"</option>"
 End If
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgDefaultSkin%-->",zf68ae58f05)
Case "tstcfgDBServerType"
 zf68ae58f05=""
 If zd1cb26e371(z2c46bf2a36)="MSAccess" Then
 zf68ae58f05=zf68ae58f05 &"<option value='MSAccess'>MSAccess 97/2000</option><option value='SQL7.0'>SQL Server 7.0</option>"
 Else
 zf68ae58f05=zf68ae58f05 &"<option value='SQL7.0'>SQL Server 7.0</option><option value='MSAccess'>MSAccess 97/2000</option>"
 End If
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%tstcfgDBServerType%-->",zf68ae58f05)
Case "tstcfgRegisterMessage","tstcfgLostPasswordMessage","tstcfgNotifyReplyMessage","tstcfgRuntimeErrorMessage"
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%" &z2c46bf2a36 &"%-->",Replace(zd1cb26e371(z2c46bf2a36),"<!--%BR%-->",vbCrLf))
Case Else
 If Left(z2c46bf2a36,(&h1ba+8400-&H227e))="tstcfgCustom" Then
 z06a4b750b5=z3e3619dc53
 z06a4b750b5=Replace(z06a4b750b5,"<!--%CustomParmFriendlyName%-->",Right(z2c46bf2a36,Len(z2c46bf2a36)-(&he33+1668-&H14ab)))
z06a4b750b5=Replace(z06a4b750b5,"<!--%CustomParmName%-->",z2c46bf2a36)
z06a4b750b5=Replace(z06a4b750b5,"<!--%CustomParmValue%-->",zd1cb26e371(z2c46bf2a36))
z2685bf7cc4=z2685bf7cc4 &z06a4b750b5
 ElseIf Left(z2c46bf2a36,(&h1633+3384-&H2368))<>"cmt" Then
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%" &z2c46bf2a36 &"%-->",zd1cb26e371(z2c46bf2a36))
End If
 End Select
 Next
 z63f4bb4eda=Replace(z63f4bb4eda,"<!--%CustomParmRows%-->",z2685bf7cc4)
Set zd1cb26e371=Nothing
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z63f4bb4eda)
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z8f7dfcba7f
 Dim zd1cb26e371
 Dim zcd03d78132
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zd1cb26e371=z4b400b6588(tstConfigFile)
For Each zcd03d78132 In Request.Form
 Select Case zcd03d78132
 Case "tstcfgSkinsAvailable"
 zd1cb26e371(zcd03d78132)=Join(Split(Request("tstcfgSkinsAvailable"),", ")," | ")
Case "tstcfgRegisterMessage","tstcfgLostPasswordMessage","tstcfgNotifyReplyMessage","tstcfgRuntimeErrorMessage"
 zd1cb26e371(zcd03d78132)=Replace(Request(zcd03d78132),vbCrLf,"<!--%BR%-->")
Case Else
 If zd1cb26e371.Exists(zcd03d78132) Then
zd1cb26e371(zcd03d78132)=Request(zcd03d78132)
End If
 End Select
 Next
 zbd43a15cb8 zd1cb26e371,tstConfigFile
 Set zd1cb26e371=Nothing
 Application(tstUniqueBoardKey &"tstcfgStarted")=""
 z0cb22f755b z3c851ed905("tstadmSaveConfigSuccessMessage")
End Sub
 Sub zdc80e8921c
 Dim zcca66305f9
 Dim zac7a1a9ff2,z52b0699802,z12a8207f62
 Dim zbfa4c82c6b,zd6ce1e0ef5
 Dim zd38b036918
 Dim z9fbe4da113()
Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zcca66305f9=zce564571ba(Null,False)
If Not zcca66305f9.EOF Then
 zac7a1a9ff2=z33888dbd2a(Server.MapPath(tstAdminPath) &"\forumslist.html")
Do While Not zcca66305f9.EOF
 zbfa4c82c6b=z423e920736(zcca66305f9(tstdbForumFieldName))
zd6ce1e0ef5=z423e920736(zcca66305f9(tstdbForumFieldDescription))
z52b0699802=z52b0699802 &zac7a1a9ff2
 z52b0699802=Replace(z52b0699802,"<!--%ForumLink%-->",z51a0880992 &"?sub=edit&action=forums&fid=" &zcca66305f9(tstdbForumFieldID))
z52b0699802=Replace(z52b0699802,"<!--%ForumName%-->",zbfa4c82c6b)
z52b0699802=Replace(z52b0699802,"<!--%ForumDescription%-->",zd6ce1e0ef5)
zcca66305f9.MoveNext
 Loop
 End If
 z12a8207f62=z33888dbd2a(Server.MapPath(tstAdminPath) &"\forums.html")
z12a8207f62=Replace(z12a8207f62,"<!--%ForumList%-->",z52b0699802)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z12a8207f62)
z1c126544a4=za6f66a1f8a(z1c126544a4)
z05a110f4c4 zcca66305f9
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z71ac6510d8
 Dim zcca66305f9
 Dim z9fbe4da113()
Dim zd38b036918
 Dim z4b759014d3
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zcca66305f9=z43b73c2129(Null,Null,Null,Null,Null,Null)
ReDim z9fbe4da113(zcca66305f9.RecordCount-(&h7a8+2248-&H106f),(&h18a7+2039-&H209d))
For zd38b036918=(&h6b1+6112-&H1e91) to zcca66305f9.RecordCount-(&h16f9+1624-&H1d50)
 z9fbe4da113(zd38b036918,(&h1130+4209-&H21a1))=zcca66305f9(tstdbMemberFieldID)
z9fbe4da113(zd38b036918,(&hfd8+681-&H1280))=zcca66305f9(tstdbMemberFieldUsername)
zcca66305f9.MoveNext
 Next
 zcca66305f9.Close
 z4b759014d3=z33888dbd2a(Server.MapPath(tstAdminPath) &"\forumsadd.html")
z4b759014d3=Replace(z4b759014d3,"<!--%ModeratorList%-->",z636dc7eb5d(z9fbe4da113,(&h156c+638-&H17ea)))
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z4b759014d3)
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub zf4f1ece603
 Dim z29203c5c02
 Dim zcca66305f9
 Dim z12a8207f62
 Dim zbfa4c82c6b,zd6ce1e0ef5,zdb8e05c8cc,z7f9cc84556
 Dim zc92f30f8d6,zea244a0d95,zeb7927e48e,za2ce976cad
 Dim zf94441b298,z888abb35d4,zefc68c10fa,z5dda825551
 Dim zd38b036918
 Dim z9fbe4da113()
Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z29203c5c02=Request("fid")
If z29203c5c02="" Or Not IsNumeric(z29203c5c02) Then
z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End If
 Set zcca66305f9=z43b73c2129(Null,Null,Null,Null,Null,Null)
ReDim z9fbe4da113(zcca66305f9.RecordCount-(&h1545+3347-&H2257),(&h1bfc+1324-&H2127))
For zd38b036918=(&h8eb+2508-&H12b7) to zcca66305f9.RecordCount-(&h1003+663-&H1299)
 z9fbe4da113(zd38b036918,(&h1542+2701-&H1fcf))=zcca66305f9(tstdbMemberFieldID)
z9fbe4da113(zd38b036918,(&hb5+3258-&Hd6e))=zcca66305f9(tstdbMemberFieldUsername)
zcca66305f9.MoveNext
 Next
 zcca66305f9.Close
 Set zcca66305f9=zce564571ba(z29203c5c02,False)
If zcca66305f9.EOF Then
 z734046d1de z3c851ed905("tstadmInvalidForumError")
End If
 z12a8207f62=z33888dbd2a(Server.MapPath(tstAdminPath) &"\forumsedit.html")
zbfa4c82c6b=z423e920736(zcca66305f9(tstdbForumFieldName))
zd6ce1e0ef5=z423e920736(zcca66305f9(tstdbForumFieldDescription))
zdb8e05c8cc=zcca66305f9(tstdbForumFieldModeratorID)
z7f9cc84556=z423e920736(zcca66305f9("Moderator"))
zc92f30f8d6=z423e920736(zcca66305f9(tstdbForumFieldGuestAccess))
zf94441b298=z423e920736(zcca66305f9(tstdbForumFieldMemberAccess))
If InStr((&h615+4715-&H187f),zc92f30f8d6,"R") Then
zea244a0d95="checked"
 End If
 If InStr((&h25ac+157-&H2648),zc92f30f8d6,"T") Then
zeb7927e48e="checked"
 End If
 If InStr((&h13a6+2658-&H1e07),zc92f30f8d6,"P") Then
za2ce976cad="checked"
 End If
 If InStr((&hd15+1115-&H116f),zf94441b298,"R") Then
z888abb35d4="checked"
 End If
 If InStr((&he14+1222-&H12d9),zf94441b298,"T") Then
zefc68c10fa="checked"
 End If
 If InStr((&hbb8+6708-&H25eb),zf94441b298,"P") Then
z5dda825551="checked"
 End If
 z12a8207f62=Replace(z12a8207f62,"<!--%ForumID%-->",zcca66305f9(tstdbForumFieldID))
z12a8207f62=Replace(z12a8207f62,"<!--%ForumName%-->",zbfa4c82c6b)
z12a8207f62=Replace(z12a8207f62,"<!--%ForumDescription%-->",zd6ce1e0ef5)
z12a8207f62=Replace(z12a8207f62,"<!--%ModeratorList%-->",z636dc7eb5d(z9fbe4da113,zdb8e05c8cc))
z12a8207f62=Replace(z12a8207f62,"<!--%GuestReadAccess%-->",zea244a0d95)
z12a8207f62=Replace(z12a8207f62,"<!--%GuestTopicAccess%-->",zeb7927e48e)
z12a8207f62=Replace(z12a8207f62,"<!--%GuestPostAccess%-->",za2ce976cad)
z12a8207f62=Replace(z12a8207f62,"<!--%MemberReadAccess%-->",z888abb35d4)
z12a8207f62=Replace(z12a8207f62,"<!--%MemberTopicAccess%-->",zefc68c10fa)
z12a8207f62=Replace(z12a8207f62,"<!--%MemberPostAccess%-->",z5dda825551)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z12a8207f62)
z1c126544a4=za6f66a1f8a(z1c126544a4)
z05a110f4c4 zcca66305f9
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z5b22099440
 Dim z18fafa6717,zd94c849e0a,ze857505bbb
 Dim z59cce5d893,ze8bee027d3,z5acdf51c75
 Dim z25352d0d09
 z18fafa6717=Request("fid")
z59cce5d893=Request("moderator")
ze8bee027d3=Request("forumname")
z5acdf51c75=Request("forumdescription")
If Request("guestread")="True" Then
 zd94c849e0a="R"
 End If
 If Request("guesttopic")="True" Then
 zd94c849e0a=zd94c849e0a &"T"
 End If
 If Request("guestpost")="True" Then
 zd94c849e0a=zd94c849e0a &"P"
 End If
 If Request("memberread")="True" Then
 ze857505bbb="R"
 End If
 If Request("membertopic")="True" Then
 ze857505bbb=ze857505bbb &"T"
 End If
 If Request("memberpost")="True" Then
 ze857505bbb=ze857505bbb &"P"
 End If
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 If z18fafa6717="" Or Not IsNumeric(z18fafa6717) Then
z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End If
 z734046d1de zeac5c1e272(ze8bee027d3,tstdbForumFieldNameFriendly,tstdbForumFieldNameLen,False)
z734046d1de zeac5c1e272(z5acdf51c75,tstdbForumFieldDescriptionFriendly,tstdbForumFieldDescriptionLen,False)
If Request("submit")<>"" Then
 If z18fafa6717="0" Then
 z734046d1de z9b91325ee7(-(&h1729+618-&H1992),(&h73c+2612-&H1170),z59cce5d893,ze8bee027d3,z5acdf51c75,zd94c849e0a,ze857505bbb,False)
z25352d0d09=z3c851ed905("tstadmAddForumSuccessMessage")
Else
 z734046d1de z87c778e18f(z18fafa6717,(&ha87+439-&Hc3e),z59cce5d893,ze8bee027d3,z5acdf51c75,zd94c849e0a,ze857505bbb,False)
z25352d0d09=z3c851ed905("tstadmEditForumSuccessMessage")
End If
 Elseif Request("deleteforum")<>"" Then
 z734046d1de z87c778e18f(z18fafa6717,Null,Null,Null,Null,Null,Null,True)
z25352d0d09=z3c851ed905("tstadmDeleteForumSuccessMessage")
End If
 Application(tstUniqueBoardKey &"tstcfgStarted")=""
 z0cb22f755b z25352d0d09
 End Sub
 Sub z7a0efd1824
 Dim z9e4a2ac548,zabac7852b0,z710d2148bc
 Dim z5b7c89c8d8,z68db608c44,z592e048640,z032ed500c4,zc274053e92
 Dim zcca66305f9
 Dim zd33dc6e8b4,za822865156,z5ab2d19f84
 Dim zfc43f7e2a2
 Dim z559acc6ed6,z99f9e9a067
 Dim z4bfc2195a8(3)
Dim zc1b540a9c7,z5b0ca0ed33
 Dim zd38b036918,ze4c10fd009,z697c41cd9d,zcb00582367,z0631e2edb9
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z9e4a2ac548=Request("page")
zabac7852b0=Request("where")
z710d2148bc=Request("like")
If z9e4a2ac548="" Or Not IsNumeric(z9e4a2ac548) Then
z9e4a2ac548=(&h58d+6356-&H1e60)
 Else
 z9e4a2ac548=Int(z9e4a2ac548)
End If
 z5b7c89c8d8=Null
 z032ed500c4=Null
 z68db608c44=Null
 z592e048640=Null
 Select Case zabac7852b0
 Case tstdbMemberFieldUsernameFriendly
 z5b7c89c8d8=z710d2148bc
 Case tstdbMemberFieldEmailFriendly
 z032ed500c4=z710d2148bc
 Case tstdbMemberFieldFNameFriendly
 z68db608c44=z710d2148bc
 Case tstdbMemberFieldLNameFriendly
 z592e048640=z710d2148bc
 End Select
 Set zcca66305f9=z43b73c2129(Null,z68db608c44,z592e048640,z5b7c89c8d8,z032ed500c4,tstdbMemberFieldUsername)
z0631e2edb9=zcca66305f9.RecordCount
 Set zfc43f7e2a2=New z6a54e5afd0
 If Not zcca66305f9.EOF Then
 zcca66305f9.AbsolutePage=z9e4a2ac548
 If zcca66305f9.PageCount>(&h17+9450-&H2500) Then
 ze4c10fd009=(&h1bf7+14-&H1bfa)
 If z9e4a2ac548>(&h1b16+458-&H1cdf) Then
 zc1b540a9c7="<a href='" &z51a0880992 &"?sub=show&action=users&page=" &z9e4a2ac548-(&hac4+3734-&H1959) &"&where=" &zabac7852b0 &"&like=" &z710d2148bc &"'>" &z3c851ed905("tstadmPreviousPageLinkText") &"</a> "
 End If
 z697c41cd9d=z9e4a2ac548-Int(((ze4c10fd009/(&h1260+608-&H14be))+.5)-(&h419+7460-&H213c))
zcb00582367=z9e4a2ac548+Int(ze4c10fd009/(&h1a5+5741-&H1810))
For zd38b036918=z697c41cd9d to zcb00582367
 If zd38b036918<(&h1eeb+1172-&H237e) Then
 z697c41cd9d=z697c41cd9d+(&h479+7471-&H21a7)
 If zcb00582367<zcca66305f9.PageCount Then
 zcb00582367=zcb00582367+(&h764+7279-&H23d2)
 End If
 Elseif zd38b036918>zcca66305f9.PageCount Then
 zcb00582367=zcb00582367-(&h1638+2403-&H1f9a)
 If z697c41cd9d>(&h1589+812-&H18b4) Then
 z697c41cd9d=z697c41cd9d-(&h2231+828-&H256c)
 End If
 End If
 Next
 z5b0ca0ed33=z3c851ed905("tstadmNumberedPageLinkText")
For zd38b036918=z697c41cd9d to zcb00582367
 If z9e4a2ac548=zd38b036918 Then
 zc1b540a9c7=zc1b540a9c7 &Replace(z3c851ed905("tstadmSelectedPageLinkText"),"<!--%PageNumber%-->",z9e4a2ac548) &" "
 Else
 zc1b540a9c7=zc1b540a9c7 &"<a href='" &z51a0880992 &"?sub=show&action=users&page=" &zd38b036918 &"&where=" &zabac7852b0 &"&like=" &z710d2148bc &"'>" &Replace(z5b0ca0ed33,"<!--%PageNumber%-->",zd38b036918) &"</a> "
 End If
 Next
 If z9e4a2ac548<zcca66305f9.PageCount Then
 zc1b540a9c7=zc1b540a9c7 &"<a href='" &z51a0880992 &"?sub=show&action=users&page=" &z9e4a2ac548+(&h1881+3356-&H259c) &"&where=" &zabac7852b0 &"&like=" &z710d2148bc &"'>" &z3c851ed905("tstadmNextPageLinkText") &"</a>"
 End If
 End If
 zd33dc6e8b4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\userslist.html")
For zd38b036918=(&h1e85+475-&H205f) to zcca66305f9.PageSize
 z5b7c89c8d8=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
z032ed500c4=z423e920736(zcca66305f9(tstdbMemberFieldEmail))
zc274053e92=z423e920736(zcca66305f9(tstdbMemberFieldFName)) &" " &z423e920736(zcca66305f9(tstdbMemberFieldLName))
za822865156=zd33dc6e8b4
 za822865156=Replace(za822865156,"<!--%EditUserLink%-->",z51a0880992 &"?sub=edit&action=users&uid=" &zcca66305f9(tstdbMemberFieldID))
za822865156=Replace(za822865156,"<!--%Username%-->",z5b7c89c8d8)
za822865156=Replace(za822865156,"<!--%UserEmail%-->",z032ed500c4)
za822865156=Replace(za822865156,"<!--%UserRealName%-->",zc274053e92)
zfc43f7e2a2.Append(za822865156)
zcca66305f9.MoveNext
 If zcca66305f9.EOF Then Exit For
 Next
 End If
 z4bfc2195a8((&h2d9+7327-&H1f78))=tstdbMemberFieldUsernameFriendly
 z4bfc2195a8((&h964+20-&H977))=tstdbMemberFieldEmailFriendly
 z4bfc2195a8((&h3d4+7885-&H229f))=tstdbMemberFieldFNameFriendly
 z4bfc2195a8((&h772+3189-&H13e4))=tstdbMemberFieldLNameFriendly
 For zd38b036918=(&h561+5033-&H190a) To UBound(z4bfc2195a8)
z559acc6ed6=z4bfc2195a8(zd38b036918)
If z559acc6ed6=z710d2148bc Then
 z99f9e9a067=z99f9e9a067 &"<option value=""" &z559acc6ed6 &""" selected>" &z559acc6ed6 &"</option>"
 Else
 z99f9e9a067=z99f9e9a067 &"<option value=""" &z559acc6ed6 &""">" &z559acc6ed6 &"</option>"
 End If
 Next
 z5ab2d19f84=z33888dbd2a(Server.MapPath(tstAdminPath) &"\Users.html")
z5ab2d19f84=Replace(z5ab2d19f84,"<!--%UserList%-->",zfc43f7e2a2.ToString())
z5ab2d19f84=Replace(z5ab2d19f84,"<!--%FieldList%-->",z99f9e9a067)
z5ab2d19f84=Replace(z5ab2d19f84,"<!--%SearchKeyword%-->",z710d2148bc)
z5ab2d19f84=Replace(z5ab2d19f84,"<!--%NumberofUsers%-->",z0631e2edb9)
z5ab2d19f84=Replace(z5ab2d19f84,"<!--%PageNumberLink%-->",zc1b540a9c7)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z5ab2d19f84)
z1c126544a4=za6f66a1f8a(z1c126544a4)
z05a110f4c4 zcca66305f9
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub zb05372481f
 Dim z807e91fd2f
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z807e91fd2f=z33888dbd2a(Server.MapPath(tstAdminPath) &"\usersadd.html")
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z807e91fd2f)
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub zee1cbfd5f4
 Dim z179a77b9a4
 Dim zcca66305f9
 Dim z8002806c5e
 Dim z76844678c8,z54aef0d64a,z8825a31cf0
 Dim z5305b9d501,zd5a335347a,ze285b47af1,z6bf9d39bad,zd38b036918
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z179a77b9a4=Request("uid")
If z179a77b9a4="" Or Not IsNumeric(z179a77b9a4) Then
z734046d1de z3c851ed905("tstadmInvalidPOSTorGET")
End If
 Set zcca66305f9=z43b73c2129(z179a77b9a4,Null,Null,Null,Null,Null)
If zcca66305f9.EOF Then
 z734046d1de z3c851ed905("tstadmInvalidUserError")
End If
 If zcca66305f9(tstdbMemberFieldHideEmail) Then
z76844678c8="Checked"
 Else
 z76844678c8=""
 End If
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
 z8002806c5e=z33888dbd2a(Server.MapPath(tstAdminPath) &"\usersedit.html")
z8002806c5e=Replace(z8002806c5e,"<!--%UserID%-->",zcca66305f9(tstdbMemberFieldID))
z8002806c5e=Replace(z8002806c5e,"<!--%Username%-->",z423e920736(zcca66305f9(tstdbMemberFieldUsername)))
z8002806c5e=Replace(z8002806c5e,"<!--%FirstName%-->",z423e920736(zcca66305f9(tstdbMemberFieldFName)))
z8002806c5e=Replace(z8002806c5e,"<!--%LastName%-->",z423e920736(zcca66305f9(tstdbMemberFieldLName)))
z8002806c5e=Replace(z8002806c5e,"<!--%Email%-->",z423e920736(zcca66305f9(tstdbMemberFieldEmail)))
z8002806c5e=Replace(z8002806c5e,"<!--%HideEmail%-->",z76844678c8)
z8002806c5e=Replace(z8002806c5e,"<!--%ICQNumber%-->",z423e920736(zcca66305f9(tstdbMemberFieldICQ)))
z8002806c5e=Replace(z8002806c5e,"<!--%Homepage%-->",z423e920736(zcca66305f9(tstdbMemberFieldHomepage)))
z8002806c5e=Replace(z8002806c5e,"<!--%Signature%-->",vbCrLf &z423e920736(zcca66305f9(tstdbMemberFieldSignature)))
z8002806c5e=Replace(z8002806c5e,"<!--%IncludeSig%-->",z54aef0d64a)
z8002806c5e=Replace(z8002806c5e,"<!--%NotifyDefault%-->",z8825a31cf0)
z5305b9d501=z423e920736(zcca66305f9(tstdbMemberFieldSkin))
If z5305b9d501="" Then z5305b9d501=z2b79277e31("tstcfgDefaultSkin")
If Instr((&h1e88+2172-&H2703),z2b79277e31("tstcfgSkinsAvailable"),z5305b9d501)=(&h14ef+407-&H1686) Then z5305b9d501=z2b79277e31("tstcfgDefaultSkin")
zd5a335347a=z3c851ed905("tstadmSkinListLinkText")
ze285b47af1=Replace(zd5a335347a,"<!--%SkinName%-->",z5305b9d501)
z6bf9d39bad=Split(z2b79277e31("tstcfgSkinsAvailable"),"|",-(&h15a7+2461-&H1f43))
For zd38b036918=(&h66d+640-&H8ed) To UBound(z6bf9d39bad)
z6bf9d39bad(zd38b036918)=Trim(z6bf9d39bad(zd38b036918))
If z6bf9d39bad(zd38b036918)<>z5305b9d501 Then
 ze285b47af1=ze285b47af1 &Replace(zd5a335347a,"<!--%SkinName%-->",z423e920736(z6bf9d39bad(zd38b036918)))
End If
 Next
 z8002806c5e=Replace(z8002806c5e,"<!--%SkinList%-->",ze285b47af1)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z8002806c5e)
z1c126544a4=za6f66a1f8a(z1c126544a4)
z05a110f4c4 zcca66305f9
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub zc52219229c
 Dim z0cc82d0440,z44f02bdd68,z1bc295b017,z631ef5b0c5,z0b70b41846,z6be941f1ea,z72d5e3ac64,zc202c93174,z1911ace0fa
 Dim z001cf00a5b,zdec87a543d,z1cc8a05f43,zd5927896d4,z750811a15d
 Dim z25352d0d09,zca55268ebc
 z0cc82d0440=Request("uid")
z44f02bdd68=Request("username")
z1bc295b017=Request("fname")
z631ef5b0c5=Request("lname")
z001cf00a5b=Request("password")
z0b70b41846=Request("email")
z6be941f1ea=Request("icq")
z72d5e3ac64=Request("homepage")
zc202c93174=Request("signature")
z1911ace0fa=Request("skin")
z750811a15d=Request("newuseremail")
zdec87a543d=Request("hideemail")
If zdec87a543d="True" Then
 zdec87a543d=tstSQLTrue
 Else
 zdec87a543d=tstSQLFalse
 End If
 z1cc8a05f43=Request("includesig")
If z1cc8a05f43="True" Then
 z1cc8a05f43=tstSQLTrue
 Else
 z1cc8a05f43=tstSQLFalse
 End If
 zd5927896d4=Request("notifydefault")
If zd5927896d4="True" Then
 zd5927896d4=tstSQLTrue
 Else
 zd5927896d4=tstSQLFalse
 End If
 If InStr(z2b79277e31("tstcfgSkinsAvailable"),z1911ace0fa)=(&h2c5+6083-&H1a88) Then
 z1911ace0fa=z2b79277e31("tstcfgDefaultSkin")
End If
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 If Request("submit")<>"Confirm Delete" Then
 If z001cf00a5b<>Request("confirmpw") Then
z734046d1de z3c851ed905("tstadmVerifyPasswordError")
End If
 If z001cf00a5b="" Then z001cf00a5b=Null
 If z0b70b41846<>"" Then
 If Not z1fd942829e(z0b70b41846) Then
z734046d1de z3c851ed905("tstadmVerifyEmailError")
End If
 End If
 z734046d1de zeac5c1e272(z1bc295b017,tstdbMemberFieldFNameFriendly,tstdbMemberFieldFNameLen,True)
z734046d1de zeac5c1e272(z631ef5b0c5,tstdbMemberFieldLNameFriendly,tstdbMemberFieldLNameLen,True)
z734046d1de zeac5c1e272(z001cf00a5b,tstdbMemberFieldPasswordFriendly,tstdbMemberFieldPasswordLen,True)
z734046d1de zeac5c1e272(z0b70b41846,tstdbMemberFieldEmailFriendly,tstdbMemberFieldEmailLen,False)
z734046d1de zeac5c1e272(z6be941f1ea,tstdbMemberFieldICQFriendly,tstdbMemberFieldICQLen,True)
z734046d1de zeac5c1e272(z72d5e3ac64,tstdbMemberFieldHomepageFriendly,tstdbMemberFieldHomepageLen,True)
z734046d1de zeac5c1e272(zc202c93174,tstdbMemberFieldSignatureFriendly,z2b79277e31("tstcfgMaxSignatureLength"),True)
End If
 If z0cc82d0440="0" Then
 z734046d1de z32fca02bcb(-(&h1993+2214-&H2238),z1bc295b017,z631ef5b0c5,z44f02bdd68,z001cf00a5b,z0b70b41846,zdec87a543d,z6be941f1ea,z72d5e3ac64,zc202c93174,z1911ace0fa,z1cc8a05f43,zd5927896d4)
Else
 If Request("submit")="Delete" Then
 z0cb22f755b Replace(z3c851ed905("tstadmUserDeleteConfirm"),"<!--%UserID%-->",z0cc82d0440)
Elseif Request("submit")="Confirm Delete" Then
 z734046d1de z54717e971a(z0cc82d0440)
Else
 z734046d1de zfdd5f559cf(z0cc82d0440,z1bc295b017,z631ef5b0c5,z44f02bdd68,z001cf00a5b,z0b70b41846,zdec87a543d,z6be941f1ea,z72d5e3ac64,zc202c93174,z1911ace0fa,z1cc8a05f43,zd5927896d4,Null,Null,Null)
End If
 End If
 If z0cc82d0440="0" Then
 If z750811a15d="True" Then
 zca55268ebc=z2b79277e31("tstcfgRegisterMessage")
zca55268ebc=Replace(zca55268ebc,"<!--%Email%-->",z0b70b41846)
zca55268ebc=Replace(zca55268ebc,"<!--%Username%-->",z44f02bdd68)
zca55268ebc=Replace(zca55268ebc,"<!--%Password%-->",z001cf00a5b)
If shrGetConfig("tstcfgToastEmailURL")="<Auto>" Or shrGetConfig("tstcfgToastEmailURL")="" Then
 zca55268ebc=Replace(zca55268ebc,"<!--%ProfileLink%-->","http://" &Request.ServerVariables("SERVER_NAME") &Mid(Request.ServerVariables("SCRIPT_NAME"),(&h2093+1263-&H2581),InStrRev(Request.ServerVariables("SCRIPT_NAME"),"/")) &tstToastScriptName &"?sub=modify&amp;action=profile")
Else
 zca55268ebc=Replace(zca55268ebc,"<!--%ProfileLink%-->",shrGetConfig("tstcfgToastEmailURL") &"?sub=modify&amp;action=profile")
End If
 zca55268ebc=Replace(zca55268ebc,"<!--%BR%-->",vbCrLf)
z75665b832a z2b79277e31("tstcfgEmailGateway"),z2b79277e31("tstcfgFromName"),z2b79277e31("tstcfgFromAddress"),z0b70b41846,z2b79277e31("tstcfgRegisterSubject"),zca55268ebc
 End If
 z25352d0d09=z3c851ed905("tstadmUserAddedSuccessMessage")
Elseif Request("submit")="Confirm Delete" Then
 z25352d0d09=z3c851ed905("tstadmUserDeletedSuccessMessage")
Else
 z25352d0d09=z3c851ed905("tstadmUserUpdatedSuccessMessage")
End If
 z0cb22f755b z25352d0d09
 End Sub
 Sub zff4a5bed5f
 Dim zcca66305f9
 Dim z9c2ce591b9,zda8674b485,zee8dd27bf0
 Dim z5763e1ecf9,zdb6583d55d
 Dim z1c71cd93bc,zf3751f9881,z00133465e4
 Dim z63f4bb4eda,z1c126544a4
 Dim z29b47a72f0,zd73e57d257
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zcca66305f9=zce564571ba(Null,True)
z9c2ce591b9=z33888dbd2a(Server.MapPath(tstAdminPath) &"\recycleforumslist.html")
Do Until zcca66305f9.EOF
 zda8674b485=z9c2ce591b9
 zda8674b485=Replace(zda8674b485,"<!--%ForumID%-->",z423e920736(zcca66305f9(tstdbForumFieldID)))
zda8674b485=Replace(zda8674b485,"<!--%ForumName%-->",z423e920736(zcca66305f9(tstdbForumFieldName)))
zee8dd27bf0=zee8dd27bf0 &zda8674b485
 zcca66305f9.Movenext
 Loop
 Set zcca66305f9=zb76ffc630e(Null,Null,Null,Null,Null,Null,Null,Null,Null,Null,True,Null,Null,tstdbPostFieldModifyDate &" DESC",-(&h70f+2834-&H1220))
z1c71cd93bc=z33888dbd2a(Server.MapPath(tstAdminPath) &"\recyclepostslist.html")
Do Until zcca66305f9.EOF
 z29b47a72f0=z423e920736(zcca66305f9(tstdbMemberFieldUsername))
zd73e57d257=z423e920736(zcca66305f9(tstdbPostFieldGuestName))
If z29b47a72f0="" Then
 z29b47a72f0=zd73e57d257
 End If
 zf3751f9881=z1c71cd93bc
 zf3751f9881=Replace(zf3751f9881,"<!--%PostID%-->",z423e920736(zcca66305f9(tstdbPostFieldID)))
zf3751f9881=Replace(zf3751f9881,"<!--%PostSubject%-->",z423e920736(zcca66305f9(tstdbPostFieldSubject)))
zf3751f9881=Replace(zf3751f9881,"<!--%Username%-->",z29b47a72f0)
zf3751f9881=Replace(zf3751f9881,"<!--%PostDate%-->",z423e920736(zcca66305f9(tstdbPostFieldPostDate)))
zf3751f9881=Replace(zf3751f9881,"<!--%ModifyDate%-->",z423e920736(zcca66305f9(tstdbPostFieldModifyDate)))
z00133465e4=z00133465e4 &zf3751f9881
 zcca66305f9.Movenext
 Loop
 z63f4bb4eda=z33888dbd2a(Server.MapPath(tstAdminPath) &"\recyclebin.html")
z63f4bb4eda=Replace(z63f4bb4eda,"<!--%ForumsList%-->",zee8dd27bf0)
z63f4bb4eda=Replace(z63f4bb4eda,"<!--%PostsList%-->",z00133465e4)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z63f4bb4eda)
z1c126544a4=za6f66a1f8a(z1c126544a4)
z05a110f4c4 zcca66305f9
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub za02d610594
 Dim z190f12d0ba,z5475b55984
 Dim z5f2e1172b0
 Dim zd38b036918
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z190f12d0ba=Request("forums")
z5475b55984=Request("submit")
If z190f12d0ba="" Then
 z05abc80a9d z51a0880992 &"?action=recyclebin"
 End If
 z5f2e1172b0=Split(z190f12d0ba,",")
Select Case z5475b55984
 Case "Restore"
 For zd38b036918=(&h878+2215-&H111f) To UBound(z5f2e1172b0)
z734046d1de z87c778e18f(z5f2e1172b0(zd38b036918),Null,Null,Null,Null,Null,Null,False)
Next
 Case "Destroy"
 For zd38b036918=(&h14dc+851-&H182f) To UBound(z5f2e1172b0)
z734046d1de za899e79cf8(z5f2e1172b0(zd38b036918))
Next
 End Select
 Application(tstUniqueBoardKey &"tstcfgStarted")=""
 z05abc80a9d z51a0880992 &"?action=recyclebin"
 End Sub
 Sub zafda832869
 Dim zb735809fb7,z5475b55984
 Dim zc9d4cc8bed,zd38b036918
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 zb735809fb7=Request("posts")
z5475b55984=Request("submit")
If zb735809fb7="" Then
 z05abc80a9d z51a0880992 &"?action=recyclebin"
 End If
 Select Case z5475b55984
 Case "Restore"
 zc9d4cc8bed=Split(zb735809fb7,",")
For zd38b036918=(&h919+7031-&H2490) To UBound(zc9d4cc8bed)
z734046d1de zc810b06458(Null,Null,zc9d4cc8bed(zd38b036918),zf88826d19f,Null,Null,Null,Null,Null,Null,False)
Next
 Case "Destroy"
 z734046d1de z1b2762e35e(zb735809fb7)
End Select
 z05abc80a9d z51a0880992 &"?action=recyclebin"
 End Sub
 Sub z33d3706f35
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z33888dbd2a(Server.MapPath(tstAdminPath) &"\stopboard.html"))
z1c126544a4=Replace(z1c126544a4,"<!--%StopMessage%-->",Replace(z2b79277e31("tstcfgBoardNotAvailableError"),"<BR>",vbCrLf))
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z74dbf385cf
 Dim zd1cb26e371
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zd1cb26e371=z4b400b6588(tstConfigFile)
zd1cb26e371("tstcfgBoardAvailable")="False"
 zd1cb26e371("tstcfgBoardNotAvailableError")=Replace(Request("stopmessage"),vbCrLf,"<BR>")
zbd43a15cb8 zd1cb26e371,tstConfigFile
 Set zd1cb26e371=Nothing
 Application(tstUniqueBoardKey &"tstcfgStarted")=""
 z0cb22f755b z3c851ed905("tstadmStopBoardSuccessMessage")
End Sub
 Sub z1140d9691d
 Dim zd1cb26e371
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Set zd1cb26e371=z4b400b6588(tstConfigFile)
zd1cb26e371("tstcfgBoardAvailable")="True"
 zbd43a15cb8 zd1cb26e371,tstConfigFile
 Set zd1cb26e371=Nothing
 Application(tstUniqueBoardKey &"tstcfgStarted")=""
 z0cb22f755b z3c851ed905("tstadmStartBoardSuccessMessage")
End Sub
 Sub zb14048bc4a
 Dim z0bb4613785
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 Application(tstUniqueBoardKey &"tstcfgStarted")=""
 z0cb22f755b z3c851ed905("tstadmRestartBoardSuccessMessage")
End Sub
 Sub z2937311f92
 Dim z0e7aa7bbeb
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 z0e7aa7bbeb=z75665b832a(z2b79277e31("tstcfgEmailGateway"),z2b79277e31("tstcfgFromName"),z2b79277e31("tstcfgFromAddress"),z2b79277e31("tstcfgFromAddress"),"Test Email","This is a test email from your board.  Your email gateway seems to be setup correctly.")
If z0e7aa7bbeb<>"" Then
 z0cb22f755b z0e7aa7bbeb
 Else
 z0cb22f755b z3c851ed905("tstadmTestEmailSuccessMessage")
End If
 End Sub
 Sub z9ee3c72db9(zcbcef2d04d)
Dim z1c126544a4
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\help.html")
z1c126544a4=Replace(z1c126544a4,"<!--%HelpTopic%-->",z3c851ed905("tstadm" &zcbcef2d04d &"HelpTopic"))
z1c126544a4=Replace(z1c126544a4,"<!--%HelpBody%-->",z3c851ed905("tstadm" &zcbcef2d04d &"HelpBody"))
z1c126544a4=za6f66a1f8a(z1c126544a4)
Response.Write z1c126544a4
 Response.End
 End Sub
 Sub zf6edb8b610
 Dim za2ec3cccf0,zb833539341
 Dim z1c126544a4
 If Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
z05abc80a9d z51a0880992 &"?action=login&return=" &Server.URLEncode(Request.ServerVariables("QUERY_STRING"))
End If
 zb833539341=z8a99d62000(z2b79277e31("tstcfgLicenseKey"),Request.ServerVariables("SERVER_NAME"))
Select Case CInt(Left(zb833539341,(&h13bd+1801-&H1ac5)))
Case z961b3357ec
 za2ec3cccf0="Server Name: " &Request.ServerVariables("SERVER_NAME") &vbCrLf
 za2ec3cccf0=za2ec3cccf0 &"Toast Path: " &"http://" &Request.ServerVariables("SERVER_NAME") &Mid(Request.ServerVariables("SCRIPT_NAME"),(&h7ab+6867-&H227d),InStrRev(Request.ServerVariables("SCRIPT_NAME"),"/")) &tstToastScriptName &vbCrLf
 za2ec3cccf0=za2ec3cccf0 &"Toast Version: " &z283272137a
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z33888dbd2a(Server.MapPath(tstAdminPath) &"\unregistered.html"))
z1c126544a4=Replace(z1c126544a4,"<!--%LicenseInfo%-->",za2ec3cccf0)
If CInt(Left(zb833539341,(&h155a+1907-&H1ccc)))=z464ed002ff Then
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseKeyExpired%-->","<font color=""red"">Your license key expired on " &Right(zb833539341,Len(zb833539341)-(&h270+5106-&H1661)) &"</font><br>")
Else
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseInfo%-->","")
End If
 z1c126544a4=za6f66a1f8a(z1c126544a4)
Case Else
 z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",z33888dbd2a(Server.MapPath(tstAdminPath) &"\registered.html"))
z1c126544a4=Replace(z1c126544a4,"<!--%LicenseKey%-->",zab2d4505d1(z2b79277e31("tstcfgLicenseKey")))
Select Case CInt(Left(zb833539341,(&h158f+1258-&H1a78)))
Case z3da753509a
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseType%-->","Full Version")
Case zef77e02ea0
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseType%-->","Full Version, No Branding")
Case z4590a1f8a1
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseType%-->","Non-Profit Version")
Case zc67da6b639
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseType%-->","Non-Profit Version, No Branding")
Case z923b766c14
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseType%-->","Expiring Version (Expires " &Right(zb833539341,(&h619+6717-&H204e)) &")")
Case z923b766c14
 z1c126544a4=Replace(z1c126544a4,"<!--%LicenseType%-->","Expiring Version, No Branding (Expires " &Right(zb833539341,(&ha9a+5664-&H20b2)) &")")
End Select
 z1c126544a4=za6f66a1f8a(z1c126544a4)
End Select
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z3c8045b933
 Dim zc577d4a897,zd1cb26e371
 If Not tstDebugMode Then On Error Resume Next
 Set zc577d4a897=Server.CreateObject(tstFileSystemObjectProgID)
zc577d4a897.movefile Server.MapPath("setup.asp"),Server.MapPath("setup.bak")
On Error Goto 0
 Set zd1cb26e371=z4b400b6588(tstConfigFile)
zd1cb26e371("tstcfgNewInstall")="False"
 zbd43a15cb8 zd1cb26e371,tstConfigFile
 Response.Redirect "admin.asp"
 End Sub
 Function z636dc7eb5d(ByRef z9fbe4da113,z60540f24de)
Dim zd38b036918
 Dim z43daf5c845
 For zd38b036918=(&ha47+2565-&H144c) to UBound(z9fbe4da113,(&h11e2+4534-&H2397))
If z9fbe4da113(zd38b036918,(&h1523+4224-&H25a3))=z60540f24de Then
 z43daf5c845="<option value='" &z9fbe4da113(zd38b036918,(&h3b5+6261-&H1c2a)) &"'>" &z9fbe4da113(zd38b036918,(&h1593+1381-&H1af7)) &"</option>" &z43daf5c845
 Else
 z43daf5c845=z43daf5c845 &"<option value='" &z9fbe4da113(zd38b036918,(&h868+912-&Hbf8)) &"'>" &z9fbe4da113(zd38b036918,(&he92+4423-&H1fd8)) &"</option>"
 End If
 Next
 z636dc7eb5d=z43daf5c845
 End Function
 Function z3c851ed905(z2136f54962)
Dim zd1cb26e371
 Dim z2c46bf2a36
 If Session(tstUniqueBoardKey &"tstadmStarted")="" Then
 Session(tstUniqueBoardKey &"tstadmStarted")=Now()
Set zd1cb26e371=z4b400b6588(Server.MapPath(tstAdminPath) &"/language.txt")
For Each z2c46bf2a36 In zd1cb26e371
 If Left(z2c46bf2a36,(&h1990+1739-&H2058))<>"cmt" Then
 Session(z2c46bf2a36)=zd1cb26e371(z2c46bf2a36)
End If
 Next
 Set zd1cb26e371=Nothing
 End If
 z3c851ed905=Session(z2136f54962)
End Function
 Function za6f66a1f8a(z1c126544a4)
Dim z5305b9d501,ze285b47af1,z6bf9d39bad,zd38b036918
 Dim z31f9040642
 Dim zc4433a7212
 z31f9040642=z8a99d62000(z2b79277e31("tstcfgLicenseKey"),Request.ServerVariables("SERVER_NAME"))
If tstDebugMode Then
 zc4433a7212="<br><textarea cols=""100"" rows=""30"" id=textarea1 name=textarea1>" &z43e40faa8f &"</textarea><br>"
 Else
 zc4433a7212=""
 End If
 z5305b9d501=z3c851ed905("tstadmSkinListLinkText")
ze285b47af1=Replace(z5305b9d501,"<!--%SkinName%-->",z2b79277e31("tstcfgDefaultSkin"))
z6bf9d39bad=Split(z2b79277e31("tstcfgSkinsAvailable"),"|",-(&h463+6532-&H1de6))
For zd38b036918=(&hbc+9108-&H2450) To UBound(z6bf9d39bad)
z6bf9d39bad(zd38b036918)=Trim(z6bf9d39bad(zd38b036918))
If z6bf9d39bad(zd38b036918)<>z2b79277e31("tstcfgDefaultSkin") Then
ze285b47af1=ze285b47af1 &Replace(z5305b9d501,"<!--%SkinName%-->",z423e920736(z6bf9d39bad(zd38b036918)))
End If
 Next
 z1c126544a4=Replace(z1c126544a4,"<!--*ToastVersion*-->",z283272137a)
z1c126544a4=Replace(z1c126544a4,"<!--*CurrentNewsLink*-->",Replace(z3c851ed905("tstadmCurrentNewsLinkText"),"<!--%CurrentNewsLink%-->",z51a0880992 &"?action=news"))
z1c126544a4=Replace(z1c126544a4,"<!--*BoardInfoLink*-->",Replace(z3c851ed905("tstadmBoardInfoLinkText"),"<!--%BoardInfoLink%-->",z51a0880992 &"?action=boardinfo"))
z1c126544a4=Replace(z1c126544a4,"<!--*BoardRulesLink*-->",Replace(z3c851ed905("tstadmBoardRulesLinkText"),"<!--%BoardRulesLink%-->",z51a0880992 &"?action=boardrules"))
z1c126544a4=Replace(z1c126544a4,"<!--*EmailConfigLink*-->",Replace(z3c851ed905("tstadmEmailConfigLinkText"),"<!--%EmailConfigLink%-->",z51a0880992 &"?action=email"))
z1c126544a4=Replace(z1c126544a4,"<!--*SkinsConfigLink*-->",Replace(z3c851ed905("tstadmSkinsConfigLinkText"),"<!--%SkinsConfigLink%-->",z51a0880992 &"?action=skins"))
z1c126544a4=Replace(z1c126544a4,"<!--*CustomParmsLink*-->",Replace(z3c851ed905("tstadmCustomParmsLinkText"),"<!--%CustomParmsLink%-->",z51a0880992 &"?action=custom"))
z1c126544a4=Replace(z1c126544a4,"<!--*ForumsLink*-->",Replace(z3c851ed905("tstadmForumsLinkText"),"<!--%ForumsLink%-->",z51a0880992 &"?action=forums"))
z1c126544a4=Replace(z1c126544a4,"<!--*UsersLink*-->",Replace(z3c851ed905("tstadmUsersLinkText"),"<!--%UsersLink%-->",z51a0880992 &"?action=users"))
z1c126544a4=Replace(z1c126544a4,"<!--*PostsLink*-->",Replace(z3c851ed905("tstadmPostsLinkText"),"<!--%PostsLink%-->",z51a0880992 &"?action=posts"))
z1c126544a4=Replace(z1c126544a4,"<!--*RecycleBinLink*-->",Replace(z3c851ed905("tstadmRecycleBinLinkText"),"<!--%RecycleBinLink%-->",z51a0880992 &"?action=recyclebin"))
z1c126544a4=Replace(z1c126544a4,"<!--*TestEmailLink*-->",Replace(z3c851ed905("tstadmTestEmailLinkText"),"<!--%TestEmailLink%-->",z51a0880992 &"?action=testemail"))
z1c126544a4=Replace(z1c126544a4,"<!--*RestartBoardLink*-->",Replace(z3c851ed905("tstadmRestartBoardLinkText"),"<!--%RestartBoardLink%-->",z51a0880992 &"?action=restart"))
If z31f9040642=z961b3357ec Then
 z1c126544a4=Replace(z1c126544a4,"<!--*LicenseLink*-->",Replace(z3c851ed905("tstadmPurchaseLinkText"),"<!--%LicenseLink%-->",z51a0880992 &"?action=license"))
Else
 z1c126544a4=Replace(z1c126544a4,"<!--*LicenseLink*-->",Replace(z3c851ed905("tstadmLicenseLinkText"),"<!--%LicenseLink%-->",z51a0880992 &"?action=license"))
End If
 z1c126544a4=Replace(z1c126544a4,"<!--*SupportLink*-->",Replace(z3c851ed905("tstadmSupportLinkText"),"<!--%SupportLink%-->","http://www.SolarianLeague.com"))
z1c126544a4=Replace(z1c126544a4,"<!--*LogoutLink*-->",Replace(z3c851ed905("tstadmLogoutLinkText"),"<!--%LogoutLink%-->",z51a0880992 &"?action=logout"))
If z2b79277e31("tstcfgBoardAvailable")="True" Then
 z1c126544a4=Replace(z1c126544a4,"<!--*StartStopBoardLink*-->",Replace(z3c851ed905("tstadmStopBoardLinkText"),"<!--%StopBoardLink%-->",z51a0880992 &"?action=stop"))
Else
 z1c126544a4=Replace(z1c126544a4,"<!--*StartStopBoardLink*-->",Replace(z3c851ed905("tstadmStartBoardLinkText"),"<!--%StartBoardLink%-->",z51a0880992 &"?action=start"))
End If
 z1c126544a4=Replace(z1c126544a4,"<!--*SkinList*-->",ze285b47af1)
z1c126544a4=Replace(z1c126544a4,"<!--*Return*-->",Server.URLEncode(Request.ServerVariables("QUERY_STRING")))
z1c126544a4=Replace(z1c126544a4,"<!--*ScriptName*-->",z51a0880992)
z1c126544a4=Replace(z1c126544a4,"<!--*BoardTitle*-->",z2b79277e31("tstcfgBoardTitle"))
z1c126544a4=Replace(z1c126544a4,"<!--*ToastScriptName*-->",tstToastScriptName)
z1c126544a4=Replace(z1c126544a4,"<!--*AdminScriptName*-->",tstAdminScriptName)
z1c126544a4=Replace(z1c126544a4,"<!--*WebSiteName*-->",z2b79277e31("tstcfgWebSiteName"))
z1c126544a4=Replace(z1c126544a4,"<!--*WebSiteURL*-->",z2b79277e31("tstcfgWebSiteURL"))
z1c126544a4=Replace(z1c126544a4,"<!--*SkinsPath*-->",tstSkinsPath)
z1c126544a4=Replace(z1c126544a4,"<!--*AdminPath*-->",tstAdminPath &"\")
z1c126544a4=Replace(z1c126544a4,"<!--*Username*-->",Session(tstUniqueBoardKey &"tstsesUsername"))
z1c126544a4=Replace(z1c126544a4,"<!--*ActiveUsersCount*-->",z2b79277e31("tstcfgActiveUsers"))
z1c126544a4=Replace(z1c126544a4,"<!--*Debug*-->",zc4433a7212)
z1c126544a4=Replace(z1c126544a4,"<!--*CurrentVersion*-->",z283272137a)
If zc1809c9abf<>"help" Then
 Select Case CInt(Left(z31f9040642,(&hf94+3556-&H1d77)))
Case zef77e02ea0,zc67da6b639,zd2118b3199
 Case z3da753509a,z923b766c14
 If z2b79277e31("tstcfgKillPoweredByBug")<>"True" Or Mid(z31f9040642,(&h955+2755-&H1416),(&hddf+1018-&H11d6))="T16" Then
 z1c126544a4=ze7da9e061f(z1c126544a4,z3da753509a)
End If
 Case z4590a1f8a1
 If z2b79277e31("tstcfgKillPoweredByBug")<>"True" Or Mid(z31f9040642,(&h22a0+220-&H237a),(&h17d6+2426-&H214d))="T16" Then
 z1c126544a4=ze7da9e061f(z1c126544a4,z4590a1f8a1)
End If
 Case Else
 z1c126544a4=ze7da9e061f(z1c126544a4,z961b3357ec)
End Select
 End If
 za6f66a1f8a=z1c126544a4
 End Function
 Sub z734046d1de(zba0b6d687e)
Dim zb19fc0c147,z1c126544a4
 If zba0b6d687e="" Then Exit Sub
 zb19fc0c147=z33888dbd2a(Server.MapPath(tstAdminPath) &"\message.html")
zb19fc0c147=Replace(zb19fc0c147,"<!--%Title%-->","Error")
zb19fc0c147=Replace(zb19fc0c147,"<!--%Message%-->",zba0b6d687e)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",zb19fc0c147)
z1c126544a4=za6f66a1f8a(z1c126544a4)
zdcd0251e32
 Response.Write z1c126544a4
 Response.End
 End Sub
 Sub z0cb22f755b(z25352d0d09)
Dim zb19fc0c147,z1c126544a4
 zb19fc0c147=z33888dbd2a(Server.MapPath(tstAdminPath) &"\message.html")
zb19fc0c147=Replace(zb19fc0c147,"<!--%Title%-->","Message")
zb19fc0c147=Replace(zb19fc0c147,"<!--%Message%-->",z25352d0d09)
z1c126544a4=z33888dbd2a(Server.MapPath(tstAdminPath) &"\main.html")
z1c126544a4=Replace(z1c126544a4,"<!--%Content%-->",zb19fc0c147)
z1c126544a4=za6f66a1f8a(z1c126544a4)
zdcd0251e32
 Response.Write z1c126544a4
 Response.End
 End Sub
%>
