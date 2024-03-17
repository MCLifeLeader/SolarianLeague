<!--#INCLUDE FILE="constants.asp"-->
<!--#INCLUDE FILE="custom.asp"-->
<% Const z283272137a="1.646"
 Const zd9b3c12dfa=2
 Const z0a9c35fdf6=1
 Const tstLoginFailed=0
 Const z8394469315=0
 Const tstLoginSuccess=1
 Const tstLoginSuccessBypass=2
 Const tstLoginSuccessBypassCreateUser=3
 Const z675bd8802f=0
 Const z5460876580=1
 Const zf2033d114f=2
 Const z74004f519e=3
 Const z9a083ea532=4
 Const zb6bab1178a=5
 Const zea3fa906f1=6
 Const z9baa79a91a=7
 Const zc266239a50=8
 Const z1682ff9829=9
 Const ze33a5e0934=10
 Const z9ce7481748=11
 Const z3bdfdd2193=12
 Const z5ff169ef47=13
 Const z961b3357ec=0
 Const z3da753509a=1
 Const zef77e02ea0=2
 Const z4590a1f8a1=3
 Const zc67da6b639=4
 Const z923b766c14=5
 Const zd2118b3199=6
 Const z464ed002ff=7
 Const z3732dc81be=0
 Const z3efca9872c=1
 Const z6ce0e79f97=10
 Const zeb4424eb6e="<!--ToastEdit-->"
 Const z2363c3e941="7D_VAU&*2PY,\N7&IKF"
 Const z49677c7424="<!--|-->,<div>|</div>,<span>|</span>,<noscript>|</noscript>,<comment>|</comment>"
 Const z18b5bec48a="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
 Dim z05055d52f8
 Dim zda3c349208
 Dim z3f94db6842
 Dim zaeb868fcc0
 Dim zf88826d19f
 Dim z83881822ff
 Set z83881822ff=Server.CreateObject("ADODB.Connection")
Dim z56cd367b37
 Dim tstToastBasePath
 tstToastBasePath=""
 Class z6a54e5afd0
 Dim z3b3ddf5c95
 Dim za1b102d9e7
 Dim ze4914c3d49
 Private Sub Class_Initialize()
za1b102d9e7=(&hf95+4094-&H1f61)
 ze4914c3d49=(&hbd+2773-&Hb92)
 ReDim z3b3ddf5c95(za1b102d9e7)
End Sub
 Public Sub Append(ByVal zcd03d78132)
If ze4914c3d49>UBound(z3b3ddf5c95) Then
ReDim Preserve z3b3ddf5c95(UBound(z3b3ddf5c95)+za1b102d9e7)
End If
 z3b3ddf5c95(ze4914c3d49)=zcd03d78132
 ze4914c3d49=ze4914c3d49+(&h10ab+196-&H116e)
 End Sub
 Public Function ToString()
ToString=Join(z3b3ddf5c95,"")
End Function
 End Class
 Function shrGetConfig(z2136f54962)
shrGetConfig=z2b79277e31(z2136f54962)
End Function
 Function shrDoLogin(ByVal z5b7c89c8d8,ByVal z1642ba86b3)
shrDoLogin=zcc202045a5(z5b7c89c8d8,z1642ba86b3)
End Function
 Sub shrExecuteSQL(zca7201199f)
zc3ca15e96a zca7201199f
 End Sub
 Function shrGetRecordset(zca7201199f,z5ee823245c,zb445187b87,zca313c5876,z8605ea64d1)
Set shrGetRecordset=z8d771a8f58(zca7201199f,z5ee823245c,zb445187b87,zca313c5876,z8605ea64d1)
End Function
 Function shrNewForum(ByRef z41cd2009da,ByVal zbf76baf338,ByVal zd19c1e5c9f,ByVal zbfa4c82c6b,ByVal zb21ba22a66,ByVal zc92f30f8d6,ByVal zf94441b298,ByVal zf9bac91e20)
shrNewForum=z9b91325ee7(z41cd2009da,zbf76baf338,zd19c1e5c9f,zbfa4c82c6b,zb21ba22a66,zc92f30f8d6,zf94441b298,zf9bac91e20)
End Function
 Function shrModifyForum(ByVal z41cd2009da,ByVal zbf76baf338,ByVal zd19c1e5c9f,ByVal zbfa4c82c6b,ByVal zb21ba22a66,ByVal zc92f30f8d6,ByVal zf94441b298,ByVal zf9bac91e20)
shrModifyForum=z87c778e18f(z41cd2009da,zbf76baf338,zd19c1e5c9f,zbfa4c82c6b,zb21ba22a66,zc92f30f8d6,zf94441b298,zf9bac91e20)
End Function
 Function shrDeleteForum(ByVal z41cd2009da)
shrDeleteForum=za899e79cf8(z41cd2009da)
End Function
 Function shrFindForums(ByVal z41cd2009da,ByVal zf9bac91e20)
Set shrFindForums=zce564571ba(z41cd2009da,zf9bac91e20)
End Function
 Function shrNewPost(ByVal z41cd2009da,ByRef z349f07a138,ByRef z03780c207a,ByVal zee086bfcee,ByVal zb4b37c82b4,ByVal z5fa3ab9f0b,ByVal z844c67087f,ByVal z25352d0d09,ByVal z1dc37221ca)
shrNewPost=z0d07400a80(z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca)
End Function
 Function shrModifyPost(ByVal z41cd2009da,ByVal z349f07a138,ByVal z03780c207a,ByVal zee086bfcee,ByVal zb4b37c82b4,ByVal z5fa3ab9f0b,ByVal z844c67087f,ByVal z25352d0d09,ByVal z1dc37221ca,ByVal ze4450bdfd2,ByVal zf9bac91e20)
shrModifyPost=zc810b06458(z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca,ze4450bdfd2,zf9bac91e20)
End Function
 Function shrDeletePost(ByVal zbec44f5072)
shrDeletePost=z1b2762e35e(zbec44f5072)
End Function
 Function shrFindPosts(ByVal z41cd2009da,ByVal z349f07a138,ByVal z03780c207a,ByVal zee086bfcee,ByVal za070ab37c5,ByVal z5fa3ab9f0b,ByVal z844c67087f,ByVal z25352d0d09,ByVal z1dc37221ca,ByVal ze4450bdfd2,ByVal zf9bac91e20,ByVal zc8a7910fa6,ByVal z5ebd5e1f42,ByVal zf5a9f0892a,ByVal z33b419b857)
Set shrFindPosts=zb76ffc630e(z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,za070ab37c5,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca,ze4450bdfd2,zf9bac91e20,zc8a7910fa6,z5ebd5e1f42,zf5a9f0892a,z33b419b857)
End Function
 Function shrNewUser(ByRef zee086bfcee,ByVal z8432001327,ByVal z53d1c821d9,ByVal z5b7c89c8d8,ByVal z1642ba86b3,ByVal z3090078ab5,ByVal zac68ef67d0,ByVal z068600d1b4,ByVal zb835606b12,ByVal z8546e9ff6c,ByVal z5305b9d501,ByVal z166427a15f,ByVal zbf4fc4fda4)
shrNewUser=z32fca02bcb(zee086bfcee,z8432001327,z53d1c821d9,z5b7c89c8d8,z1642ba86b3,z3090078ab5,zac68ef67d0,z068600d1b4,zb835606b12,z8546e9ff6c,z5305b9d501,z166427a15f,zbf4fc4fda4)
End Function
 Function shrModifyUser(ByVal zee086bfcee,ByVal z8432001327,ByVal z53d1c821d9,ByVal z5b7c89c8d8,ByVal z1642ba86b3,ByVal z3090078ab5,ByVal zac68ef67d0,ByVal z068600d1b4,ByVal zb835606b12,ByVal z8546e9ff6c,ByVal z5305b9d501,ByVal z166427a15f,ByVal zbf4fc4fda4,ByVal z1962a4249e,ByVal ze7e9296041,ByVal z37c2ab73e3)
shrModifyUser=zfdd5f559cf(zee086bfcee,z8432001327,z53d1c821d9,z5b7c89c8d8,z1642ba86b3,z3090078ab5,zac68ef67d0,z068600d1b4,zb835606b12,z8546e9ff6c,z5305b9d501,z166427a15f,zbf4fc4fda4,z1962a4249e,ze7e9296041,z37c2ab73e3)
End Function
 Function shrDeleteUser(ByVal zf88826d19f)
shrDeleteUser=z54717e971a(zf88826d19f)
End Function
 Function shrFindUser(ByVal zee086bfcee,ByVal z8432001327,ByVal z53d1c821d9,ByVal z5b7c89c8d8,ByVal z3090078ab5,ByVal zf5a9f0892a)
Set shrFindUser=z43b73c2129(zee086bfcee,z8432001327,z53d1c821d9,z5b7c89c8d8,z3090078ab5,zf5a9f0892a)
End Function
 Function shrRC4Encrypt(zb54d054ce3,ze82d0429ff)
shrRC4Encrypt=z0e88947362(zb54d054ce3,ze82d0429ff)
End Function
 Function shrRC4EncryptPassword(ze82d0429ff)
shrRC4EncryptPassword=z0e88947362(z2363c3e941,ze82d0429ff)
End Function
 Function shrUpdateBoardStats(ze82d0429ff)
Call z351cebac46
 End Function
 Function z4b400b6588(z6934537acb)
On Error Resume Next
 Set z4b400b6588=z36cb822491(z6934537acb)
If Err.Number<>(&hf0d+3749-&H1db2) Then
 z05055d52f8=Err.Number
 zda3c349208=Err.Description
 z3f94db6842=Err.Source
 End If
 On Error Goto 0
 If zda3c349208<>"" Then Err.Raise z05055d52f8,z3f94db6842 &"-->Read Dictionary From File",zda3c349208 &vbCrLf &"ReadDictionaryfromFile Info: " &z6934537acb
 End Function
 Function z36cb822491(z6934537acb)
Dim z525e342a54
 Dim z67b1b55a37
 Dim zd38b036918
 Set z67b1b55a37=Server.CreateObject("Scripting.Dictionary")
z525e342a54=Split(z33888dbd2a(z6934537acb),vbCrLf,-(&h9e6+3318-&H16db))
For zd38b036918=(&h1af+2258-&Ha81) to UBound(z525e342a54)
If Left(z525e342a54(zd38b036918),(&ha4f+7329-&H26ef))=";" Or z525e342a54(zd38b036918)="" Then
 z67b1b55a37.Add "cmt" &zd38b036918,z525e342a54(zd38b036918)
Else
 z67b1b55a37.Add Trim(Left(z525e342a54(zd38b036918),Instr(z525e342a54(zd38b036918),"=")-(&h174+3855-&H1082))),Replace(Trim(Mid(z525e342a54(zd38b036918),Instr(z525e342a54(zd38b036918),"=")+(&h83d+3636-&H1670))),"<!--%vbCrLf%-->",vbCrLf)
End If
 Next
 Set z36cb822491=z67b1b55a37
 End Function
 Sub zbd43a15cb8(z097e8b6d5d,z6934537acb)
On Error Resume Next
 zfc2bf4e66e z097e8b6d5d,z6934537acb
 If Err.Number<>(&hc52+1599-&H1291) Then
 z05055d52f8=Err.Number
 zda3c349208=Err.Description
 z3f94db6842=Err.Source
 End If
 On Error Goto 0
 If zda3c349208<>"" Then Err.Raise z05055d52f8,z3f94db6842 &"-->Write Dictionary To File",zda3c349208 &vbCrLf &"WriteDictionarytoFile Info: " &z6934537acb
 End Sub
 Sub zfc2bf4e66e(z097e8b6d5d,z6934537acb)
Dim z9a99a99cec
 Dim zccdf24981b
 For Each z9a99a99cec In z097e8b6d5d
 If Left(z9a99a99cec,(&h210+8801-&H246e))="cmt" Then
 zccdf24981b=zccdf24981b &z097e8b6d5d(z9a99a99cec) &vbCrLf
 Else
 zccdf24981b=zccdf24981b &z9a99a99cec &" = " &Replace(z097e8b6d5d(z9a99a99cec),vbCrLf,"<!--%vbCrLf%-->") &vbCrLf
 End If
 Next
 zccdf24981b=Left(zccdf24981b,Len(zccdf24981b)-(&h2b7+559-&H4e4))
z4838e18449 zccdf24981b,z6934537acb,zd9b3c12dfa
 End Sub
 Function z33888dbd2a(z6934537acb)
On Error Resume Next
 z33888dbd2a=z56398c8ae3(z6934537acb)
If Err.Number<>(&h1a3a+2032-&H222a) Then
 z05055d52f8=Err.Number
 zda3c349208=Err.Description
 z3f94db6842=Err.Source
 End If
 On Error Goto 0
 If zda3c349208<>"" Then Err.Raise z05055d52f8,z3f94db6842 &"-->Open File",zda3c349208 &vbCrLf &"OpenFile Info: " &z6934537acb
 End Function
 Function z56398c8ae3(z6934537acb)
Dim zc577d4a897
 Dim zf0330879d1
 Set zc577d4a897=Server.CreateObject(tstFileSystemObjectProgID)
Set zf0330879d1=zc577d4a897.OpenTextFile(z6934537acb)
z56398c8ae3=zf0330879d1.ReadAll
 zf0330879d1.Close
 Set zf0330879d1=Nothing
 Set zc577d4a897=Nothing
 End Function
 Sub z4838e18449(zccdf24981b,z6934537acb,z7a716839e2)
On Error Resume Next
 z706d469c27 zccdf24981b,z6934537acb,z7a716839e2
 If Err.Number<>(&h6fd+5845-&H1dd2) Then
 z05055d52f8=Err.Number
 zda3c349208=Err.Description
 z3f94db6842=Err.Source
 End If
 On Error Goto 0
 If zda3c349208<>"" Then Err.Raise z05055d52f8,z3f94db6842 &"-->Write File",zda3c349208 &vbCrLf &"WriteFile Info: " &z6934537acb
 End Sub
 Sub z706d469c27(zccdf24981b,z6934537acb,z7a716839e2)
Dim zc577d4a897
 Dim zf0330879d1
 Set zc577d4a897=Server.CreateObject(tstFileSystemObjectProgID)
Set zf0330879d1=zc577d4a897.OpenTextFile(z6934537acb,z7a716839e2,True,-(&h21ac+814-&H24d8))
zf0330879d1.Write zccdf24981b
 zf0330879d1.Close
 Set zf0330879d1=Nothing
 Set zc577d4a897=Nothing
 End Sub
 Function z8a99d62000(ByVal za34495c881,ByVal zd519368132)
Dim z78b875ea88,z9aa29175f8,zec63c73073
 Dim z591772c5ac,z21f859ff51,z9b83e83d3c
 Dim z15c004eefa
 Dim zd38b036918
 Dim zd1d3a33f1b
 zb6b99488fe zaa70a50e00("QkVHSU46IExpY2Vuc2UgQ2hlY2sg")
If za34495c881="" Then
 z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 If Left(za34495c881,(&h966+6556-&H22fd))="T16.1" Then
 za34495c881=zaa70a50e00(Right(za34495c881,Len(za34495c881)-(&h12bf+3324-&H1fb6)))
zd1d3a33f1b="T16.1"
 ElseIf Left(za34495c881,(&h87b+6401-&H2179))="T16" Then
 za34495c881=zaa70a50e00(Right(za34495c881,Len(za34495c881)-(&h98b+402-&Hb1a)))
zd1d3a33f1b="T16"
 Else
 zd1d3a33f1b="T15"
 End If
 zb6b99488fe zd1d3a33f1b
 z78b875ea88=z0e88947362("+d-f90843jg-==114%^@d2dt#$FFFw3qgBB4324FFVV$$@4RDGVC$#$^!!23",za34495c881)
zb6b99488fe "."
 If InStr((&hfd5+1643-&H163f),z78b875ea88,"|")=(&hde8+3239-&H1a8f) Then
 z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 z9aa29175f8=Left(z78b875ea88,Instr((&h1b62+906-&H1eeb),z78b875ea88,"|")-(&h25+4616-&H122c))
If zd1d3a33f1b="T16.1" Then
 z21f859ff51=Left(z9aa29175f8,(&h27a+7027-&H1dea))
Else
 z21f859ff51=Left(z9aa29175f8,(&h1408+2860-&H1f32))
End If
 z9b83e83d3c=Right(z9aa29175f8,(&h402+4851-&H16f3))
zb6b99488fe z21f859ff51 &", " &z9b83e83d3c
 zec63c73073=Right(z78b875ea88,Len(z78b875ea88)-Instr((&h18e8+3102-&H2505),z78b875ea88,"|"))
z591772c5ac=Right(zec63c73073,(&h690+349-&H7eb))
zb6b99488fe z591772c5ac
 If Not IsNumeric(z21f859ff51) Then
z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 If Not IsNumeric(z9b83e83d3c) Then
z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 If Not IsNumeric(z591772c5ac) Then
z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 z9aa29175f8=LCase(Mid(z9aa29175f8,z9b83e83d3c,z21f859ff51))
zb6b99488fe z9aa29175f8
 If z9aa29175f8<>"" Then
 If Not InStr((&h3d8+8066-&H2359),z9aa29175f8,LCase(zd519368132))>(&h13b+9323-&H25a6) Then
 z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 Else
 z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 zec63c73073=Mid(zec63c73073,z591772c5ac,(&h1595+4005-&H2532))
zb6b99488fe zec63c73073
 If Len(zec63c73073)<>(&hfc9+5724-&H261d) Then
 z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 zb6b99488fe "."
 If IsDate(zec63c73073) Then
If Date()>CDate(zec63c73073) Then
z8a99d62000=z464ed002ff &zec63c73073
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 Else
 If InStr(z9aa29175f8,"NOBRANDING")>(&h3e5+5068-&H17b1) Then
 z8a99d62000=zd2118b3199 &zec63c73073
 Else
 z8a99d62000=z923b766c14 &zd1d3a33f1b &zec63c73073
 End If
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 Else
 If zec63c73073="NOPROFIT" Then
 If InStr(LCase(z9aa29175f8),"nobranding")>(&h527+4088-&H151f) Then
 z8a99d62000=zc67da6b639
 Else
 z8a99d62000=z4590a1f8a1 &zd1d3a33f1b
 End If
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 ElseIf zec63c73073="NOEXPIRE" Then
 If InStr(LCase(z9aa29175f8),"nobranding")>(&h1df+1284-&H6e3) Then
 z8a99d62000=zef77e02ea0
 Else
 z8a99d62000=z3da753509a &zd1d3a33f1b
 End If
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 Else
 z8a99d62000=z961b3357ec
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 Exit Function
 End If
 End If
 zb6b99488fe zaa70a50e00("RU5EOiBMaWNlbnNlIENoZWNrOiAg") &z8a99d62000
 End Function
 Function z0e88947362(zb54d054ce3,ze82d0429ff)
Dim z7967f5fef0(255)
Dim z29645f2b32(255)
Dim z0546ae2cc6,z0cc23fc900,zea81248d93
 Dim z33e052d816,zc38d2343fe,zfc45ba4707
 Dim z2921a1a705,ze439a1920e
 zfc45ba4707=(&h7fc+2998-&H13b2)
 For zc38d2343fe=(&h1569+1812-&H1c7d) To (&h1137+1535-&H1637)
 zfc45ba4707=zfc45ba4707+(&habd+4803-&H1d7f)
 If zfc45ba4707>Len(zb54d054ce3) Then
zfc45ba4707=(&h1352+2266-&H1c2b)
 End If
 z29645f2b32(zc38d2343fe)=Asc(Mid(zb54d054ce3,zfc45ba4707,(&h476+8700-&H2671)))
Next
 For zc38d2343fe=(&h2a9+2733-&Hd56) To (&hbe7+1053-&Hf05)
 z7967f5fef0(zc38d2343fe)=zc38d2343fe
 Next
 zfc45ba4707=(&h15f3+2528-&H1fd3)
 For zc38d2343fe=(&h9bd+1307-&Hed8) To (&h6b0+3474-&H1343)
 zfc45ba4707=(zfc45ba4707+z7967f5fef0(zc38d2343fe)+z29645f2b32(zc38d2343fe))Mod (&h1833+673-&H19d4)
 z33e052d816=z7967f5fef0(zc38d2343fe)
z7967f5fef0(zc38d2343fe)=z7967f5fef0(zfc45ba4707)
z7967f5fef0(zfc45ba4707)=z33e052d816
 Next
 For zc38d2343fe=(&h1e85+928-&H2224) To Len(ze82d0429ff)
z0546ae2cc6=(z0546ae2cc6+(&hba7+1177-&H103f))Mod (&h112b+4860-&H2327)
 z0cc23fc900=(z0cc23fc900+z7967f5fef0(z0546ae2cc6))Mod (&h28f+9210-&H2589)
 z33e052d816=z7967f5fef0(z0546ae2cc6)
z7967f5fef0(z0546ae2cc6)=z7967f5fef0(z0cc23fc900)
z7967f5fef0(z0cc23fc900)=z33e052d816
 zea81248d93=z7967f5fef0((z7967f5fef0(z0546ae2cc6)+z7967f5fef0(z0cc23fc900))Mod (&h1b8a+2761-&H2553))
z2921a1a705=Asc(Mid(ze82d0429ff,zc38d2343fe,(&h9ed+123-&Ha67)))Xor zea81248d93
 ze439a1920e=ze439a1920e &Chr(z2921a1a705)
Next
 z0e88947362=ze439a1920e
 End Function
 Function zaa70a50e00(ByVal ze82d0429ff)
Dim z46478e2502,z4d648691f5
 Dim z8672d2cc80,zf75d3be834
 Dim z3b3163080d,z0d5acc9448,za618f294df,z99032dc892
 Dim zfe2fc84728,za6484a9b15,z49a19a778e
 If Len(ze82d0429ff)Mod (&hc4+5560-&H1678)>(&h295+6759-&H1cfc) Then ze82d0429ff=ze82d0429ff &String((&h530+6520-&H1ea4)-(Len(ze82d0429ff)Mod (&h606+7223-&H2239))," ")
z46478e2502=""
 For z4d648691f5=(&h2d5+2613-&Hd09) To Len(ze82d0429ff)Step (&h2d5+7381-&H1fa6)
 zf75d3be834=""
 z8672d2cc80=Mid(ze82d0429ff,z4d648691f5,(&hd16+6242-&H2574))
z3b3163080d=INSTR(z18b5bec48a,Mid(z8672d2cc80,(&h1aa5+480-&H1c84),(&h1051+4913-&H2381)))-(&h4fc+7014-&H2061)
 z0d5acc9448=INSTR(z18b5bec48a,Mid(z8672d2cc80,(&hd0a+5149-&H2125),(&h4+8740-&H2227)))-(&h1007+763-&H1301)
 za618f294df=INSTR(z18b5bec48a,Mid(z8672d2cc80,(&h91a+2556-&H1313),(&h12cb+5176-&H2702)))-(&h53c+5037-&H18e8)
 z99032dc892=INSTR(z18b5bec48a,Mid(z8672d2cc80,(&h715+7948-&H261d),(&h424+5078-&H17f9)))-(&h223+8666-&H23fc)
 zfe2fc84728=Chr(((z0d5acc9448 And (&h1f6a+1615-&H2589))\(&hb10+4489-&H1c89))Or(z3b3163080d*(&h14d4+1394-&H1a42))And (&h301+826-&H53c))
za6484a9b15=zf75d3be834 &Chr(((za618f294df And (&h2af+1614-&H8c1))\(&h7af+869-&Hb10))Or(z0d5acc9448*(&hbd1+930-&Hf63))And (&hcac+52-&Hbe1))
z49a19a778e=Chr((((za618f294df And (&h368+1828-&Ha89))*(&h68c+5563-&H1c07))And (&h674+6721-&H1fb6))Or(z99032dc892 And (&h14b2+3185-&H20e4)))
zf75d3be834=zfe2fc84728 &za6484a9b15 &z49a19a778e
 z46478e2502=z46478e2502+zf75d3be834
 Next
 zaa70a50e00=Trim(z46478e2502)
End Function
 Function zd29234ba45(ByVal ze82d0429ff)
Dim z4d648691f5,z46478e2502,z3b3163080d,z0d5acc9448,za618f294df,z99032dc892
 Dim zfe2fc84728,za6484a9b15,z49a19a778e
 Dim z657671894f,ze05285cc76
 Dim zf75d3be834,z8672d2cc80
 If Len(ze82d0429ff)Mod (&h164d+3577-&H2443)>(&h1ad6+2725-&H257b) Then ze82d0429ff=ze82d0429ff &String((&h63a+6383-&H1f26)-(Len(ze82d0429ff)Mod (&h1e80+1628-&H24d9))," ")
z46478e2502=""
 For z4d648691f5=(&hd15+1000-&H10fc) To Len(ze82d0429ff)Step (&h2bc+3160-&Hf11)
 z8672d2cc80=""
 zf75d3be834=Mid(ze82d0429ff,z4d648691f5,(&hff1+4908-&H231a))
zfe2fc84728=Asc(Mid(zf75d3be834,(&h12c+9131-&H24d6),(&h1586+158-&H1623))):z657671894f=zfe2fc84728 And (&h32+5080-&H1407)
 za6484a9b15=Asc(Mid(zf75d3be834,(&h1497+767-&H1794),(&h61d+1894-&Hd82))):ze05285cc76=za6484a9b15 And (&hc55+104-&Hcae)
 z49a19a778e=Asc(Mid(zf75d3be834,(&h925+2452-&H12b6),(&h1743+1771-&H1e2d)))
z3b3163080d=Mid(z18b5bec48a,((zfe2fc84728 And (&h1ec2+2359-&H26fd))\(&he81+2837-&H1992))+(&h59d+1853-&Hcd9),(&h340+229-&H424))
z0d5acc9448=Mid(z18b5bec48a,(((za6484a9b15 And (&h1133+3917-&H1f90))\(&hdb8+1378-&H130a))Or(z657671894f*(&h127c+2754-&H1d2e))And (&hf8d+3427-&H1bf1))+(&h138d+4904-&H26b4),(&h18f+6811-&H1c29))
za618f294df=Mid(z18b5bec48a,(((z49a19a778e And (&h1ad8+1885-&H2175))\(&h945+2579-&H1318))Or(ze05285cc76*(&hd25+5554-&H22d3))And (&h2689+361-&H26f3))+(&ha14+380-&Hb8f),(&h24b+2545-&Hc3b))
z99032dc892=Mid(z18b5bec48a,(z49a19a778e And (&hf03+5533-&H2461))+(&hb73+5113-&H1f6b),(&h1c28+2176-&H24a7))
z8672d2cc80=z3b3163080d &z0d5acc9448 &za618f294df &z99032dc892
 z46478e2502=z46478e2502+z8672d2cc80
 Next
 zd29234ba45=z46478e2502
 End Function
 Function ze7da9e061f(z1c126544a4,z22cccd659d)
Dim z4bf408e4fe,za4ee3565f6,zb19a59cc82,z6229c879e5,zffeb47dbcc,z74e1d1e89d,z8085a01d31
 Dim z206192a47a,z750108d650,zdfd46d9acf
 Dim zd1ff813593,zb281ff7774
 Dim z915e0b5630
 Dim zd38b036918
 Select Case z22cccd659d
 Case z3da753509a
 z74e1d1e89d=zaa70a50e00("UmVnaXN0ZXJlZCBFZGl0aW9u")
Case z4590a1f8a1
 z74e1d1e89d=zaa70a50e00("Tm9uLVByb2ZpdCBFZGl0aW9u")
Case Else
 z74e1d1e89d=zaa70a50e00("UGVyc29uYWwgRWRpdGlvbiAg")
z8085a01d31=zaa70a50e00("PGJyPjxicj48YnI+R2V0IGEgZnJlZSBUb2FzdCBGb3J1bXMgbWVzc2FnZSBib2FyZDxicj5mb3IgeW91ciB3ZWJzaXRlIGF0IDxhIGhyZWY9Imh0dHA6Ly93d3cudG9hc3Rmb3J1bXMuY29tIiB0YXJnZXQ9Il9ibGFuayIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7Ij48Zm9udCBmYWNlPSJhcmlhbCxoZWx2ZXRpY2EiIHN0eWxlPSJsZXR0ZXItc3BhY2luZzoxcHg7IiBzaXplPSIxIiBjb2xvcj0iYmxhY2siPnRvYXN0Zm9ydW1zLmNvbTwvZm9udD48L2E+ITwvZm9udD4g")
End Select
 za4ee3565f6=zaa70a50e00("PGJyPjx0YWJsZSB3aWR0aD0iMTAwJSIgYm9yZGVyPSIwIiBjZWxsc3BhY2luZz0iMCIgY2VsbHBhZGRpbmc9IjAiIHN0eWxlPSJmb250LWZhbWlseTpUYWhvbWEsQXJpYWwsSGVsdmV0aWNhO2ZvbnQtc2l6ZToxMHB4O2xldHRlci1zcGFjaW5nOjFweDtjb2xvcjpibGFjazsiPjx0cj48dGQgd2lkdGg9IjEwMCUiIGFsaWduPSJjZW50ZXIiIG5vd3JhcD48YSBocmVmPSJodHRwOi8vd3d3LnRvYXN0Zm9ydW1zLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPjxpbWcgYm9yZGVyPSIwIiBzcmM9Imh0dHA6Ly93d3cudG9hc3Rmb3J1bXMuY29tL2ltYWdlcy9wb3dlcmVkYnkg")
za4ee3565f6=za4ee3565f6 &z283272137a &zaa70a50e00("LmdpZiIgYWx0PSJQb3dlcmVkIGJ5IFRvYXN0IEZvcnVtcyAg") &" " &z283272137a &" " &z74e1d1e89d &zaa70a50e00("IiB0aXRsZT0iUG93ZXJlZCBieSBUb2FzdCBGb3J1bXMg") &" " &z283272137a &" " &z74e1d1e89d &zaa70a50e00("Ij48L2E+PGJyPkNvcHlyaWdodCCpIDIwMDAtMjAwNzxicj48YSBocmVmPSJodHRwOi8vd3d3LmhlYWRydXNobWVkaWEuY29tIiB0YXJnZXQ9Il9ibGFuayIgc3R5bGU9InRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7Y29sb3I6YmxhY2s7Ij5IZWFkcnVzaCBNZWRpYTwvYT4gYW5kIDxhIGhyZWY9Imh0dHA6Ly93d3cuYXBwZWxzb2Z0LmNvbSIgdGFyZ2V0PSJfYmxhbmsiIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO2NvbG9yOmJsYWNrOyI+QXBwZWxzb2Z0PC9hPiAg")
za4ee3565f6=za4ee3565f6 &z8085a01d31 &zaa70a50e00("PC90ZD48L3RyPjwvdGFibGU+PGJyPiZuYnNwOyAg")
z206192a47a=Instr((&h867+5386-&H1d70),z1c126544a4,zaa70a50e00("PC9ib2R5PiAg"),(&h1570+1519-&H1b5e))
If z206192a47a=(&he5f+3843-&H1d62) Then
 z206192a47a=InStr((&h12c0+1946-&H1a59),z1c126544a4,zaa70a50e00("PC9odG1sPiAg"),(&h11a4+1072-&H15d3))
If z206192a47a=(&h124c+3637-&H2081) Then
 z206192a47a=Len(z1c126544a4)
Else
 zb19a59cc82=zaa70a50e00("PC9ib2R5PiAg")
End If
 End If
 z915e0b5630=Split(z49677c7424,",")
For zd38b036918=(&hed7+5424-&H2407) To UBound(z915e0b5630)
zd1ff813593=Left(z915e0b5630(zd38b036918),Instr((&hcbc+3753-&H1b64),z915e0b5630(zd38b036918),"|")-(&h1c2f+2052-&H2432))
zb281ff7774=Mid(z915e0b5630(zd38b036918),Instr((&h198c+1951-&H212a),z915e0b5630(zd38b036918),"|")+(&h2d+1708-&H6d8),Len(z915e0b5630(zd38b036918)))
z750108d650=InStrRev(z1c126544a4,Left(zd1ff813593,Len(zd1ff813593)-(&h1148+5027-&H24ea)),z206192a47a,(&h2a8+6551-&H1c3e))
zdfd46d9acf=InStrRev(z1c126544a4,zb281ff7774,z206192a47a,(&h61+3431-&Hdc7))
If z750108d650>zdfd46d9acf Then
 z6229c879e5=z6229c879e5 &zb281ff7774
 zffeb47dbcc=zd1ff813593 &zffeb47dbcc
 End If
 Next
 If z206192a47a<Len(z1c126544a4) Then
z4bf408e4fe=Mid(z1c126544a4,z206192a47a,Instr(z206192a47a+(&hd45+6168-&H255c),z1c126544a4,">")-z206192a47a+(&h2174+1374-&H26d1))
z1c126544a4=Replace(z1c126544a4,z4bf408e4fe,z6229c879e5 &za4ee3565f6 &zb19a59cc82 &z4bf408e4fe &zffeb47dbcc,(&h121a+4676-&H245d),(&hd87+5207-&H21dd))
Else
 z1c126544a4=z1c126544a4 &z6229c879e5 &za4ee3565f6 &zb19a59cc82 &z4bf408e4fe &zffeb47dbcc
 End If
 ze7da9e061f=z1c126544a4
 End Function
 Function z8bbc344891(ze82d0429ff)
Dim zc08b1c4e13
 Dim ze449bdd895,z32efb1a4e0
 Dim z87f5d2e0f5,zf376134509,z5898a0894d,z2a044c38b4
 Dim z7bda398395
 Dim zd38b036918
 zc08b1c4e13=z2b79277e31("tstcfgAllowedHTML")
If Left(zc08b1c4e13,(&ha26+4418-&H1b67))="|" Then zc08b1c4e13=Right(zc08b1c4e13,Len(zc08b1c4e13)-(&h9bc+3722-&H1845))
If Right(zc08b1c4e13,(&h3cf+5752-&H1a46))="|" Then zc08b1c4e13=Left(zc08b1c4e13,Len(zc08b1c4e13)-(&h119b+4997-&H251f))
ze449bdd895=Split(zc08b1c4e13,"|")
If Not IsObject(zaeb868fcc0)Then Set zaeb868fcc0=New RegExp
 zaeb868fcc0.Global=True
 zaeb868fcc0.IgnoreCase=True
 zaeb868fcc0.Pattern="<[^>]*>"
 Set zf376134509=zaeb868fcc0.Execute(ze82d0429ff)
z5898a0894d=(&h960+1743-&H102f)
 For Each z87f5d2e0f5 in zf376134509
 If Instr(z87f5d2e0f5," ")>(&hba+5879-&H17b1) Then
 z2a044c38b4=Left(z87f5d2e0f5,Instr(z87f5d2e0f5," ")-(&h25db+249-&H26d3))
Else
 z2a044c38b4=Left(z87f5d2e0f5,Instr(z87f5d2e0f5,">")-(&hdfc+2125-&H1648))
End If
 z7bda398395=False
 If Len(z2a044c38b4)>(&hce8+4243-&H1d7a) Then
 If Left(z2a044c38b4,(&h959+1900-&H10c3))="</" Then
 z2a044c38b4=Right(z2a044c38b4,Len(z2a044c38b4)-(&h19c4+177-&H1a73))
Else
 z2a044c38b4=Right(z2a044c38b4,Len(z2a044c38b4)-(&hb9f+1924-&H1322))
End If
 For zd38b036918=(&h9db+3350-&H16f1) To UBound(ze449bdd895)
z32efb1a4e0=Left(ze449bdd895(zd38b036918),InStr((&h537+7890-&H2408),ze449bdd895(zd38b036918),">"))
If z32efb1a4e0="<" &LCase(z2a044c38b4) &">" Then
 z7bda398395=True
 Exit For
 End If
 Next
 End If
 If InStr(z87f5d2e0f5,"javascript")>(&h33f+4949-&H1694) Or InStr(z2a044c38b4,"vbscript")>(&h139+6304-&H19d9) Or InStr(z2a044c38b4,"jscript")>(&h9d0+5718-&H2026) Then
 z7bda398395=False
 End If
 If Not z7bda398395 Then
 z2a044c38b4=Replace(z87f5d2e0f5,"<","&lt;")
z2a044c38b4=Replace(z2a044c38b4,">","&gt;")
ze82d0429ff=Mid(ze82d0429ff,(&h952+4048-&H1921),z87f5d2e0f5.FirstIndex+z5898a0894d) &z2a044c38b4 &Mid(ze82d0429ff,z87f5d2e0f5.FirstIndex+(&hffa+4326-&H20df)+z87f5d2e0f5.Length+z5898a0894d,Len(ze82d0429ff))
z5898a0894d=z5898a0894d+(Len(z2a044c38b4)-Len(z87f5d2e0f5))
End If
 Next
 z8bbc344891=ze82d0429ff
 End Function
 Function zab2d4505d1(ze82d0429ff)
zab2d4505d1=Replace(ze82d0429ff,"&","&amp;")
zab2d4505d1=Replace(zab2d4505d1,"<","&lt;")
zab2d4505d1=Replace(zab2d4505d1,">","&gt;")
zab2d4505d1=Replace(zab2d4505d1,"""","&quot;")
End Function
 Function z4e06689c9b(ze82d0429ff)
Dim z337bbce1f2
 Dim z89337f1502
 Dim z0026484cbe,z8b639974fc
 Dim zd38b036918
 If z2b79277e31("tstcfgBadWordFilter")="False" Then
 z4e06689c9b=ze82d0429ff
 Exit Function
 End If
 z337bbce1f2=zab2d4505d1(z2b79277e31("tstcfgBadWordList"))
If Left(z337bbce1f2,(&hd3a+1830-&H145f))="|" Then z337bbce1f2=Right(z337bbce1f2,Len(z337bbce1f2)-(&h4ed+3142-&H1132))
If Right(z337bbce1f2,(&hf07+4069-&H1eeb))="|" Then z337bbce1f2=Left(z337bbce1f2,Len(z337bbce1f2)-(&h168c+2662-&H20f1))
z89337f1502=Split(z337bbce1f2,"|")
For zd38b036918=(&he74+574-&H10b2) To UBound(z89337f1502)
If Instr((&h1c1f+73-&H1c67),z89337f1502(zd38b036918),":")>(&h790+7906-&H2672) Then
 z0026484cbe=Left(z89337f1502(zd38b036918),InStr((&h169+7369-&H1e31),z89337f1502(zd38b036918),":")-(&h83f+3160-&H1496))
z8b639974fc=Mid(z89337f1502(zd38b036918),InStr((&h463+830-&H7a0),z89337f1502(zd38b036918),":")+(&hc6b+3164-&H18c6),Len(z89337f1502(zd38b036918)))
Else
 z0026484cbe=z89337f1502(zd38b036918)
z8b639974fc="****"
 End If
 ze82d0429ff=Replace(ze82d0429ff,z0026484cbe,z8b639974fc,(&hb1c+6943-&H263a),-(&h768+7992-&H269f),(&h1661+280-&H1778))
Next
 z4e06689c9b=ze82d0429ff
 End Function
 Function z7c96db34ed(ze82d0429ff)
ze82d0429ff=Replace(ze82d0429ff,"&quot;","""")
ze82d0429ff=Replace(ze82d0429ff,"&amp;","&")
ze82d0429ff=Replace(ze82d0429ff,"&lt;","<")
ze82d0429ff=Replace(ze82d0429ff,"&gt;",">")
ze82d0429ff=Replace(ze82d0429ff,"&tilde;","~")
ze82d0429ff=Replace(ze82d0429ff,"&nbsp;"," ")
z7c96db34ed=ze82d0429ff
 End Function
 Function zb4e0e0c8f0(ze82d0429ff,z6d6751724b)
Dim z5b22a8a7dd
 Dim zd616e4fe31
 z5b22a8a7dd=InStrRev(ze82d0429ff,"<",z6d6751724b)
If z5b22a8a7dd>(&h4cc+977-&H89d) Then
 zd616e4fe31=InStrRev(ze82d0429ff,">",z6d6751724b)
If zd616e4fe31>(&h120a+3683-&H206d) Then
 If z5b22a8a7dd<zd616e4fe31 Then
 zb4e0e0c8f0=False
 Else
 zb4e0e0c8f0=True
 End If
 Else
 zb4e0e0c8f0=True
 End If
 Else
 zb4e0e0c8f0=False
 End If
 End Function
 Function z149b606b96(ze82d0429ff)
Dim z87f5d2e0f5,zf376134509,z5898a0894d,z9674c0114f,z051bd9653e,z7231259736
 If Not IsObject(zaeb868fcc0)Then Set zaeb868fcc0=New RegExp
 zaeb868fcc0.Global=True
 zaeb868fcc0.IgnoreCase=True
 If z2b79277e31("tstcfgURLRegExp")="" Then
 zaeb868fcc0.Pattern="(((ht|f)tps?://)|(www\.))([\w-]+\.)+[\w-:]+(/[\w- ./?%#;&=]*)?"
 Else
 zaeb868fcc0.Pattern=z2b79277e31("tstcfgURLRegExp")
End If
 Set zf376134509=zaeb868fcc0.Execute(ze82d0429ff)
z5898a0894d=(&h19ad+3387-&H26e8)
 For Each z87f5d2e0f5 in zf376134509
 z9674c0114f=z87f5d2e0f5
 If Left(z9674c0114f,(&h471+187-&H528))="www." Then z9674c0114f="http://" &z9674c0114f
 If Not zb4e0e0c8f0(ze82d0429ff,z87f5d2e0f5.FirstIndex+z5898a0894d+(&h5f1+6505-&H1f59)) Then
z7231259736=Replace(Replace(z2b79277e31("tstlnkAutoLinkURL"),"<!--%URLText%-->",z87f5d2e0f5),"<!--%URL%-->",z9674c0114f)
ze82d0429ff=Mid(ze82d0429ff,(&hf84+57-&Hfbc),z87f5d2e0f5.FirstIndex+z5898a0894d) &z7231259736 &Mid(ze82d0429ff,z87f5d2e0f5.FirstIndex+(&h6e8+4299-&H17b2)+z87f5d2e0f5.Length+z5898a0894d,Len(ze82d0429ff))
z5898a0894d=z5898a0894d+Len(z7231259736)-Len(z87f5d2e0f5)
End If
 Next
 If z2b79277e31("tstcfgEmailRegExp")="" Then
 zaeb868fcc0.Pattern="[A-Za-z0-9_+-.']+@\w+([-.]\w+)*\.\w+([-.]\w+)*"
 Else
 zaeb868fcc0.Pattern=z2b79277e31("tstcfgEmailRegExp")
End If
 Set zf376134509=zaeb868fcc0.Execute(ze82d0429ff)
z5898a0894d=(&hd5c+2239-&H161b)
 For Each z87f5d2e0f5 in zf376134509
 z051bd9653e=z87f5d2e0f5
 If Not zb4e0e0c8f0(ze82d0429ff,z87f5d2e0f5.FirstIndex+z5898a0894d+(&h16fa+3991-&H2690)) Then
z7231259736=Replace(Replace(z2b79277e31("tstlnkAutoLinkURL"),"<!--%URLText%-->",z87f5d2e0f5),"<!--%URL%-->","mailto:" &z051bd9653e)
ze82d0429ff=Mid(ze82d0429ff,(&h117+2200-&H9ae),z87f5d2e0f5.FirstIndex+z5898a0894d) &z7231259736 &Mid(ze82d0429ff,z87f5d2e0f5.FirstIndex+(&h2d6+6254-&H1b43)+z87f5d2e0f5.Length+z5898a0894d,Len(ze82d0429ff))
z5898a0894d=z5898a0894d+Len(z7231259736)-Len(z87f5d2e0f5)
End If
 Next
 z149b606b96=ze82d0429ff
 End Function
 Function z6c038a02a5(ze82d0429ff)
Dim zd38b036918
 Dim zd732beb149
 For zd38b036918=(&h1d6+5228-&H1641) To Len(ze82d0429ff)
zd732beb149=Mid(ze82d0429ff,zd38b036918,(&h1978+2917-&H24dc))
zd732beb149=UCase(zd732beb149)
If(zd732beb149<"A" Or zd732beb149>"Z")And(Not IsNumeric(zd732beb149)) Then
z6c038a02a5=False
 Exit Function
 End If
 Next
 z6c038a02a5=True
 End Function
 Function z05a110f4c4(ByRef zcca66305f9)
If Not zcca66305f9 Is Nothing Then
 If zcca66305f9.State=z0a9c35fdf6 Then
 zcca66305f9.Close
 End If
 Set zcca66305f9=Nothing
 End If
 End Function
 Sub z5944fd56e8()
Dim z75d6380630
 zb6b99488fe "BEGIN: Open DB Connection."
 On Error Resume Next
 If IsEmpty(z83881822ff) Then
Set z83881822ff=Server.CreateObject("ADODB.Connection")
End If
 If z83881822ff Is Nothing Then
 Set z83881822ff=Server.CreateObject("ADODB.Connection")
End If
 For z75d6380630=(&h160c+705-&H18cc) To (&h1d58+22-&H1d0a)
 If z83881822ff.State=z8394469315 Then
 z83881822ff.Open tstDBConnectString
 Else
 zb6b99488fe "DB Connection already opened."
 End If
 If z83881822ff.State=z0a9c35fdf6 Then
 Err.Clear
 Exit For
 End If
 Next
 If Err.Number<>(&h1181+2265-&H1a5a) Then
 Dim zf9c4bb6829,z595f023c9e,z5942ae0f98
 zf9c4bb6829=Err.number
 z595f023c9e=Err.Description
 If tstDebugMode Then z595f023c9e=z595f023c9e &" (Connection String: " &tstDBConnectString &")"
 z5942ae0f98=Err.Source
 On Error Goto 0
 Err.Raise zf9c4bb6829,z5942ae0f98,z595f023c9e
 End If
 zb6b99488fe "END: Open DB Connection."
 End Sub
 Sub zdcd0251e32()
If Not z83881822ff Is Nothing Then
 zb6b99488fe "BEGIN: Close DB Connection."
 If z83881822ff.State=z0a9c35fdf6 Then
 z83881822ff.Close
 End If
 Set z83881822ff=Nothing
 zb6b99488fe "END: Close DB Connection."
 End If
 End Sub
 Function z8d771a8f58(zca7201199f,z5ee823245c,zb445187b87,zca313c5876,z8605ea64d1)
zb6b99488fe "BEGIN: Create Recordset."
 zb6b99488fe "SQL: " &zca7201199f
 Dim zcca66305f9
 Set zcca66305f9=Server.CreateObject("ADODB.Recordset")
z5944fd56e8
 On Error Resume Next
 With zcca66305f9
 If z5ee823245c>-(&hdb+292-&H1fe) Then
.CursorLocation=z5ee823245c
 End If
 If zb445187b87>-(&h9f1+2541-&H13dd) Then
.CursorType=zb445187b87
 End If
 If zca313c5876>-(&h90+6723-&H1ad2) Then
.LockType=zca313c5876
 End If
 If z8605ea64d1<>-(&h29f+6887-&H1d85) Then
.CacheSize=z8605ea64d1
 End If
 Dim z75d6380630
 For z75d6380630=(&h1265+4304-&H2334) To (&h144c+4058-&H23c2)
.Open zca7201199f,z83881822ff
 If Err.number=(&h1b86+2786-&H2668) Then
 Err.Clear
 Exit For
 End If
 Next
 End With
 If Err.Number<>(&h2d3+3887-&H1202) Then
 Dim zf9c4bb6829,z595f023c9e,z5942ae0f98
 zf9c4bb6829=Err.number
 z595f023c9e=Err.Description
 If tstDebugMode Then z595f023c9e=z595f023c9e &" (SQL: " &zca7201199f &")"
 z5942ae0f98=Err.Source
 On Error Goto 0
 Err.Raise zf9c4bb6829,z5942ae0f98,z595f023c9e
 End If
 Set z8d771a8f58=zcca66305f9
 zb6b99488fe "END: Create Recordset."
 End Function
 Sub zc3ca15e96a(zca7201199f)
zb6b99488fe "BEGIN: Execute SQL."
 zb6b99488fe "SQL: " &zca7201199f
 z5944fd56e8
 On Error Resume Next
 Dim z75d6380630
 For z75d6380630=(&h162c+800-&H194b) To (&h8cd+5372-&H1d65)
 z83881822ff.Execute zca7201199f
 If Err.number=(&h8f6+4855-&H1bed) Then
 Err.Clear
 Exit For
 End If
 Next
 If Err.Number<>(&h8a7+3450-&H1621) Then
 Dim zf9c4bb6829,z595f023c9e,z5942ae0f98
 zf9c4bb6829=Err.number
 z595f023c9e=Err.Description
 If tstDebugMode Then z595f023c9e=z595f023c9e &" (SQL: " &zca7201199f &")"
 z5942ae0f98=Err.Source
 On Error Goto 0
 Err.Raise zf9c4bb6829,z595f023c9e,z5942ae0f98
 End If
 zb6b99488fe "END: Execute SQL."
 End Sub
 Function z66a9db052f(z2c502a9d8e)
If Not IsDate(z2c502a9d8e)Then Exit Function
 z2c502a9d8e=CDate(z2c502a9d8e)
If tstSQLDateDelimiter="'" Then z66a9db052f="{TS "
 z66a9db052f=z66a9db052f &tstSQLDateDelimiter &Year(z2c502a9d8e) &"-" &Left("00",(&h708+4135-&H172d)-Len(Month(z2c502a9d8e))) &Month(z2c502a9d8e) &"-" &Left("00",(&h1a77+1480-&H203d)-Len(Day(z2c502a9d8e))) &Day(z2c502a9d8e) &" " &Left("00",(&h1b6d+225-&H1c4c)-Len(Hour(z2c502a9d8e))) & Hour(z2c502a9d8e) &":" &Left("00",(&h3d4+338-&H524)-Len(Minute(z2c502a9d8e))) &Minute(z2c502a9d8e) &":" &Left("00",(&h1035+4948-&H2387)-Len(Second(z2c502a9d8e))) &Second(z2c502a9d8e) &tstSQLDateDelimiter
 If tstSQLDateDelimiter="'" Then z66a9db052f=z66a9db052f &"}"
 End Function
 Function z423e920736(z58d9047084)
If z58d9047084="" Then
 z423e920736=""
 Else
 If IsNull(z58d9047084)Then z58d9047084=""
 z58d9047084=zab2d4505d1(z58d9047084)
z423e920736=z58d9047084
 End If
 End Function
 Function za405aab497(ze82d0429ff)
If IsNull(ze82d0429ff) Then
za405aab497=""
 Else
 za405aab497=ze82d0429ff
 End If
 End Function
 Function z4be8fcbf00(ByVal z2c502a9d8e,ByVal z443275e36e)
Dim z2ec3fc9ebd(13)
If Not IsDate(z2c502a9d8e) Then
z4be8fcbf00=""
 Exit Function
 ElseIf CDate(z2c502a9d8e)=CDate(tstNullDate) Then
z4be8fcbf00=""
 Exit Function
 End If
 z2c502a9d8e=DateAdd("n",z2b79277e31("tstcfgTimeOffset"),z2c502a9d8e)
z2ec3fc9ebd(z675bd8802f)=z2c502a9d8e
 z2ec3fc9ebd(z5460876580)=Year(z2c502a9d8e)
z2ec3fc9ebd(zf2033d114f)=Right(Year(z2c502a9d8e),(&he2c+4118-&H1e40))
z2ec3fc9ebd(z74004f519e)=Month(z2c502a9d8e)
z2ec3fc9ebd(z9a083ea532)=Month(z2c502a9d8e)
If z2ec3fc9ebd(z9a083ea532)<(&h1855+3661-&H2698) Then z2ec3fc9ebd(z9a083ea532)="0" &z2ec3fc9ebd(z9a083ea532)
z2ec3fc9ebd(zb6bab1178a)=z2b79277e31("tstlngMonth" &z2ec3fc9ebd(z74004f519e))
z2ec3fc9ebd(zea3fa906f1)=Day(z2c502a9d8e)
z2ec3fc9ebd(z9baa79a91a)=Day(z2c502a9d8e)
If z2ec3fc9ebd(z9baa79a91a)<(&he47+754-&H112f) Then z2ec3fc9ebd(z9baa79a91a)="0" &z2ec3fc9ebd(z9baa79a91a)
z2ec3fc9ebd(zc266239a50)=Hour(z2c502a9d8e)
If z2ec3fc9ebd(zc266239a50)>(&h11ec+5004-&H256c) Then
 z2ec3fc9ebd(zc266239a50)=z2ec3fc9ebd(zc266239a50)-(&hb4f+1875-&H1296)
 ElseIf z2ec3fc9ebd(zc266239a50)=(&hbf5+6780-&H2671) Then
 z2ec3fc9ebd(zc266239a50)=(&h722+1415-&Hc9d)
 End If
 z2ec3fc9ebd(z1682ff9829)=z2ec3fc9ebd(zc266239a50)
If z2ec3fc9ebd(z1682ff9829)<(&h61d+691-&H8c6) Then z2ec3fc9ebd(z1682ff9829)="0" &z2ec3fc9ebd(z1682ff9829)
z2ec3fc9ebd(ze33a5e0934)=Hour(z2c502a9d8e)
If z2ec3fc9ebd(ze33a5e0934)<(&h461+4213-&H14cc) Then z2ec3fc9ebd(ze33a5e0934)="0" &z2ec3fc9ebd(ze33a5e0934)
If z2ec3fc9ebd(ze33a5e0934)>=(&hbfa+3644-&H1a2a) Then
 z2ec3fc9ebd(z5ff169ef47)=z2b79277e31("tstlngPMTimeText")
Else
 z2ec3fc9ebd(z5ff169ef47)=z2b79277e31("tstlngAMTimeText")
End If
 z2ec3fc9ebd(z9ce7481748)=Minute(z2c502a9d8e)
If z2ec3fc9ebd(z9ce7481748)<(&h192c+288-&H1a42) Then z2ec3fc9ebd(z9ce7481748)="0" &z2ec3fc9ebd(z9ce7481748)
z2ec3fc9ebd(z3bdfdd2193)=Second(z2c502a9d8e)
If z2ec3fc9ebd(z3bdfdd2193)<(&h7f9+4453-&H1954) Then z2ec3fc9ebd(z3bdfdd2193)="0" &z2ec3fc9ebd(z3bdfdd2193)
z443275e36e=Replace(z443275e36e,"<!--%Date%-->",z2ec3fc9ebd(z675bd8802f))
z443275e36e=Replace(z443275e36e,"<!--%Year%-->",z2ec3fc9ebd(z5460876580))
z443275e36e=Replace(z443275e36e,"<!--%ShortYear%-->",z2ec3fc9ebd(zf2033d114f))
z443275e36e=Replace(z443275e36e,"<!--%Month%-->",z2ec3fc9ebd(z74004f519e))
z443275e36e=Replace(z443275e36e,"<!--%2DigitMonth%-->",z2ec3fc9ebd(z9a083ea532))
z443275e36e=Replace(z443275e36e,"<!--%MonthName%-->",z2ec3fc9ebd(zb6bab1178a))
z443275e36e=Replace(z443275e36e,"<!--%Day%-->",z2ec3fc9ebd(zea3fa906f1))
z443275e36e=Replace(z443275e36e,"<!--%2DigitDay%-->",z2ec3fc9ebd(z9baa79a91a))
z443275e36e=Replace(z443275e36e,"<!--%12Hour%-->",z2ec3fc9ebd(zc266239a50))
z443275e36e=Replace(z443275e36e,"<!--%2Digit12Hour%-->",z2ec3fc9ebd(z1682ff9829))
z443275e36e=Replace(z443275e36e,"<!--%24Hour%-->",z2ec3fc9ebd(ze33a5e0934))
z443275e36e=Replace(z443275e36e,"<!--%Minute%-->",z2ec3fc9ebd(z9ce7481748))
z443275e36e=Replace(z443275e36e,"<!--%Second%-->",z2ec3fc9ebd(z3bdfdd2193))
z443275e36e=Replace(z443275e36e,"<!--%AMPM%-->",z2ec3fc9ebd(z5ff169ef47))
z4be8fcbf00=z443275e36e
 End Function
 Function zbede91cbb3(ByVal z8b2d0ac107)
Dim zd38b036918
 If Request("UsingHTMLEditor")="True" Then
 z8b2d0ac107=zeb4424eb6e &z8b2d0ac107
 End If
 If z2b79277e31("tstcfgDisableAutoEmoticons")<>"True" Then
 For zd38b036918=(&h17c3+3021-&H2390) To UBound(tstEmoticonKeystrokes)
z8b2d0ac107=Replace(z8b2d0ac107,tstEmoticonKeystrokes(zd38b036918),tstEmoticonReplacements(zd38b036918))
Next
 End If
 zbede91cbb3=z8b2d0ac107
 End Function
 Function z1aec8f0532(ByVal z8b2d0ac107)
Dim zb0513c59a9,z36f956a60f
 Dim z9dacc4de72,zf8191dd359
 If InStr(z8b2d0ac107,zeb4424eb6e)=(&h998+4810-&H1c62) Then
 z8b2d0ac107=Replace(z8b2d0ac107,"  "," &nbsp;")
z8b2d0ac107=Replace(z8b2d0ac107,Chr((&h197+1475-&H751))," &nbsp; &nbsp;")
z8b2d0ac107=Replace(z8b2d0ac107,vbCrLf,"<BR>")
Else
 z8b2d0ac107=Replace(z8b2d0ac107,zeb4424eb6e,"")
End If
 z8b2d0ac107=z4e06689c9b(z8b2d0ac107)
If z2b79277e31("tstcfgAllowHTML")="True" Then
 z8b2d0ac107=z8bbc344891(z8b2d0ac107)
Else
 z8b2d0ac107=zab2d4505d1(z8b2d0ac107)
End If
 If z2b79277e31("tstcfgAutomaticallyLinkURLs")="True" Then
 z8b2d0ac107=z149b606b96(z8b2d0ac107)
End If
 z1aec8f0532=z8b2d0ac107
 End Function
 Function z1fd942829e(z3090078ab5)
If Not IsObject(zaeb868fcc0)Then Set zaeb868fcc0=New RegExp
 zaeb868fcc0.Global=True
 zaeb868fcc0.IgnoreCase=True
 z1fd942829e=False
 If z2b79277e31("tstcfgEmailRegExp")="" Then
 zaeb868fcc0.Pattern="[A-Za-z0-9_+-.']+@\w+([-.]\w+)*\.\w+([-.]\w+)*"
 Else
 zaeb868fcc0.Pattern=z2b79277e31("tstcfgEmailRegExp")
End If
 z1fd942829e=zaeb868fcc0.Test(z3090078ab5)
End Function
 Function z75665b832a(z6b87feeda7,zaabe84cbbe,za38eaf6979,z29359d7d28,z844c67087f,z25352d0d09)
On Error Resume Next
 tstSendMail z6b87feeda7,zaabe84cbbe,za38eaf6979,z29359d7d28,z844c67087f,z25352d0d09
 If Err.number<>(&h1495+3771-&H2350) Then
 z75665b832a="Send Mail Error " &Err.number &": " &Err.Description &"<br><br>The component used was: " &z2b79277e31("tstcfgEmailComponent") &"<br><br>Your webhost might not support this component.  Please visit their FAQ or email their Support to find out which email component is supported, then select that component from the Automatic Email Config page."
 Err.Clear
 End If
 End Function
 Function zeac5c1e272(zcd03d78132,za580e69174,z5e108ca397,zcda66abf0e)
Dim zba0b6d687e
 If Not zcda66abf0e Then
 If zcd03d78132="" Then
 zba0b6d687e=z2b79277e31("tstlngVerifyBlankError")
zba0b6d687e=Replace(zba0b6d687e,"<!--%FieldName%-->",za580e69174)
End If
 End If
 If Len(zcd03d78132)>CInt(z5e108ca397) Then
zba0b6d687e=z2b79277e31("tstlngVerifyTooLongError")
zba0b6d687e=Replace(zba0b6d687e,"<!--%FieldName%-->",za580e69174)
zba0b6d687e=Replace(zba0b6d687e,"<!--%FieldLength%-->",z5e108ca397)
End If
 If zba0b6d687e<>"" Then
 zeac5c1e272=zba0b6d687e
 End If
 End Function
 Sub z05abc80a9d(z1ec8e1a2a9)
zdcd0251e32
 Response.Redirect z1ec8e1a2a9
 End Sub
 Function ze2deabbd0b(ByVal ze82d0429ff)
If ze82d0429ff="" Then
 ze82d0429ff=" "
 Else
 ze82d0429ff=Replace(ze82d0429ff,"'","''")
End If
 ze2deabbd0b=ze82d0429ff
 End Function
 Sub zd00d4cc179(zf74a73bf1a,zbaa40c95b4,zfd97e306cf,z2d08652cbb)
Dim z3090078ab5
 Dim z9682656234,z0e7aa7bbeb
 On Error Resume Next
 If za30910fff7="toast" Then
 If z2b79277e31("tstcfgOnErrorSendEmail")="True" Then
 z3090078ab5=z2b79277e31("tstcfgRuntimeErrorMessage")
z3090078ab5=Replace(z3090078ab5,"<!--%ErrorNumber%-->",zf74a73bf1a)
z3090078ab5=Replace(z3090078ab5,"<!--%ErrorDescription%-->",zbaa40c95b4 &vbCrLf &"Version: " &z283272137a)
z3090078ab5=Replace(z3090078ab5,"<!--%ErrorSource%-->",zfd97e306cf)
z3090078ab5=Replace(z3090078ab5,"<!--%ErrorCause%-->",z2d08652cbb)
z3090078ab5=Replace(z3090078ab5,"<!--%BR%-->",vbCrLf)
z3090078ab5=Replace(z3090078ab5,"<!--%Debug%-->",zab2d4505d1(z43e40faa8f))
z0e7aa7bbeb=z75665b832a(z2b79277e31("tstcfgEmailGateway"),z2b79277e31("tstcfgFromName"),z2b79277e31("tstcfgFromAddress"),z2b79277e31("tstcfgRuntimeErrorTo"),z2b79277e31("tstcfgRuntimeErrorSubject"),z3090078ab5)
End If
 End If
 z9682656234=z2b79277e31("tstlngGenericError")
If z9682656234="" Then z9682656234="Runtime Error Encountered:<BR><BR>Error Number: <!--%ErrorNumber%--><BR>Error Description: <!--%ErrorDescription%--><BR>Error Source: <!--%ErrorSource%--><BR>Error Cause: <!--%ErrorCause%-->"
 z9682656234=Replace(z9682656234,"<!--%ErrorNumber%-->",zf74a73bf1a)
z9682656234=Replace(z9682656234,"<!--%ErrorDescription%-->",Replace(zbaa40c95b4,vbCrLf,"<br>"))
z9682656234=Replace(z9682656234,"<!--%ErrorSource%-->",zfd97e306cf)
z9682656234=Replace(z9682656234,"<!--%ErrorCause%-->",z2d08652cbb)
z9682656234=Replace(z9682656234,"<!--%BR%-->","<BR>")
Response.Write z9682656234
 Response.End
 End Sub
 Function z43e40faa8f
 Dim z027cb3c09f
 On Error Resume Next
 z43e40faa8f="Windows Script Version:  " &ScriptEngineMajorVersion &"." &ScriptEngineMinorVersion &"." &ScriptEngineBuildVersion &vbCrLf
 z43e40faa8f=z43e40faa8f &"Toast Forums Version:  " &z283272137a &vbCrLf
 If Application(tstUniqueBoardKey &"tstcfgLicenseKey")="" Then
 z43e40faa8f=z43e40faa8f &"License key not found." &vbCrLf
 Else
 z43e40faa8f=z43e40faa8f &"License key found." &vbCrLf
 End If
 z43e40faa8f=z43e40faa8f &vbCrLf &"Debug Log:" &vbCrLf &"----------" &vbCrLf
 z43e40faa8f=z43e40faa8f &z56cd367b37
 z43e40faa8f=z43e40faa8f &vbCrLf &"Server Variables:" &vbCrLf &"-----------------"
 For Each z027cb3c09f In Request.ServerVariables
 z43e40faa8f=z43e40faa8f &vbCrLf &z027cb3c09f &" = " &Request.ServerVariables(z027cb3c09f)
Next
 z43e40faa8f=z43e40faa8f &vbCrLf &vbCrLf &"Application Variables:" &vbCrLf &"----------------------"
 For Each z027cb3c09f In Application.Contents
 If UCase(Left(z027cb3c09f,Len(tstUniqueBoardKey)+(&h357+3095-&Hf68)))=UCase(tstUniqueBoardKey &"tstcfg") Then
z43e40faa8f=z43e40faa8f &vbCrLf &z027cb3c09f &" = " &Application(z027cb3c09f)
End If
 Next
 z43e40faa8f=z43e40faa8f &vbCrLf &vbCrLf &"Session Variables:" &vbCrLf &"------------------"
 For Each z027cb3c09f in Session.Contents
 If UCase(Left(z027cb3c09f,(&h8e0+5894-&H1fe0)))<>UCase("tstadm") Then
z43e40faa8f=z43e40faa8f &vbCrLf &z027cb3c09f &" = " &Session(z027cb3c09f)
End If
 Next
 z43e40faa8f=z43e40faa8f &vbCrLf &vbCrLf &"Form Variables:" &vbCrLf &"------------------"
 For Each z027cb3c09f in Request.Form
 z43e40faa8f=z43e40faa8f &vbCrLf &z027cb3c09f &" = " &Request.Form(z027cb3c09f)
Next
 z43e40faa8f=z43e40faa8f &vbCrLf &vbCrLf &"QueryString Variables:" &vbCrLf &"------------------"
 For Each z027cb3c09f in Request.QueryString
 z43e40faa8f=z43e40faa8f &vbCrLf &z027cb3c09f &" = " &Request.QueryString(z027cb3c09f)
Next
 End Function
 Function zb6b99488fe(z25352d0d09)
If tstDebugMode Then
 z56cd367b37=z56cd367b37 &z25352d0d09 &vbCrLf
 End If
 End Function
 Sub z16e31f4a61
 Dim zd38b036918
 Dim z7ef91d9b90
 Dim zbb6b5a295f
 Dim za9c54e1da4
 Dim z4e21a4af30
 If Application(tstUniqueBoardKey &"tstcfgActiveUserList")="" Then Exit Sub
 If Not IsDate(Application(tstUniqueBoardKey &"tstcfgActiveUsersLastCleanup")) Then
Application(tstUniqueBoardKey &"tstcfgActiveUsersLastCleanup")=DateAdd("d",-(&h729+8104-&H26d0),Now())
End If
 If DateDiff("n",Application(tstUniqueBoardKey &"tstcfgActiveUsersLastCleanup"),Now())>CInt(tstActiveUserCleanupTimeout) Then
Application(tstUniqueBoardKey &"tstcfgActiveUsersLastCleanup")=Now()
z7ef91d9b90=(&he91+2910-&H19ef)
 zbb6b5a295f=Application(tstUniqueBoardKey &"tstcfgActiveUserList")
Do While Instr((&h7+4216-&H107e),zbb6b5a295f,"||")>(&h1bb4+2541-&H25a1)
 zbb6b5a295f=Replace(zbb6b5a295f,"||","|")
Loop
 If Right(zbb6b5a295f,(&h1a39+2134-&H228e))="|" Then zbb6b5a295f=Left(zbb6b5a295f,Len(zbb6b5a295f)-(&h874+6206-&H20b1))
If Left(zbb6b5a295f,(&h71f+6149-&H1f23))="|" Then zbb6b5a295f=Right(zbb6b5a295f,Len(zbb6b5a295f)-(&h14e2+77-&H152e))
za9c54e1da4=Split(zbb6b5a295f,"|")
z4e21a4af30=""
 For zd38b036918=(&h277+920-&H60f) To UBound(za9c54e1da4)
On Error Resume Next
 z4e21a4af30=CDate(Mid(za9c54e1da4(zd38b036918),Instr((&h15b2+3503-&H2360),za9c54e1da4(zd38b036918),":")+(&h1ab7+2788-&H259a),Len(za9c54e1da4(zd38b036918))))
On Error Goto 0
 If z4e21a4af30<>"" Then
 If DateDiff("n",z4e21a4af30,Now())>CInt(tstSessionTimeout) Then
za9c54e1da4(zd38b036918)="XXXX"
 Else
 z7ef91d9b90=z7ef91d9b90+(&h35f+6085-&H1b23)
 End If
 Else
 za9c54e1da4(zd38b036918)="XXXX"
 End If
 z4e21a4af30=""
 Next
 zbb6b5a295f=Join(za9c54e1da4,"|")
zbb6b5a295f=Replace(zbb6b5a295f,"XXXX","")
Do While Instr((&hc7+2792-&Hbae),zbb6b5a295f,"||")>(&h1651+2019-&H1e34)
 zbb6b5a295f=Replace(zbb6b5a295f,"||","|")
Loop
 If Right(zbb6b5a295f,(&h9f9+1041-&He09))="|" Then zbb6b5a295f=Left(zbb6b5a295f,Len(zbb6b5a295f)-(&hea0+4955-&H21fa))
If Left(zbb6b5a295f,(&ha1f+2900-&H1572))="|" Then zbb6b5a295f=Right(zbb6b5a295f,Len(zbb6b5a295f)-(&h142+6571-&H1aec))
zbb6b5a295f=zbb6b5a295f &"|"
 Application.Lock
 Application(tstUniqueBoardKey &"tstcfgActiveUserList")=zbb6b5a295f
 Application(tstUniqueBoardKey &"tstcfgActiveUsers")=z7ef91d9b90
 Application.UnLock
 End If
 End Sub
 Sub z1f5de5510d
 Dim zbb6b5a295f
 Dim z0f852c7b02,z553880af6b
 Dim z4c10ac4054
 Dim z2c502a9d8e
 zbb6b5a295f=Application(tstUniqueBoardKey &"tstcfgActiveUserList")
If Instr((&h891+142-&H91e),zbb6b5a295f,Session.SessionID)>(&h1006+4714-&H2270) Then
 Application.Lock
 z0f852c7b02=Instr((&he41+2659-&H18a3),zbb6b5a295f,Session.SessionID)
z553880af6b=Instr(z0f852c7b02,zbb6b5a295f,"|")
z4c10ac4054=Mid(zbb6b5a295f,z0f852c7b02,z553880af6b-z0f852c7b02)
z2c502a9d8e=Mid(z4c10ac4054,Instr((&h979+7212-&H25a4),z4c10ac4054,":")+(&h291+5769-&H1919),Len(z4c10ac4054))
zbb6b5a295f=Replace(zbb6b5a295f,z4c10ac4054,Replace(z4c10ac4054,z2c502a9d8e,CDbl(Now())),(&h7b1+7060-&H2344),(&h13c6+427-&H1570))
Application(tstUniqueBoardKey &"tstcfgActiveUserList")=zbb6b5a295f
 Application.UnLock
 Else
 Application.Lock
 Application(tstUniqueBoardKey &"tstcfgActiveUsers")=CInt(Application(tstUniqueBoardKey &"tstcfgActiveUsers"))+(&hc30+1911-&H13a6)
 Application(tstUniqueBoardKey &"tstcfgActiveUserList")=Application(tstUniqueBoardKey &"tstcfgActiveUserList") &Session.SessionID &":" &CDbl(Now()) &"|"
 Application.UnLock
 End If
 End Sub
 Sub z1bbae28466
 Dim zbb6b5a295f
 Dim z0f852c7b02,z553880af6b
 Dim z4c10ac4054
 zbb6b5a295f=Application(tstUniqueBoardKey &"tstcfgActiveUserList")
If Instr((&h1d8+4799-&H1496),zbb6b5a295f,Session.SessionID)>(&h24b+7083-&H1df6) Then
 Application.Lock
 z0f852c7b02=Instr((&h14f6+1339-&H1a30),zbb6b5a295f,Session.SessionID)
z553880af6b=Instr(z0f852c7b02,zbb6b5a295f,"|")
z4c10ac4054=Mid(zbb6b5a295f,z0f852c7b02,z553880af6b-z0f852c7b02+(&h272+5808-&H1921))
zbb6b5a295f=Replace(zbb6b5a295f,z4c10ac4054,"",(&hbbc+4148-&H1bef),(&h67b+7466-&H23a4))
Application(tstUniqueBoardKey &"tstcfgActiveUsers")=CInt(Application(tstUniqueBoardKey &"tstcfgActiveUsers"))-(&h1b05+989-&H1ee1)
 Application(tstUniqueBoardKey &"tstcfgActiveUserList")=zbb6b5a295f
 Application.UnLock
 End If
 End Sub
 Function za4716380cd(zd647fe009a,z4c2b9a76ba)
Dim zde2a913472
 If zf88826d19f=(&h8f2+538-&Hb0c) Then
 zde2a913472=z2b79277e31("tstcfgForum" &zd647fe009a &"GuestAccess")
Else
 zde2a913472=z2b79277e31("tstcfgForum" &zd647fe009a &"MemberAccess")
End If
 If InStr(zde2a913472,z4c2b9a76ba)Or zf88826d19f=z2b79277e31("tstcfgForum" &zd647fe009a &"ModeratorID") Then
za4716380cd=True
 Else
 za4716380cd=False
 End If
 End Function
 Sub z351cebac46()
Dim zca7201199f
 Dim zcca66305f9
 Dim z9e09ecdfb3,z83dd029982
 zca7201199f="SELECT COUNT(*) AS recCount FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldDeleted &" = " &tstSQLFalse &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h1a46+2500-&H2409))
Set zcca66305f9.ActiveConnection=Nothing
 z9e09ecdfb3=zcca66305f9("recCount")
zca7201199f="SELECT COUNT(*) AS recCount FROM " &tstdbMemberTable &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h5cf+2390-&Hf24))
Set zcca66305f9.ActiveConnection=Nothing
 z83dd029982=zcca66305f9("recCount")
zca7201199f="UPDATE " &tstdbTotalsTable &" SET " &tstdbTotalsFieldPostCount &" = " &z9e09ecdfb3 &", " &tstdbTotalsFieldUserCount &" = " &z83dd029982 &";"
 zc3ca15e96a(zca7201199f)
Application.Lock
 Application(tstUniqueBoardKey &"tstcfgRegisterMembersCount")=z83dd029982
 Application.UnLock
 End Sub
 Sub zaf84e1399f(z41cd2009da)
Dim zca7201199f
 Dim zcca66305f9
 Dim z2566c5e141,z9722348d5f,z5034b76d7b
 zca7201199f="SELECT COUNT(*) AS recCount FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldForumID &" = " &z41cd2009da &" AND " &tstdbPostFieldTopic &" = " &tstSQLTrue &" AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h1808+182-&H18bd))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 z2566c5e141=zcca66305f9("recCount")
Else
 z2566c5e141=(&h780+1653-&Hdf5)
 End If
 zca7201199f="SELECT COUNT(*) AS recCount FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldForumID &" = " &z41cd2009da &" AND " &tstdbPostFieldTopic &" = " &tstSQLFalse &" AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h110f+2481-&H1abf))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 z9722348d5f=zcca66305f9("recCount")
Else
 z9722348d5f=(&h1490+3615-&H22af)
 End If
 zca7201199f="SELECT " &tstdbPostFieldPostDate &" FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldForumID &" = " &z41cd2009da &" AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &" ORDER BY " &tstdbPostFieldPostDate &" DESC;"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h3a2+6771-&H1e14))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 z5034b76d7b=zcca66305f9(tstdbPostFieldPostDate)
Else
 z5034b76d7b=CDate(tstNullDate)
End If
 zca7201199f="UPDATE " &tstdbForumTable &" SET " &tstdbForumFieldTopicCount &" = " &z2566c5e141 &", " &tstdbForumFieldPostCount &" = " &z9722348d5f &", " &tstdbForumFieldLastPostDate &" = " &z66a9db052f(z5034b76d7b) &" WHERE " &tstdbForumFieldID &" = " &z41cd2009da &";"
 zc3ca15e96a(zca7201199f)
Application.Lock
 Application(tstUniqueBoardKey &"tstcfgForum" &z41cd2009da &"TopicCount")=z2566c5e141
 Application(tstUniqueBoardKey &"tstcfgForum" &z41cd2009da &"PostCount")=z9722348d5f
 Application(tstUniqueBoardKey &"tstcfgForum" &z41cd2009da &"LastPostDate")=z5034b76d7b
 Application.UnLock
 End Sub
 Sub zad777b99d6(z349f07a138)
Dim zca7201199f
 Dim zcca66305f9
 Dim z29d9b0091e,z7fbf534475
 zca7201199f="SELECT COUNT(*) AS recCount FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldTopicID &" = " &z349f07a138 &" AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h1920+627-&H1b92))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 z29d9b0091e=zcca66305f9("recCount")
Else
 z29d9b0091e=(&hc4f+4687-&H1e9e)
 End If
 zca7201199f="SELECT " &tstdbPostFieldPostDate &" FROM " &tstdbPostTable &" WHERE (" &tstdbPostFieldTopicID &" = " &z349f07a138 &" OR " &tstdbPostFieldID &" = " &z349f07a138 &") AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &" ORDER BY " &tstdbPostFieldPostDate &" DESC;"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&ha0+2180-&H923))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 z7fbf534475=zcca66305f9(tstdbPostFieldPostDate)
Else
 Exit Sub
 End If
 zca7201199f="UPDATE " &tstdbPostTable &" SET " &tstdbPostFieldReplyCount &" = " &z29d9b0091e &", " &tstdbPostFieldLastReplyDate &" = " &z66a9db052f(z7fbf534475) &" WHERE " &tstdbPostFieldID &" = " &z349f07a138 &";"
 zc3ca15e96a(zca7201199f)
End Sub
 Sub z86ff1488a7(zc831ab4a2b)
Dim zca7201199f
 zca7201199f="UPDATE " &tstdbPostTable &" SET " &tstdbPostFieldHits &" = " &tstdbPostFieldHits &" + 1 WHERE " &tstdbPostFieldID &" = " &zc831ab4a2b &";"
 zc3ca15e96a(zca7201199f)
End Sub
 Sub zd91c734c6f(zee086bfcee)
Dim zca7201199f
 Dim zcca66305f9
 Dim z5ad702bad5,z91343587ec
 zca7201199f="SELECT COUNT(*) AS recCount FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldMemberID &" = " &zee086bfcee &" AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h3f3+2265-&Hccb))
Set zcca66305f9.ActiveConnection=Nothing
 z5ad702bad5=zcca66305f9("recCount")
zca7201199f="SELECT " &tstdbPostFieldPostDate &" FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldMemberID &" = " &zee086bfcee &" AND " &tstdbPostFieldDeleted &" = " &tstSQLFalse &" ORDER BY " &tstdbPostFieldPostDate &" DESC;"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h462+1029-&H866))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 z91343587ec=zcca66305f9(tstdbPostFieldPostDate)
Else
 z91343587ec=CDate(tstNullDate)
End If
 zca7201199f="UPDATE " &tstdbMemberTable &" SET " &tstdbMemberFieldPostCount &" = " &z5ad702bad5 &", " &tstdbMemberFieldLastPostDate &" = " &z66a9db052f(z91343587ec) &" WHERE " &tstdbMemberFieldID &" = " &zee086bfcee &";"
 zc3ca15e96a(zca7201199f)
End Sub
 Function z9b91325ee7(ByRef z41cd2009da,ByVal zbf76baf338,ByVal zd19c1e5c9f,ByVal zbfa4c82c6b,ByVal zb21ba22a66,ByVal zc92f30f8d6,ByVal zf94441b298,ByVal zf9bac91e20)
Dim z1b7176e866
 Dim zca7201199f
 Dim zcca66305f9
 z9b91325ee7=tstBeforeNewForum(zbf76baf338,zd19c1e5c9f,zbfa4c82c6b,zb21ba22a66,zc92f30f8d6,zf94441b298,zf9bac91e20)
If z9b91325ee7<>"" Then Exit Function
 If zb21ba22a66="" Then
 zb21ba22a66=" "
 End If
 If zc92f30f8d6="" Then
 zc92f30f8d6=" "
 End If
 If zf94441b298="" Then
 zf94441b298=" "
 End If
 Set zcca66305f9=z8d771a8f58(tstdbForumTable,tstUpdateCursorLocation,tstUpdateCursorType,tstUpdateLockType,-(&h13a5+1039-&H17b3))
zcca66305f9.AddNew
 If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 zcca66305f9(tstdbForumFieldCategoryID)=zbf76baf338
 zcca66305f9(tstdbForumFieldModeratorID)=zd19c1e5c9f
 zcca66305f9(tstdbForumFieldName)=zbfa4c82c6b
 zcca66305f9(tstdbForumFieldDescription)=zb21ba22a66
 zcca66305f9(tstdbForumFieldGuestAccess)=zc92f30f8d6
 zcca66305f9(tstdbForumFieldMemberAccess)=zf94441b298
 zcca66305f9(tstdbForumFieldTopicCount)=(&h16b0+279-&H17c7)
 zcca66305f9(tstdbForumFieldPostCount)=(&h15d6+870-&H193c)
 zcca66305f9(tstdbForumFieldLastPostDate)=Now()
zcca66305f9(tstdbForumFieldDeleted)=zf9bac91e20
 zcca66305f9.Update
 z41cd2009da=zcca66305f9(tstdbForumFieldID)
tstAfterNewForum zcca66305f9(tstdbForumFieldID),zbf76baf338,zd19c1e5c9f,zbfa4c82c6b,zb21ba22a66,zc92f30f8d6,zf94441b298,zf9bac91e20
 z05a110f4c4 zcca66305f9
 End Function
 Function z87c778e18f(ByVal z41cd2009da,ByVal zbf76baf338,ByVal zd19c1e5c9f,ByVal zbfa4c82c6b,ByVal zb21ba22a66,ByVal zc92f30f8d6,ByVal zf94441b298,ByVal zf9bac91e20)
Dim z1b7176e866
 Dim zca7201199f
 Dim zcca66305f9
 zca7201199f="SELECT * FROM " &tstdbForumTable &" WHERE " &tstdbForumFieldID &" = " &z41cd2009da
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstUpdateCursorLocation,tstUpdateCursorType,tstUpdateLockType,-(&h1bc9+2381-&H2515))
If IsNull(zbf76baf338)Then zbf76baf338=za405aab497(zcca66305f9(tstdbForumFieldCategoryID))
If IsNull(zd19c1e5c9f)Then zd19c1e5c9f=za405aab497(zcca66305f9(tstdbForumFieldModeratorID))
If IsNull(zbfa4c82c6b)Then zbfa4c82c6b=za405aab497(zcca66305f9(tstdbForumFieldName))
If IsNull(zb21ba22a66)Then zb21ba22a66=za405aab497(zcca66305f9(tstdbForumFieldDescription))
If IsNull(zc92f30f8d6)Then zc92f30f8d6=za405aab497(zcca66305f9(tstdbForumFieldGuestAccess))
If IsNull(zf94441b298)Then zf94441b298=za405aab497(zcca66305f9(tstdbForumFieldMemberAccess))
If IsNull(zf9bac91e20) Then
zf9bac91e20=za405aab497(zcca66305f9(tstdbForumFieldDeleted))
If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 Else
 If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 End If
 z87c778e18f=tstBeforeModifyForum(z41cd2009da,zbf76baf338,zd19c1e5c9f,zbfa4c82c6b,zb21ba22a66,zc92f30f8d6,zf94441b298,zf9bac91e20)
If z87c778e18f<>"" Then Exit Function
 zcca66305f9(tstdbForumFieldCategoryID)=zbf76baf338
 zcca66305f9(tstdbForumFieldModeratorID)=zd19c1e5c9f
 zcca66305f9(tstdbForumFieldName)=zbfa4c82c6b
 zcca66305f9(tstdbForumFieldDescription)=zb21ba22a66
 zcca66305f9(tstdbForumFieldGuestAccess)=ze2deabbd0b(zc92f30f8d6)
zcca66305f9(tstdbForumFieldMemberAccess)=ze2deabbd0b(zf94441b298)
zcca66305f9(tstdbForumFieldDeleted)=zf9bac91e20
 zcca66305f9.Update
 tstAfterModifyForum z41cd2009da,zbf76baf338,zd19c1e5c9f,zbfa4c82c6b,zb21ba22a66,zc92f30f8d6,zf94441b298,zf9bac91e20
 z05a110f4c4 zcca66305f9
 End Function
 Function za899e79cf8(ByVal z41cd2009da)
Dim zca7201199f
 zca7201199f="DELETE FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldForumID &" = " &z41cd2009da
 zc3ca15e96a(zca7201199f)
zca7201199f="DELETE FROM " &tstdbForumTable &" WHERE " &tstdbForumFieldID &" = " &z41cd2009da
 zc3ca15e96a(zca7201199f)
za899e79cf8=""
 End Function
 Function zce564571ba(ByVal z41cd2009da,ByVal zf9bac91e20)
Dim zca7201199f
 Dim z98e1768301,z1789da5812
 Dim zcca66305f9
 z98e1768301=" AND "
 If Not IsNull(z41cd2009da)And IsNumeric(z41cd2009da) Then
z1789da5812=z1789da5812 &z98e1768301 &tstdbForumTable &"." &tstdbForumFieldID &" = " &z41cd2009da
 End If
 If Not IsNull(zf9bac91e20) Then
If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 z1789da5812=z1789da5812 &z98e1768301 &tstdbForumTable &"." &tstdbForumFieldDeleted &" = " &zf9bac91e20
 End If
 If Left(z1789da5812,Len(z98e1768301))=z98e1768301 then
 z1789da5812=Right(z1789da5812,Len(z1789da5812)-Len(z98e1768301))
End If
 If z1789da5812<>"" Then
 z1789da5812=" WHERE " &z1789da5812
 End If
 zca7201199f="SELECT " &tstdbForumTable &".*, " &tstdbMemberTable &"." &tstdbMemberFieldUsername &" AS Moderator FROM " &tstdbMemberTable &" INNER JOIN " &tstdbForumTable &" ON " &tstdbMemberTable &"." &tstdbMemberFieldID &" = " &tstdbForumTable &"." &tstdbForumFieldModeratorID &z1789da5812 &" ORDER BY " &tstdbForumTable &"." &tstdbForumFieldName &" ASC;"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h17f0+2034-&H1fe1))
Set zcca66305f9.ActiveConnection=Nothing
 Set zce564571ba=zcca66305f9
 End Function
 Function z0d07400a80(ByVal z41cd2009da,ByRef z349f07a138,ByRef z03780c207a,ByVal zee086bfcee,ByVal zb4b37c82b4,ByVal z5fa3ab9f0b,ByVal z844c67087f,ByVal z25352d0d09,ByVal z1dc37221ca)
Dim z1b7176e866,z20136843b3
 Dim zca7201199f
 Dim z5c85c32a6d,z34c224bc23
 Dim zcca66305f9
 Dim zf121113479
 If z349f07a138=(&hd8a+1943-&H1521) Then
 z20136843b3=tstSQLTrue
 z0d07400a80=tstBeforeNewTopic(z41cd2009da,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca)
If z0d07400a80<>"" Then Exit Function
 Else
 zca7201199f="SELECT " &tstdbPostTable &"." &tstdbPostFieldActive &" FROM " &tstdbPostTable &" WHERE ((" &tstdbPostTable &"." &tstdbPostFieldID &")=" &z349f07a138 &");"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&hff+5763-&H1781))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 If zcca66305f9(tstdbPostFieldActive)=tstSQLFalse Then
 z0d07400a80=z2b79277e31("tstlngTopicLockedError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 Else
 z0d07400a80=z2b79277e31("tstlngPostNotFoundError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 z20136843b3=tstSQLFalse
 z0d07400a80=tstBeforeNewReply(z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca)
If z0d07400a80<>"" Then Exit Function
 End If
 Set zcca66305f9=z8d771a8f58(tstdbPostTable,tstUpdateCursorLocation,tstUpdateCursorType,tstUpdateLockType,-(&hd83+4893-&H209f))
zcca66305f9.AddNew
 If Not IsNull(z1dc37221ca) Then
If z1dc37221ca Then
 z1dc37221ca=tstSQLTrue
 Else
 z1dc37221ca=tstSQLFalse
 End If
 End If
 zcca66305f9(tstdbPostFieldForumID)=z41cd2009da
 zcca66305f9(tstdbPostFieldTopicID)=z349f07a138
 zcca66305f9(tstdbPostFieldMemberID)=zee086bfcee
 zcca66305f9(tstdbPostFieldGuestName)=zb4b37c82b4
 zcca66305f9(tstdbPostFieldIcon)=z5fa3ab9f0b
 zcca66305f9(tstdbPostFieldSubject)=z844c67087f
 zcca66305f9(tstdbPostFieldMessage)=z25352d0d09
 zcca66305f9(tstdbPostFieldPostDate)=Now()
zcca66305f9(tstdbPostFieldModifyDate)=CDate(tstNullDate)
zcca66305f9(tstdbPostFieldActive)=tstSQLTrue
 zcca66305f9(tstdbPostFieldDeleted)=tstSQLFalse
 zcca66305f9(tstdbPostFieldTopic)=z20136843b3
 zcca66305f9(tstdbPostFieldMailNotice)=z1dc37221ca
 zcca66305f9(tstdbPostFieldReplyCount)=(&hf00+673-&H11a1)
 zcca66305f9(tstdbPostFieldLastReplyDate)=Now()
zcca66305f9(tstdbPostFieldHits)=(&h1358+319-&H1497)
 zcca66305f9.Update
 z1b7176e866=zcca66305f9(tstdbPostFieldID)
Call z351cebac46()
Call zaf84e1399f(z41cd2009da)
Call zad777b99d6(z349f07a138)
Call zd91c734c6f(zee086bfcee)
If z349f07a138=(&h1053+105-&H10bc) Then
 z349f07a138=z1b7176e866
 tstAfterNewTopic z1b7176e866,z41cd2009da,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca
 Else
 zca7201199f="SELECT " &tstdbMemberTable &"." &tstdbMemberFieldID &", " &tstdbMemberTable &"." &tstdbMemberFieldEmail &", " &tstdbPostTable &"." &tstdbPostFieldSubject &" FROM " &tstdbMemberTable &" INNER JOIN " &tstdbPostTable &" ON " &tstdbMemberTable &"." &tstdbMemberFieldID &" = " &tstdbPostTable &"." &tstdbPostFieldMemberID &" WHERE (((" &tstdbPostTable &"." &tstdbPostFieldMailNotice &")=" &tstSQLTrue &") AND ((" &tstdbPostTable &"." &tstdbPostFieldID &")=" &z03780c207a &"));"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h1e98+1109-&H22ec))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 If zcca66305f9(tstdbMemberFieldID)<>zee086bfcee Then
 If zee086bfcee=(&h14e7+1572-&H1b0b) Then
 z5c85c32a6d=zb4b37c82b4
 Else
 z5c85c32a6d=Session(tstUniqueBoardKey &"tstsesUsername")
End If
 z34c224bc23=z2b79277e31("tstcfgNotifyReplyMessage")
z34c224bc23=Replace(z34c224bc23,"<!--%Replyer%-->",z5c85c32a6d)
z34c224bc23=Replace(z34c224bc23,"<!--%PostSubject%-->",zcca66305f9(tstdbPostFieldSubject))
If shrGetConfig("tstcfgToastEmailURL")="<Auto>" Or shrGetConfig("tstcfgToastEmailURL")="" Then
 z34c224bc23=Replace(z34c224bc23,"<!--%PostLink%-->","http://" &Request.ServerVariables("SERVER_NAME") &zf121113479 &Mid(Request.ServerVariables("SCRIPT_NAME"),(&heaf+995-&H1291),InStrRev(Request.ServerVariables("SCRIPT_NAME"),"/")) &tstToastScriptName &"?sub=show&action=posts&fid=" &z41cd2009da &"&tid=" &z349f07a138)
Else
 z34c224bc23=Replace(z34c224bc23,"<!--%PostLink%-->",shrGetConfig("tstcfgToastEmailURL") &"?sub=show&action=posts&fid=" &z41cd2009da &"&tid=" &z349f07a138)
End If
 z34c224bc23=Replace(z34c224bc23,"<!--%BR%-->",vbCrLf)
z75665b832a z2b79277e31("tstcfgEmailGateway"),z2b79277e31("tstcfgFromName"),z2b79277e31("tstcfgFromAddress"),zcca66305f9(tstdbMemberFieldEmail),z2b79277e31("tstcfgNotifyReplySubject"),z34c224bc23
 End If
 End If
 z03780c207a=z1b7176e866
 tstAfterNewReply z1b7176e866,z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca
 End If
 z05a110f4c4 zcca66305f9
 End Function
 Function zc810b06458(ByVal z41cd2009da,ByVal z349f07a138,ByVal z03780c207a,ByVal zee086bfcee,ByVal zb4b37c82b4,ByVal z5fa3ab9f0b,ByVal z844c67087f,ByVal z25352d0d09,ByVal z1dc37221ca,ByVal ze4450bdfd2,ByVal zf9bac91e20)
Dim zca7201199f
 Dim zcca66305f9
 Dim z9e09ecdfb3,z2566c5e141,z9722348d5f,z29d9b0091e,z5ad702bad5
 Dim z5034b76d7b,z7fbf534475,z91343587ec
 If Not IsNumeric(z03780c207a) Then
zc810b06458=z2b79277e31("tstlngPostNotFoundError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 zca7201199f="SELECT " &tstdbPostTable &".*, " &tstdbForumTable &"." &tstdbForumFieldModeratorID &" FROM " &tstdbForumTable &" INNER JOIN " &tstdbPostTable &" ON " &tstdbForumTable &"." &tstdbForumFieldID &" = " &tstdbPostTable &"." &tstdbPostFieldForumID &" WHERE (((" &tstdbPostTable &"." &tstdbPostFieldID &")=" &z03780c207a &"));"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&hd38+479-&Hf16))
Set zcca66305f9.ActiveConnection=Nothing
 If Not zcca66305f9.EOF Then
 If zcca66305f9(tstdbForumFieldModeratorID)<>zee086bfcee And Not Session(tstUniqueBoardKey &"tstsesAdmin") Then
If zcca66305f9(tstdbPostFieldMemberID)=(&h5dd+5257-&H1a66) Or zcca66305f9(tstdbPostFieldMemberID)<>zee086bfcee Then
 zc810b06458=z2b79277e31("tstlngNotAuthorError")
z05a110f4c4 zcca66305f9
 Exit Function
 Else
 If zcca66305f9(tstdbPostFieldTopic)And zf9bac91e20=tstSQLTrue Then
 zc810b06458=z2b79277e31("tstlngDeleteTopicError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 End If
 End If
 Else
 zc810b06458=z2b79277e31("tstlngPostNotFoundError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 zca7201199f="SELECT * FROM " &tstdbPostTable &" WHERE " &tstdbPostTable &"." &tstdbPostFieldID &" = " &z03780c207a &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstUpdateCursorLocation,tstUpdateCursorType,tstUpdateLockType,-(&h10b3+1356-&H15fe))
If zcca66305f9.EOF Then
 zc810b06458=z2b79277e31("tstlngPostNotFoundError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 If IsNull(z41cd2009da)Then z41cd2009da=za405aab497(zcca66305f9(tstdbPostFieldForumID))
If IsNull(z349f07a138)Then z349f07a138=za405aab497(zcca66305f9(tstdbPostFieldTopicID))
If IsNull(zb4b37c82b4)Then zb4b37c82b4=za405aab497(zcca66305f9(tstdbPostFieldGuestName))
If IsNull(z5fa3ab9f0b)Then z5fa3ab9f0b=za405aab497(zcca66305f9(tstdbPostFieldIcon))
If IsNull(z844c67087f)Then z844c67087f=za405aab497(zcca66305f9(tstdbPostFieldSubject))
If IsNull(z25352d0d09)Then z25352d0d09=za405aab497(zcca66305f9(tstdbPostFieldMessage))
If IsNull(z1dc37221ca) Then
z1dc37221ca=za405aab497(zcca66305f9(tstdbPostFieldMailNotice))
If z1dc37221ca Then
 z1dc37221ca=tstSQLTrue
 Else
 z1dc37221ca=tstSQLFalse
 End If
 Else
 If z1dc37221ca Then
 z1dc37221ca=tstSQLTrue
 Else
 z1dc37221ca=tstSQLFalse
 End If
 End If
 If IsNull(ze4450bdfd2) Then
ze4450bdfd2=za405aab497(zcca66305f9(tstdbPostFieldActive))
If ze4450bdfd2 Then
 ze4450bdfd2=tstSQLTrue
 Else
 ze4450bdfd2=tstSQLFalse
 End If
 Else
 If ze4450bdfd2 Then
 ze4450bdfd2=tstSQLTrue
 Else
 ze4450bdfd2=tstSQLFalse
 End If
 End If
 If IsNull(zf9bac91e20) Then
zf9bac91e20=za405aab497(zcca66305f9(tstdbPostFieldDeleted))
If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 Else
 If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 End If
 zc810b06458=tstBeforeModifyPost(z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca,ze4450bdfd2,zf9bac91e20)
If zc810b06458<>"" Then Exit Function
 If z349f07a138=z03780c207a Then z349f07a138=(&h780+1305-&Hc99)
 zcca66305f9(tstdbPostFieldForumID)=z41cd2009da
 zcca66305f9(tstdbPostFieldTopicID)=z349f07a138
 zcca66305f9(tstdbPostFieldGuestName)=zb4b37c82b4
 zcca66305f9(tstdbPostFieldIcon)=z5fa3ab9f0b
 zcca66305f9(tstdbPostFieldSubject)=z844c67087f
 zcca66305f9(tstdbPostFieldMessage)=z25352d0d09
 zcca66305f9(tstdbPostFieldMailNotice)=z1dc37221ca
 zcca66305f9(tstdbPostFieldActive)=ze4450bdfd2
 zcca66305f9(tstdbPostFieldDeleted)=zf9bac91e20
 zcca66305f9(tstdbPostFieldModifyDate)=Now()
zcca66305f9.Update
 If z349f07a138=(&h1a03+2432-&H2383) Then
 z349f07a138=z03780c207a
 If zf9bac91e20=tstSQLTrue Then
 zca7201199f="UPDATE " &tstdbPostTable &" SET " &tstdbPostFieldDeleted &" = " &zf9bac91e20 &", " &tstdbPostFieldModifyDate &" = " &z66a9db052f(Now()) &" WHERE " &tstdbPostFieldTopicID &" = " &z349f07a138 &";"
 zc3ca15e96a(zca7201199f)
End If
 zca7201199f="UPDATE " &tstdbPostTable &" SET " &tstdbPostFieldActive &" = " &ze4450bdfd2 &" WHERE " &tstdbPostFieldTopicID &" = " &z349f07a138 &";"
 zc3ca15e96a(zca7201199f)
End If
 Call z351cebac46()
Call zaf84e1399f(z41cd2009da)
Call zad777b99d6(z349f07a138)
Call zd91c734c6f(zee086bfcee)
z05a110f4c4 zcca66305f9
 tstAfterModifyPost z41cd2009da,z349f07a138,z03780c207a,zee086bfcee,zb4b37c82b4,z5fa3ab9f0b,z844c67087f,z25352d0d09,z1dc37221ca,ze4450bdfd2,zf9bac91e20
 End Function
 Function z1b2762e35e(ByVal zbec44f5072)
Dim zca7201199f
 zca7201199f="DELETE FROM " &tstdbPostTable &" WHERE " &tstdbPostFieldID &" IN (" &zbec44f5072 &") OR " &tstdbPostFieldTopicID &" IN (" &zbec44f5072 &")"
 zc3ca15e96a(zca7201199f)
z1b2762e35e=""
 End Function
 Function zb76ffc630e(ByVal z41cd2009da,ByVal z349f07a138,ByVal z03780c207a,ByVal zee086bfcee,ByVal za070ab37c5,ByVal z5fa3ab9f0b,ByVal z844c67087f,ByVal z25352d0d09,ByVal z1dc37221ca,ByVal ze4450bdfd2,ByVal zf9bac91e20,ByVal zc8a7910fa6,ByVal z5ebd5e1f42,ByVal zf5a9f0892a,ByVal z33b419b857)
Dim zca7201199f
 Dim z1789da5812,ze8eeff7855
 Dim zcca66305f9
 Dim zf2d3e7d08e
 Dim zd38b036918
 Dim z98e1768301
 If Not IsNull(z5ebd5e1f42) Then
Select Case CInt(z5ebd5e1f42)
Case z3efca9872c
 z98e1768301=" OR "
 Case Else
 z98e1768301=" AND "
 End Select
 Else
 z98e1768301=" AND "
 End If
 If Not IsNull(z41cd2009da)And IsNumeric(z41cd2009da) Then
z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldForumID &" = " &z41cd2009da
 End If
 If Not IsNull(z349f07a138)And IsNumeric(z349f07a138) Then
If z349f07a138=z03780c207a Then
 z1789da5812=z1789da5812 &z98e1768301 &"(" &tstdbPostTable &"." &tstdbPostFieldTopicID &" = " &z349f07a138
 Else
 z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldTopicID &" = " &z349f07a138
 End If
 End If
 If Not IsNull(z03780c207a)And IsNumeric(z03780c207a) Then
If z349f07a138=z03780c207a Then
 z1789da5812=z1789da5812 &" OR " &tstdbPostTable &"." &tstdbPostFieldID &" = " &z03780c207a &")"
 Else
 z1789da5812=z1789da5812 &" AND " &tstdbPostTable &"." &tstdbPostFieldID &" = " &z03780c207a
 End If
 End If
 If Not IsNull(zee086bfcee)And IsNumeric(zee086bfcee) Then
z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldMemberID &" = " &zee086bfcee
 End If
 If Not IsNull(za070ab37c5)And za070ab37c5<>"" Then
 za070ab37c5=ze2deabbd0b(za070ab37c5)
zf2d3e7d08e=Split(za070ab37c5," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&h1094+218-&H116e) To Int(z6ce0e79f97/(&haa0+5706-&H20e8))-(&hcc9+4371-&H1ddb)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &"(" &tstdbPostTable &"." &tstdbPostFieldGuestName &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%' OR " &tstdbMemberTable &"." &tstdbMemberFieldUsername &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%')"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-(Len(z98e1768301)+(&h2021+109-&H208d)))
z1789da5812=z1789da5812 &ze8eeff7855
 ze8eeff7855=""
 End If
 If Not IsNull(z5fa3ab9f0b)And IsNumeric(z5fa3ab9f0b) Then
z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldIcon &" = " &z5fa3ab9f0b
 End If
 If Not IsNull(z844c67087f)And z844c67087f<>"" Then
 z844c67087f=ze2deabbd0b(z844c67087f)
zf2d3e7d08e=Split(z844c67087f," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&hb9d+4571-&H1d78) To z6ce0e79f97-(&hb3+243-&H1a5)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldSubject &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%'"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-Len(z98e1768301))
z1789da5812=z1789da5812 &ze8eeff7855 &")"
 ze8eeff7855=""
 End If
 If Not IsNull(z25352d0d09)And z25352d0d09<>"" Then
 z25352d0d09=ze2deabbd0b(z25352d0d09)
zf2d3e7d08e=Split(z25352d0d09," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&h10e2+5396-&H25f6) To z6ce0e79f97-(&h1aba+422-&H1c5f)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldMessage &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%'"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-Len(z98e1768301))
z1789da5812=z1789da5812 &ze8eeff7855 &")"
 ze8eeff7855=""
 End If
 If Not IsNull(z1dc37221ca) Then
If z1dc37221ca Then
 z1dc37221ca=tstSQLTrue
 Else
 z1dc37221ca=tstSQLFalse
 End If
 z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldMailNotice &" = " &z1dc37221ca
 End If
 If Not IsNull(ze4450bdfd2) Then
If ze4450bdfd2 Then
 ze4450bdfd2=tstSQLTrue
 Else
 ze4450bdfd2=tstSQLFalse
 End If
 z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldActive &" = " &ze4450bdfd2
 End If
 If Not IsNull(zf9bac91e20) Then
If zf9bac91e20 Then
 zf9bac91e20=tstSQLTrue
 Else
 zf9bac91e20=tstSQLFalse
 End If
 z1789da5812=z1789da5812 &z98e1768301 &tstdbPostTable &"." &tstdbPostFieldDeleted &" = " &zf9bac91e20
 End If
 If Not IsNull(zc8a7910fa6)And IsNumeric(zc8a7910fa6) Then
z1789da5812=z1789da5812 &z98e1768301 &"(" &tstdbPostTable &"." &tstdbPostFieldPostDate &" > " &z66a9db052f(DateAdd("d",-(&h6ac+4450-&H180d)*zc8a7910fa6,Date())) &" OR " &tstdbPostTable &"." &tstdbPostFieldModifyDate &" > " &z66a9db052f(DateAdd("d",-(&h8c4+128-&H943)*zc8a7910fa6,Date())) &")"
 End If
 If Left(z1789da5812,Len(z98e1768301))=z98e1768301 then
 z1789da5812=Right(z1789da5812,Len(z1789da5812)-Len(z98e1768301))
End If
 If z1789da5812<>"" Then
 z1789da5812=" WHERE " &z1789da5812
 End If
 If Not IsNull(zf5a9f0892a)And zf5a9f0892a<>"" Then
 zf5a9f0892a=" ORDER BY " &zf5a9f0892a
 End If
 zca7201199f="SELECT " &tstdbPostTable &".*, " &tstdbMemberTable &"." &tstdbMemberFieldUsername &", " &tstdbForumTable &"." &tstdbForumFieldModeratorID &" FROM " &tstdbForumTable &" INNER JOIN (" &tstdbMemberTable &" RIGHT JOIN " &tstdbPostTable &" ON " &tstdbMemberTable &"." &tstdbMemberFieldID &" = " &tstdbPostTable &"." &tstdbPostFieldMemberID &") ON " &tstdbForumTable &"." &tstdbForumFieldID &" = " &tstdbPostTable &"." &tstdbPostFieldForumID &z1789da5812 &zf5a9f0892a &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,z33b419b857)
If z33b419b857<>-(&h4d2+8244-&H2505) Then
 zcca66305f9.PageSize=z33b419b857
 End If
 Set zcca66305f9.ActiveConnection=Nothing
 Set zb76ffc630e=zcca66305f9
 End Function
 Function zcc202045a5(ByVal z5b7c89c8d8,ByVal z1642ba86b3)
Dim zcca66305f9
 Dim zca7201199f
 Dim zb3ba770dd4
 z2b79277e31("tstcfgBoardTitle")
zb3ba770dd4=tstBeforeLogin(z5b7c89c8d8,z1642ba86b3)
If zb3ba770dd4=tstLoginFailed Then
 zcc202045a5=False
 Exit Function
 End If
 zca7201199f="SELECT " &tstdbMemberTable &".*, " &tstdbGroupTable &"." &tstdbGroupFieldName &" AS GroupName FROM (" &tstdbMemberTable &" LEFT JOIN " &tstdbMemberGroupTable &" ON " &tstdbMemberTable &"." &tstdbMemberFieldID &" = " &tstdbMemberGroupTable &"." &tstdbMemberGroupFieldMemberID &") LEFT JOIN " &tstdbGroupTable &" ON " &tstdbMemberGroupTable &"." &tstdbMemberGroupFieldGroupID &" = " &tstdbGroupTable &"." &tstdbGroupFieldID &" WHERE ((" &tstdbMemberTable &"." &tstdbMemberFieldUsername &")='" &ze2deabbd0b(z5b7c89c8d8) &"')"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&hc80+6763-&H26ea))
Set zcca66305f9.ActiveConnection=Nothing
 Select Case zb3ba770dd4
 Case tstLoginSuccessBypass
 If zcca66305f9.EOF Then
 zcc202045a5=False
 Exit Function
 End If
 Case tstLoginSuccessBypassCreateUser
 If zcca66305f9.EOF Then
 Call z32fca02bcb(-(&he33+6248-&H269a),Null,Null,z5b7c89c8d8,z1642ba86b3,Null,Null,Null,Null,Null,Null,Null,Null)
zca7201199f="SELECT " &tstdbMemberTable &".*, " &tstdbGroupTable &"." &tstdbGroupFieldName &" AS GroupName FROM (" &tstdbMemberTable &" LEFT JOIN " &tstdbMemberGroupTable &" ON " &tstdbMemberTable &"." &tstdbMemberFieldID &" = " &tstdbMemberGroupTable &"." &tstdbMemberGroupFieldMemberID &") LEFT JOIN " &tstdbGroupTable &" ON " &tstdbMemberGroupTable &"." &tstdbMemberGroupFieldGroupID &" = " &tstdbGroupTable &"." &tstdbGroupFieldID &" WHERE ((" &tstdbMemberTable &"." &tstdbMemberFieldUsername &")='" &ze2deabbd0b(z5b7c89c8d8) &"')"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h430+5806-&H1add))
Set zcca66305f9.ActiveConnection=Nothing
 End If
 Case tstLoginFailed
 zcc202045a5=False
 Exit Function
 Case Else
 If zcca66305f9.EOF Then
 zcc202045a5=False
 Exit Function
 End If
 z1642ba86b3=z0e88947362(z2363c3e941,z1642ba86b3)
If zcca66305f9(tstdbMemberFieldPassword)<>z1642ba86b3 Then
 zcc202045a5=False
 Exit Function
 End If
 End Select
 Session(tstUniqueBoardKey &"tstsesStarted")=Now()
Session(tstUniqueBoardKey &"tstsesRunning")="True"
 If Not IsNull(zcca66305f9(tstdbMemberFieldSkin)) Then
Session(tstUniqueBoardKey &"tstsesSkin")=zcca66305f9(tstdbMemberFieldSkin)
End If
 If InStr(z2b79277e31("tstcfgSkinsAvailable"),Session(tstUniqueBoardKey &"tstsesSkin"))=(&h2fc+5681-&H192d) Or Session(tstUniqueBoardKey &"tstsesSkin")="" Or Session(tstUniqueBoardKey &"tstsesSkin")=" " Then
 Session(tstUniqueBoardKey &"tstsesSkin")=z2b79277e31("tstcfgDefaultSkin")
End If
 Session(tstUniqueBoardKey &"tstsesUsername")=z5b7c89c8d8
 Session(tstUniqueBoardKey &"tstsesUID")=za405aab497(zcca66305f9(tstdbMemberFieldID))
Session(tstUniqueBoardKey &"tstsesFirstName")=za405aab497(zcca66305f9(tstdbMemberFieldFName))
Session(tstUniqueBoardKey &"tstsesLastName")=za405aab497(zcca66305f9(tstdbMemberFieldLName))
Session(tstUniqueBoardKey &"tstsesTopicsPerPage")=Application(tstUniqueBoardKey &"tstcfgDefaultTopicsPerPage")
Session(tstUniqueBoardKey &"tstsesPostsPerPage")=Application(tstUniqueBoardKey &"tstcfgDefaultPostsPerPage")
Session(tstUniqueBoardKey &"tstsesSignature")=za405aab497(zcca66305f9(tstdbMemberFieldSignature))
Session(tstUniqueBoardKey &"tstsesIncludeSignature")=za405aab497(zcca66305f9(tstdbMemberFieldIncludeSignature))
Session(tstUniqueBoardKey &"tstsesNotifyDefault")=za405aab497(zcca66305f9(tstdbMemberFieldNotifyDefault))
Session(tstUniqueBoardKey &"tstsesNavigationLink")="<a href='" &tstToastScriptName &"'>" &Replace(z2b79277e31("tstlnkNavigationLinkText"),"<!--%Navigation%-->",z2b79277e31("tstcfgBoardTitle")) &"</a> " &z2b79277e31("tstlnkNavigationLinkSeparator") &" "
 zf88826d19f=za405aab497(zcca66305f9(tstdbMemberFieldID))
Do Until zcca66305f9.EOF
 If zcca66305f9("GroupName")="Admin" Then
 Session(tstUniqueBoardKey &"tstsesAdmin")=True
 Exit Do
 End If
 zcca66305f9.MoveNext
 Loop
 zfdd5f559cf zf88826d19f,Null,Null,Null,Null,Null,Null,Null,Null,Null,Null,Null,Null,Null,Now(),Null
 z05a110f4c4 zcca66305f9
 zcc202045a5=True
 End Function
 Function z32fca02bcb(ByRef zee086bfcee,ByVal z8432001327,ByVal z53d1c821d9,ByVal z5b7c89c8d8,ByVal z1642ba86b3,ByVal z3090078ab5,ByVal zac68ef67d0,ByVal z068600d1b4,ByVal zb835606b12,ByVal z8546e9ff6c,ByVal z5305b9d501,ByVal z166427a15f,ByVal zbf4fc4fda4)
Dim zca7201199f
 Dim zcca66305f9
 Dim z29be69f925
 Dim zd38b036918
 If IsNull(z8432001327)Then z8432001327=""
 If IsNull(z53d1c821d9)Then z53d1c821d9=""
 If IsNull(zac68ef67d0)Then zac68ef67d0=tstSQLTrue
 If IsNull(z068600d1b4)Then z068600d1b4=""
 If IsNull(zb835606b12)Then zb835606b12=""
 If IsNull(z8546e9ff6c)Then z8546e9ff6c=""
 If IsNull(z5305b9d501)Then z5305b9d501=z2b79277e31("tstcfgDefaultSkin")
If IsNull(z166427a15f)Then z166427a15f=tstSQLFalse
 If IsNull(zbf4fc4fda4)Then zbf4fc4fda4=tstSQLTrue
 z29be69f925=Split(z2b79277e31("tstcfgReservedUsernames"),"|")
If tstAlphanumericUsernameCheck Then
 If Not z6c038a02a5(z5b7c89c8d8) Then
z32fca02bcb=z2b79277e31("tstlngInvalidUsernameError")
Exit Function
 End If
 End If
 For zd38b036918=(&h12a0+625-&H1511) To UBound(z29be69f925)
If UCase(z29be69f925(zd38b036918))=UCase(z5b7c89c8d8) Then
z32fca02bcb=z2b79277e31("tstlngReservedUsernameError")
Exit Function
 End If
 Next
 zca7201199f="SELECT * FROM " &tstdbMemberTable &" WHERE " &tstdbMemberFieldUsername &" = '" &ze2deabbd0b(z5b7c89c8d8) &"';"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstUpdateCursorLocation,tstUpdateCursorType,tstUpdateLockType,-(&h193+9568-&H26f2))
If Not zcca66305f9.EOF Then
 z32fca02bcb=z2b79277e31("tstlngUsernameTakenError")
z05a110f4c4 zcca66305f9
 Exit Function
 Else
 z32fca02bcb=tstBeforeNewUser(z8432001327,z53d1c821d9,z5b7c89c8d8,z1642ba86b3,z3090078ab5,zac68ef67d0,z068600d1b4,zb835606b12,z8546e9ff6c,z5305b9d501,z166427a15f,zbf4fc4fda4)
If z32fca02bcb<>"" Then Exit Function
 z1642ba86b3=z0e88947362(z2363c3e941,z1642ba86b3)
If zac68ef67d0 Then
 zac68ef67d0=tstSQLTrue
 Else
 zac68ef67d0=tstSQLFalse
 End If
 If z166427a15f Then
 z166427a15f=tstSQLTrue
 Else
 z166427a15f=tstSQLFalse
 End If
 If zbf4fc4fda4 Then
 zbf4fc4fda4=tstSQLTrue
 Else
 zbf4fc4fda4=tstSQLFalse
 End If
 zcca66305f9.AddNew
 zcca66305f9(tstdbMemberFieldFName)=z8432001327
 zcca66305f9(tstdbMemberFieldLName)=z53d1c821d9
 zcca66305f9(tstdbMemberFieldUsername)=z5b7c89c8d8
 zcca66305f9(tstdbMemberFieldPassword)=z1642ba86b3
 zcca66305f9(tstdbMemberFieldEmail)=z3090078ab5
 zcca66305f9(tstdbMemberFieldHideEmail)=zac68ef67d0
 zcca66305f9(tstdbMemberFieldICQ)=z068600d1b4
 zcca66305f9(tstdbMemberFieldHomepage)=zb835606b12
 zcca66305f9(tstdbMemberFieldSignature)=z8546e9ff6c
 zcca66305f9(tstdbMemberFieldSkin)=z5305b9d501
 zcca66305f9(tstdbMemberFieldIncludeSignature)=z166427a15f
 zcca66305f9(tstdbMemberFieldNotifyDefault)=zbf4fc4fda4
 zcca66305f9(tstdbMemberFieldIP)=Request.ServerVariables("REMOTE_ADDR")
zcca66305f9.Update
 zee086bfcee=zcca66305f9(tstdbMemberFieldID)
tstAfterNewUser zcca66305f9(tstdbMemberFieldID),z8432001327,z53d1c821d9,z5b7c89c8d8,z1642ba86b3,z3090078ab5,zac68ef67d0,z068600d1b4,zb835606b12,z8546e9ff6c,z5305b9d501,z166427a15f,zbf4fc4fda4
 Call z351cebac46()
End If
 z05a110f4c4 zcca66305f9
 End Function
 Function zfdd5f559cf(ByVal zee086bfcee,ByVal z8432001327,ByVal z53d1c821d9,ByVal z5b7c89c8d8,ByVal z1642ba86b3,ByVal z3090078ab5,ByVal zac68ef67d0,ByVal z068600d1b4,ByVal zb835606b12,ByVal z8546e9ff6c,ByVal z5305b9d501,ByVal z166427a15f,ByVal zbf4fc4fda4,ByVal z1962a4249e,ByVal ze7e9296041,ByVal z37c2ab73e3)
Dim zca7201199f
 Dim zcca66305f9
 zca7201199f="SELECT * FROM " &tstdbMemberTable &" WHERE ID = " &zee086bfcee
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstUpdateCursorLocation,tstUpdateCursorType,tstUpdateLockType,-(&he17+1812-&H152a))
If zcca66305f9.EOF Then
 zfdd5f559cf=z2b79277e31("tstlngUserNotFoundError")
z05a110f4c4 zcca66305f9
 Exit Function
 End If
 If IsNull(z8432001327)Then z8432001327=za405aab497(zcca66305f9(tstdbMemberFieldFName))
If IsNull(z53d1c821d9)Then z53d1c821d9=za405aab497(zcca66305f9(tstdbMemberFieldLName))
If IsNull(z5b7c89c8d8)Then z5b7c89c8d8=za405aab497(zcca66305f9(tstdbMemberFieldUsername))
If IsNull(z1642ba86b3)Then z1642ba86b3=z0e88947362(z2363c3e941,za405aab497(zcca66305f9(tstdbMemberFieldPassword)))
If IsNull(z3090078ab5)Then z3090078ab5=za405aab497(zcca66305f9(tstdbMemberFieldEmail))
If IsNull(zac68ef67d0) Then
zac68ef67d0=za405aab497(zcca66305f9(tstdbMemberFieldHideEmail))
If zac68ef67d0 Then
 zac68ef67d0=tstSQLTrue
 Else
 zac68ef67d0=tstSQLFalse
 End If
 Else
 If zac68ef67d0 Then
 zac68ef67d0=tstSQLTrue
 Else
 zac68ef67d0=tstSQLFalse
 End If
 End If
 If IsNull(z068600d1b4)Then z068600d1b4=za405aab497(zcca66305f9(tstdbMemberFieldICQ))
If IsNull(zb835606b12)Then zb835606b12=za405aab497(zcca66305f9(tstdbMemberFieldHomepage))
If IsNull(z8546e9ff6c)Then z8546e9ff6c=za405aab497(zcca66305f9(tstdbMemberFieldSignature))
If IsNull(z5305b9d501)Then z5305b9d501=za405aab497(zcca66305f9(tstdbMemberFieldSkin))
If IsNull(z166427a15f) Then
z166427a15f=za405aab497(zcca66305f9(tstdbMemberFieldIncludeSignature))
If z166427a15f Then
 z166427a15f=tstSQLTrue
 Else
 z166427a15f=tstSQLFalse
 End If
 Else
 If z166427a15f Then
 z166427a15f=tstSQLTrue
 Else
 z166427a15f=tstSQLFalse
 End If
 End If
 If IsNull(zbf4fc4fda4) Then
zbf4fc4fda4=za405aab497(zcca66305f9(tstdbMemberFieldNotifyDefault))
If zbf4fc4fda4 Then
 zbf4fc4fda4=tstSQLTrue
 Else
 zbf4fc4fda4=tstSQLFalse
 End If
 Else
 If zbf4fc4fda4 Then
 zbf4fc4fda4=tstSQLTrue
 Else
 zbf4fc4fda4=tstSQLFalse
 End If
 End If
 If IsNull(z1962a4249e)Then z1962a4249e=zcca66305f9(tstdbMemberFieldPostCount)
If IsNull(ze7e9296041)Then ze7e9296041=zcca66305f9(tstdbMemberFieldLastLoginDate)
If IsNull(z37c2ab73e3)Then z37c2ab73e3=zcca66305f9(tstdbMemberFieldLastPostDate)
zfdd5f559cf=tstBeforeModifyUser(zee086bfcee,z8432001327,z53d1c821d9,z5b7c89c8d8,z1642ba86b3,z3090078ab5,zac68ef67d0,z068600d1b4,zb835606b12,z8546e9ff6c,z5305b9d501,z166427a15f,zbf4fc4fda4,z1962a4249e,ze7e9296041,z37c2ab73e3)
If zfdd5f559cf<>"" Then Exit Function
 z1642ba86b3=z0e88947362(z2363c3e941,z1642ba86b3)
zcca66305f9(tstdbMemberFieldFName)=z8432001327
 zcca66305f9(tstdbMemberFieldLName)=z53d1c821d9
 zcca66305f9(tstdbMemberFieldUsername)=z5b7c89c8d8
 zcca66305f9(tstdbMemberFieldPassword)=z1642ba86b3
 zcca66305f9(tstdbMemberFieldEmail)=z3090078ab5
 zcca66305f9(tstdbMemberFieldHideEmail)=zac68ef67d0
 zcca66305f9(tstdbMemberFieldICQ)=z068600d1b4
 zcca66305f9(tstdbMemberFieldHomepage)=zb835606b12
 zcca66305f9(tstdbMemberFieldSignature)=z8546e9ff6c
 zcca66305f9(tstdbMemberFieldSkin)=z5305b9d501
 zcca66305f9(tstdbMemberFieldIncludeSignature)=z166427a15f
 zcca66305f9(tstdbMemberFieldNotifyDefault)=zbf4fc4fda4
 zcca66305f9(tstdbMemberFieldPostCount)=z1962a4249e
 zcca66305f9(tstdbMemberFieldLastLoginDate)=ze7e9296041
 zcca66305f9(tstdbMemberFieldLastPostDate)=z37c2ab73e3
 zcca66305f9(tstdbMemberFieldIP)=Request.ServerVariables("REMOTE_ADDR")
zcca66305f9.Update
 z05a110f4c4 zcca66305f9
 tstAfterModifyUser zee086bfcee,z8432001327,z53d1c821d9,z5b7c89c8d8,z1642ba86b3,z3090078ab5,zac68ef67d0,z068600d1b4,zb835606b12,z8546e9ff6c,z5305b9d501,z166427a15f,zbf4fc4fda4,z1962a4249e,ze7e9296041,z37c2ab73e3
 End Function
 Function z54717e971a(ByVal zf88826d19f)
Dim z5b7c89c8d8
 Dim zcca66305f9
 Dim zca7201199f
 zca7201199f="SELECT * FROM " &tstdbMemberTable &" WHERE " &tstdbMemberFieldID &" = " &zf88826d19f &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h16d6+1760-&H1db5))
Set zcca66305f9.ActiveConnection=Nothing
 z5b7c89c8d8=zcca66305f9(tstdbMemberFieldUsername)
zca7201199f="UPDATE " &tstdbPostTable &" SET " &tstdbPostFieldGuestName &" = '" &z5b7c89c8d8 &"', " &tstdbPostFieldMemberID &" = 0 WHERE " &tstdbPostFieldMemberID &" = " &zf88826d19f &";"
 zc3ca15e96a(zca7201199f)
zca7201199f="DELETE FROM " &tstdbMemberTable &" WHERE (((" &tstdbMemberFieldID &")=" &zf88826d19f &"));"
 zc3ca15e96a(zca7201199f)
Call z351cebac46()
z05a110f4c4 zcca66305f9
 End Function
 Function z43b73c2129(ByVal zee086bfcee,ByVal z8432001327,ByVal z53d1c821d9,ByVal z5b7c89c8d8,ByVal z3090078ab5,ByVal zf5a9f0892a)
Dim zca7201199f
 Dim z1789da5812,ze8eeff7855
 Dim z98e1768301
 Dim zf2d3e7d08e
 Dim zd38b036918
 Dim zcca66305f9
 z98e1768301=" AND "
 If Not IsNull(zee086bfcee)And IsNumeric(zee086bfcee) Then
z1789da5812=z1789da5812 &z98e1768301 &tstdbMemberTable &"." &tstdbMemberFieldID &" = " &zee086bfcee
 End If
 If Not IsNull(z8432001327)And z8432001327<>"" Then
 z8432001327=ze2deabbd0b(z8432001327)
zf2d3e7d08e=Split(z8432001327," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&h8f8+6697-&H2321) To z6ce0e79f97-(&h61b+5278-&H1ab8)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &tstdbMemberTable &"." &tstdbMemberFieldFName &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%'"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-Len(z98e1768301))
z1789da5812=z1789da5812 &ze8eeff7855 &")"
 ze8eeff7855=""
 End If
 If Not IsNull(z53d1c821d9)And z53d1c821d9<>"" Then
 z53d1c821d9=ze2deabbd0b(z53d1c821d9)
zf2d3e7d08e=Split(z53d1c821d9," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&h551+7474-&H2283) To z6ce0e79f97-(&h83c+2396-&H1197)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &tstdbMemberTable &"." &tstdbMemberFieldLName &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%'"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-Len(z98e1768301))
z1789da5812=z1789da5812 &ze8eeff7855 &")"
 ze8eeff7855=""
 End If
 If Not IsNull(z5b7c89c8d8)And z5b7c89c8d8<>"" Then
 z5b7c89c8d8=ze2deabbd0b(z5b7c89c8d8)
zf2d3e7d08e=Split(z5b7c89c8d8," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&hef1+1198-&H139f) To z6ce0e79f97-(&h3cb+6592-&H1d8a)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &tstdbMemberTable &"." &tstdbMemberFieldUsername &" = '" &zf2d3e7d08e(zd38b036918) &"'"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-Len(z98e1768301))
z1789da5812=z1789da5812 &ze8eeff7855 &")"
 ze8eeff7855=""
 End If
 If Not IsNull(z3090078ab5)And z3090078ab5<>"" Then
 z3090078ab5=ze2deabbd0b(z3090078ab5)
zf2d3e7d08e=Split(z3090078ab5," ")
z1789da5812=z1789da5812 &z98e1768301 &"("
 For zd38b036918=(&h1126+3673-&H1f7f) To z6ce0e79f97-(&h2eb+4915-&H161d)
 If zd38b036918>UBound(zf2d3e7d08e)Then Exit For
 ze8eeff7855=ze8eeff7855 &z98e1768301 &tstdbMemberTable &"." &tstdbMemberFieldEmail &" LIKE '%" &zf2d3e7d08e(zd38b036918) &"%'"
 Next
 ze8eeff7855=Right(ze8eeff7855,Len(ze8eeff7855)-Len(z98e1768301))
z1789da5812=z1789da5812 &ze8eeff7855 &")"
 ze8eeff7855=""
 End If
 If Left(z1789da5812,Len(z98e1768301))=z98e1768301 then
 z1789da5812=Right(z1789da5812,Len(z1789da5812)-Len(z98e1768301))
End If
 If z1789da5812<>"" Then
 z1789da5812=" WHERE " &z1789da5812
 End If
 If Not IsNull(zf5a9f0892a)And zf5a9f0892a<>"" Then
 zf5a9f0892a=" ORDER BY " &zf5a9f0892a
 End If
 zca7201199f="SELECT * FROM " &tstdbMemberTable &z1789da5812 &zf5a9f0892a &";"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&hf07+1832-&H162e))
Set zcca66305f9.ActiveConnection=Nothing
 Set z43b73c2129=zcca66305f9
 End Function
 Function z2f0fbca9f2(z1c126544a4,zffa71d0385,ze28c2f5ec1)
Dim z1eaca2ce9e,z63086bdaa1,zc577d4a897,z32393afa71
 z63086bdaa1=Request.ServerVariables("HTTP_USER_AGENT")
If InStr(z63086bdaa1,"Windows")>(&h12fa+2192-&H1b8a) Then
 If InStr(z63086bdaa1,"MSIE 5.5;")>(&h1176+1706-&H1820) Or InStr(z63086bdaa1,"MSIE 6.0;")Or InStr(z63086bdaa1,"MSIE 7.0;")>(&he9c+2566-&H18a2) Then
 Set zc577d4a897=Server.CreateObject(tstFileSystemObjectProgID)
If zc577d4a897.FileExists(Server.MapPath(tstToastBasePath &tstToastEditPath) &"\toastedit.html") Then
z1eaca2ce9e=z33888dbd2a(Server.MapPath(tstToastBasePath &tstToastEditPath) &"\toastedit.html")
z1eaca2ce9e=Replace(z1eaca2ce9e,"<!--%SubmitTextName%-->",zffa71d0385)
z1eaca2ce9e=Replace(z1eaca2ce9e,"<!--%SubmitTextValue%-->",ze28c2f5ec1)
End If
 End If
 End If
 If z1eaca2ce9e<>"" Then
 z1c126544a4=Replace(z1c126544a4,"<!--%ToastEdit%-->",z1eaca2ce9e)
Else
 z32393afa71=tstToastEditDownlevelHTML
 z32393afa71=Replace(z32393afa71,"<!--*TextBoxName*-->",zffa71d0385)
z32393afa71=Replace(z32393afa71,"<!--*TextBoxValue*-->",ze28c2f5ec1)
z1c126544a4=Replace(z1c126544a4,"<!--%ToastEdit%-->",z32393afa71)
End If
 z2f0fbca9f2=z1c126544a4
 End Function
 Function z2b79277e31(z2136f54962)
Dim zd1cb26e371,z2c46bf2a36
 Dim ze7e41cf9b1
 Dim zc577d4a897,zf0330879d1
 Dim z184651673b,ze16b114831
 Dim zca7201199f
 Dim zcca66305f9
 Dim zd38b036918,z87ccc4d532
 Dim zaaf73d8936,zd39abc9acb
 Set zcca66305f9=Server.CreateObject("ADODB.Recordset")
If Application(tstUniqueBoardKey &"tstcfgStarted")="" Then
 zb6b99488fe "BEGIN: Application Startup."
 Application.Lock
 Set zd1cb26e371=z4b400b6588(tstConfigFile)
For Each z2c46bf2a36 In zd1cb26e371
 If Left(z2c46bf2a36,(&h8d7+4085-&H18cb))<>";" Then
 Application(tstUniqueBoardKey &z2c46bf2a36)=zd1cb26e371(z2c46bf2a36)
End If
 Next
 Set zc577d4a897=Server.CreateObject(tstFileSystemObjectProgID)
Set ze16b114831=zc577d4a897.GetFolder(Server.MapPath(tstToastBasePath &tstSkinsPath))
If zc577d4a897.FileExists(Server.MapPath(tstToastBasePath &tstAdminPath) &"\license.key") Then
Application(tstUniqueBoardKey &"tstcfgLicenseKey")=z33888dbd2a(Server.MapPath(tstToastBasePath &tstAdminPath) &"\license.key")
Else
 Application(tstUniqueBoardKey &"tstcfgLicenseKey")=""
 End If
 For Each z184651673b in ze16b114831.SubFolders
 ze7e41cf9b1=Server.MapPath(tstToastBasePath &ze16b114831.Name &"\" &z184651673b.Name &"\language.txt")
If zc577d4a897.FileExists(ze7e41cf9b1) Then
Set zd1cb26e371=z4b400b6588(ze7e41cf9b1)
For Each z2c46bf2a36 In zd1cb26e371
 If Left(z2c46bf2a36,(&h647+2159-&Heb5))<>";" Then
 Application(tstUniqueBoardKey &z184651673b.Name &":" &z2c46bf2a36)=zd1cb26e371(z2c46bf2a36)
End If
 Next
 End If
 ze7e41cf9b1=Server.MapPath(tstToastBasePath &ze16b114831.Name &"\" &z184651673b.Name &"\links.txt")
If zc577d4a897.FileExists(ze7e41cf9b1) Then
Set zd1cb26e371=z4b400b6588(ze7e41cf9b1)
For Each z2c46bf2a36 In zd1cb26e371
 If Left(z2c46bf2a36,(&hef9+1623-&H154f))<>";" Then
 Application(tstUniqueBoardKey &z184651673b.Name &":" &z2c46bf2a36)=zd1cb26e371(z2c46bf2a36)
End If
 Next
 End If
 Next
 Application(tstUniqueBoardKey &"tstcfgStarted")=Now()
Application(tstUniqueBoardKey &"tstcfgActiveUsers")=(&h1ba7+709-&H1e6c)
 Application(tstUniqueBoardKey &"tstcfgActiveUserList")=""
 Application(tstUniqueBoardKey &"tstcfgActiveUsersLastCleanup")=""
 Application(tstUniqueBoardKey &"tstcfgForumsList")=""
 Set zcca66305f9=zce564571ba(Null,False)
If Not zcca66305f9.EOF Then
 Do While Not zcca66305f9.EOF
 Application(tstUniqueBoardKey &"tstcfgForumsList")=Application(tstUniqueBoardKey &"tstcfgForumsList") &zcca66305f9(tstdbForumFieldID) &","
 Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"ID")=zcca66305f9(tstdbForumFieldID)
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"ModeratorID")=zcca66305f9(tstdbForumFieldModeratorID)
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"Moderator")=z423e920736(zcca66305f9("Moderator"))
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"ForumName")=z423e920736(zcca66305f9(tstdbForumFieldName))
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"Description")=z423e920736(zcca66305f9(tstdbForumFieldDescription))
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"GuestAccess")=zcca66305f9(tstdbForumFieldGuestAccess)
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"MemberAccess")=zcca66305f9(tstdbForumFieldMemberAccess)
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"TopicCount")=zcca66305f9(tstdbForumFieldTopicCount)
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"PostCount")=zcca66305f9(tstdbForumFieldPostCount)
Application(tstUniqueBoardKey &"tstcfgForum" &zcca66305f9(tstdbForumFieldID) &"LastPostDate")=zcca66305f9(tstdbForumFieldLastPostDate)
zcca66305f9.MoveNext
 Loop
 Application(tstUniqueBoardKey &"tstcfgForumsList")=Left(Application(tstUniqueBoardKey &"tstcfgForumsList"),Len(Application(tstUniqueBoardKey &"tstcfgForumsList"))-(&h156f+1659-&H1be9))
End If
 zca7201199f="SELECT * FROM " &tstdbTotalsTable &" WHERE " &tstdbTotalsFieldID &" = 1;"
 Set zcca66305f9=z8d771a8f58(zca7201199f,tstReadOnlyCursorLocation,tstReadOnlyCursorType,tstReadOnlyLockType,-(&h9da+6853-&H249e))
Set zcca66305f9.ActiveConnection=Nothing
 Application(tstUniqueBoardKey &"tstcfgRegisterMembersCount")=zcca66305f9(tstdbTotalsFieldUserCount)
Application(tstUniqueBoardKey &"tstcfgTotalPostsCount")=zcca66305f9(tstdbTotalsFieldPostCount)
For zd38b036918=(&h1067+4754-&H22f9) To UBound(tstEmoticonKeystrokes)
zd39abc9acb=""
 For z87ccc4d532=(&h38c+3749-&H1230) To Len(tstEmoticonKeystrokes(zd38b036918))
zd39abc9acb=zd39abc9acb &"[" &Mid(tstEmoticonKeystrokes(zd38b036918),z87ccc4d532,(&h1179+335-&H12c7)) &"]"
 Next
 tstEmoticonKeystrokes(zd38b036918)=zd39abc9acb
 Next
 Application(tstUniqueBoardKey &"tstcfgEscapedEmoticonKeystrokes")=tstEmoticonKeystrokes
 Application.UnLock
 z05a110f4c4 zcca66305f9
 Set zf0330879d1=Nothing
 Set ze16b114831=Nothing
 Set zc577d4a897=Nothing
 Set zd1cb26e371=Nothing
 zb6b99488fe "END: Application Startup."
 End If
 If Session(tstUniqueBoardKey &"tstsesStarted")="" Then
 Session(tstUniqueBoardKey &"tstsesStarted")=Now()
Session(tstUniqueBoardKey &"tstsesRunning")="True"
 Session(tstUniqueBoardKey &"tstsesAdmin")=False
 Session(tstUniqueBoardKey &"tstsesSkin")=Application(tstUniqueBoardKey &"tstcfgDefaultSkin")
Session(tstUniqueBoardKey &"tstsesUsername")=shrGetConfig("tstlngGuestName")
Session(tstUniqueBoardKey &"tstsesUID")=(&ha99+4475-&H1c14)
 Session(tstUniqueBoardKey &"tstsesTopicsPerPage")=Application(tstUniqueBoardKey &"tstcfgDefaultTopicsPerPage")
Session(tstUniqueBoardKey &"tstsesPostsPerPage")=Application(tstUniqueBoardKey &"tstcfgDefaultPostsPerPage")
Session(tstUniqueBoardKey &"tstsesSignature")=""
 Session(tstUniqueBoardKey &"tstsesIncludeSignature")=False
 Session(tstUniqueBoardKey &"tstsesNotifyDefault")=False
 Session(tstUniqueBoardKey &"tstsesNavigationLink")="<a href='" &tstToastScriptName &"'>" &Replace(z2b79277e31("tstlnkNavigationLinkText"),"<!--%Navigation%-->",z2b79277e31("tstcfgBoardTitle")) &"</a> " &z2b79277e31("tstlnkNavigationLinkSeparator") &" "
 End If
 If Left(z2136f54962,(&he84+3529-&H1c47))="tstcfg" Then
 z2b79277e31=Application(tstUniqueBoardKey &z2136f54962)
Else
 z2b79277e31=Application(tstUniqueBoardKey &Session(tstUniqueBoardKey &"tstsesSkin") &":" &z2136f54962)
If z2136f54962="tstlngGuestName" And z2b79277e31="" Then z2b79277e31="Guest"
 End If
 End Function
%>
