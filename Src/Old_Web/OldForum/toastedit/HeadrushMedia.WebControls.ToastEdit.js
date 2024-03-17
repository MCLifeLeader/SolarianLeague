//Copyright© 2001 Josh Painter. All rights reserved.
//Reverse-engineering of this file is NOT ALLOWED according
//to the license agreement.  Violators will be prosecuted.
//**Start Encode**

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Global vars
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

var x_windowTimer;

var x_buttonBackColor = "#E0DFE3";
var x_buttonBorderColor = "#E0DFE3";
var x_buttonMouseOverBackColor = "#B2B4BF";
var x_buttonBorderMouseOverBackColor = "#716F64";
var x_buttonMouseDownBackColor = "#E0DFE3";
var x_buttonBorderMouseDownBackColor = "#716F64";

var x_listBackColor = "#E0DFE3";
var x_listBorderColor = "white";
var x_listMouseOverBackColor = "#B2B4BF";
var x_listBorderMouseOverBackColor = "#716F64";
var x_listMouseDownBackColor = "#E0DFE3";
var x_listBorderMouseDownBackColor = "#716F64";

var x_keyToolbars = "TOOLBARS";
var x_keyStyles = "STYLES";
var x_keyToolbarCSSClass = "TOOLBARCSSCLASS";
var x_keyToolbarButtons = "TOOLBARBUTTONS";
var x_keyToolbarButtonCSSClass = "TOOLBARBUTTONCSSCLASS";
var x_keyToolbarButton = "TOOLBARBUTTON";
var x_keyMouseOver = "MOUSEOVER";
var x_keyMouseOut = "MOUSEOUT";
var x_keyMouseDown = "MOUSEDOWN";
var x_keyMouseUp = "MOUSEUP";
var x_keyCut = "CUT";
var x_keyCopy = "COPY";
var x_keyPaste = "PASTE";
var x_keyBold = "BOLD";
var x_keyItalic = "ITALIC";
var x_keyUnderline = "UNDERLINE";
var x_keyCreateLink = "CREATELINK";
var x_keyInsertImage = "INSERTIMAGE";
var x_keyJustifyLeft = "JUSTIFYLEFT";
var x_keyJustifyCenter = "JUSTIFYCENTER";
var x_keyJustifyRight = "JUSTIFYRIGHT";
var x_keyInsertOrderedList = "INSERTORDEREDLIST";
var x_keyInsertUnorderedList = "INSERTUNORDEREDLIST";
var x_keyOutdent = "OUTDENT";
var x_keyIndent = "INDENT";
var x_keySpellCheck = "SPELLCHECK";
var x_keyDropDownButtons = "DROPDOWNBUTTONS";
var x_keyDropDownButtonCSSClass = "DROPDOWNBUTTONCSSCLASS";
var x_keyFontColors = "FONTCOLORS";
var x_keyEmoticons = "EMOTICONS";
var x_keyFontColorSubbar = "FONTCOLORSUBBAR";
var x_keyEmoticonSubbar = "EMOTICONSUBBAR";
var x_keyDropDownLists = "DROPDOWNLISTS";
var x_keyDropDownListCSSClass = "DROPDOWNLISTCSSCLASS";
var x_keyDropDownList = "DROPDOWNLIST";
var x_keyFontFace = "FONTFACE";
var x_keyFontName = "FONTNAME";
var x_keyFontSize = "FONTSIZE";
var x_keyDefaultFontButton = "DEFAULTFONTBUTTON";
var x_keyFontFaceSubbar = "FONTFACESUBBAR";
var x_keyFontSizeSubbar = "FONTSIZESUBBAR";
var x_keySubToolbars = "SUBTOOLBARS";
var x_keySubToolbarCSSClass = "SUBTOOLBARCSSCLASS";
var x_keyModeButtons = "MODEBUTTONS";
var x_keyFontFaceButtons = "FONTFACEBUTTONS";
var x_keyDropDownListValues = "DROPDOWNLISTVALUES";
var x_keyFontFaceText = "FONTFACETEXT";
var x_keyFontSizeButtons = "FONTSIZEBUTTONS";
var x_keyFontSizeText = "FONTSIZETEXT";
var x_keyFontColorButtons = "FONTCOLORBUTTONS";
var x_keyForeColor = "FORECOLOR";
var x_keyEmoticonButtons = "EMOTICONBUTTONS";
var x_keyContentArea = "CONTENTAREA";
var x_keyContentFrame = "CONTENTFRAME";
var x_keyDesignMode = "DESIGNMODE";
var x_keyUp = "up";
var x_keyDown = "down";
var x_keyToolbarButtonMouseOverCSSClass = "TOOLBARBUTTONMOUSEOVERCSSCLASS";
var x_keyToolbarButtonMouseDownCSSClass = "TOOLBARBUTTONMOUSEDOWNCSSCLASS";
var x_keyDropDownListMouseOverCSSClass = "DROPDOWNLISTMOUSEOVERCSSCLASS";
var x_keyDropDownListMouseDownCSSClass = "DROPDOWNLISTMOUSEDOWNCSSCLASS";
var x_keyContentFrameSelection = "CONTENTFRAMESELECTION";
var x_keyContentFrameSelectionType = "CONTENTFRAMESELECTIONTYPE";
var x_keyFilesRoot = "FILESROOT";
var x_keyEmoticonsRoot = "EMOTICONSROOT";
var x_keyToolbar1 = "TOOLBAR1";
var x_keyToolbar2 = "TOOLBAR2";
var x_keyDesign = "DESIGN";
var x_keyHTML = "HTML";
var x_keyPrefix = "PREFIX";
var x_keyLanguage = "LANGUAGE";
var x_keyDownloadSpellCheckerPrompt = "DOWNLOADSPELLCHECKERPROMPT";
var x_keyDownloadSpellCheckerError = "DOWNLOADSPELLCHECKERERROR";
var x_keySpellCheckComplete = "SPELLCHECKCOMPLETE";
var x_keySpellCheckerInstructionText = "SPELLCHECKERINSTRUCTIONTEXT";
var x_keyImagePrompt = "IMAGEPROMPT";
var x_keyImageLinkError = "IMAGELINKERROR";
var x_keySetDefaultFaultText = "SETDEFAULTFONTTEXT";
var x_keyMainDiv = "MAINDIV";
var x_keyLoadingDiv = "LOADINGDIV";
var x_keyWSpellObject = "WSPELLOBJECT";
var x_keySubmitText = "SUBMITTEXT";
var x_keyDefaultFontFace = "DEFAULTFONTFACE";
var x_keyDefaultFontSize = "DEFAULTFONTSIZE";
var x_keyDefaultFontColor = "DEFAULTFONTCOLOR";

var x_cookieLastFontFace = "LastFontFace";
var x_cookieLastFontSize = "LastFontSize";
var x_cookieLastFontColor = "LastFontColor";

var x_WSpellHTML = "<OBJECT hspace='0' vspace='0' border='0' classid='clsid:5220cb21-c88d-11cf-b347-00aa00a28331' VIEWASTEXT><PARAM NAME='LPKPath' VALUE='toastEdit/wspell.lpk'></OBJECT><OBJECT id='ToastEdit1WSpell' height='27' hspace='0' width='28' vspace='0' border='0' classid='clsid:707873c7-03bb-4f1a-95ec-4aaf1c3d463e' VIEWASTEXT><PARAM NAME='_Version' VALUE='65536'><PARAM NAME='_ExtentX' VALUE='450'><PARAM NAME='_ExtentY' VALUE='582'><PARAM NAME='_StockProps' VALUE='16'><PARAM NAME='Text' VALUE=''><PARAM NAME='ShowContext' VALUE='-1'><PARAM NAME='ShowDialog' VALUE='-1'><PARAM NAME='DialogLeft' VALUE='-1'><PARAM NAME='DialogTop' VALUE='-1'><PARAM NAME='AllowAccentedCaps' VALUE='1'><PARAM NAME='AutoCorrect' VALUE='-1'><PARAM NAME='CaseSensitive' VALUE='1'><PARAM NAME='CatchDoubledWords' VALUE='1'><PARAM NAME='CatchMixedCaseWords' VALUE='0'><PARAM NAME='CatchWordsWithDigits' VALUE='1'><PARAM NAME='IgnoreAllCapsWords' VALUE='0'><PARAM NAME='IgnoreCapitalizedWords' VALUE='0'><PARAM NAME='IgnoreDomainNames' VALUE='0'><PARAM NAME='IgnoreMixedCaseWords' VALUE='0'><PARAM NAME='IgnoreHTMLMarkups' VALUE='1'><PARAM NAME='IgnoreNonAlphaWords' VALUE='1'><PARAM NAME='IgnoreWordsWithDigits' VALUE='0'><PARAM NAME='MainDictionaryFiles' VALUE='ssceam.tlx,ssceam2.clx'><PARAM NAME='MaxSuggestions' VALUE='16'><PARAM NAME='MinSuggestionDepth' VALUE='40'><PARAM NAME='MinSuggestionScore' VALUE='50'><PARAM NAME='PhoneticSuggestions' VALUE='1'><PARAM NAME='SplitContractedWords' VALUE='0'><PARAM NAME='SplitHyphenatedWords' VALUE='1'><PARAM NAME='SplitWords' VALUE='0'><PARAM NAME='StripPossessives' VALUE='1'><PARAM NAME='SuggestionDepthIncrement' VALUE='10'><PARAM NAME='SuggestionScoreRange' VALUE='50'><PARAM NAME='SuggestSplitWords' VALUE='1'><PARAM NAME='TypographicalSuggestions' VALUE='1'><PARAM NAME='UserDictionaryFiles' VALUE='userdic.tlx'></OBJECT>";

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Startup Event
// This event is called during page load.  It sets all default styles
// and colors.
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function teStartup(x_objectArray) {
	var x_key;

	// Setup Toolbars
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyToolbars])	{
		if (x_objectArray[x_keyStyles][x_keyToolbarCSSClass] == "")	{
			x_objectArray[x_keyToolbars][x_key].style.borderRight = "threedshadow 1px solid";
			x_objectArray[x_keyToolbars][x_key].style.borderLeft = "threedlightshadow 1px solid";
			x_objectArray[x_keyToolbars][x_key].style.borderTop = "threedlightshadow 1px solid";
			x_objectArray[x_keyToolbars][x_key].style.borderBottom = "threedshadow 1px solid";
			x_objectArray[x_keyToolbars][x_key].style.backgroundColor = "threedface";
		}
		else {
			x_objectArray[x_keyToolbars][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarCSSClass];
		}
	}
	
	// Setup Toolbar Buttons
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyToolbarButtons]) {
		if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
			x_objectArray[x_keyToolbarButtons][x_key].style.width = "25px";
			x_objectArray[x_keyToolbarButtons][x_key].style.border = "threedface 1px solid";
		}
		else {
			x_objectArray[x_keyToolbarButtons][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
		}
		x_objectArray[x_keyToolbarButtons][x_key].align = "center";
		x_objectArray[x_keyToolbarButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, true);}
		x_objectArray[x_keyToolbarButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut,  true);}
		x_objectArray[x_keyToolbarButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, true);}
		x_objectArray[x_keyToolbarButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, true);}
	}
	
	if (x_objectArray[x_keyToolbarButtons][x_keyCut] != null) {x_objectArray[x_keyToolbarButtons][x_keyCut].onclick = function (evt) {te_ExecCommand(x_keyCut, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyCopy] != null) {x_objectArray[x_keyToolbarButtons][x_keyCopy].onclick = function (evt) {te_ExecCommand(x_keyCopy, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyPaste] != null) {x_objectArray[x_keyToolbarButtons][x_keyPaste].onclick = function (evt) {te_ExecCommand(x_keyPaste, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyBold] != null) {x_objectArray[x_keyToolbarButtons][x_keyBold].onclick = function (evt) {te_ExecCommand(x_keyBold, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyItalic] != null) {x_objectArray[x_keyToolbarButtons][x_keyItalic].onclick = function (evt) {te_ExecCommand(x_keyItalic, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyUnderline] != null) {x_objectArray[x_keyToolbarButtons][x_keyUnderline].onclick = function (evt) {te_ExecCommand(x_keyUnderline, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyCreateLink] != null) {x_objectArray[x_keyToolbarButtons][x_keyCreateLink].onclick = function (evt) {te_ExecCommand(x_keyCreateLink, x_objectArray, true, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyInsertImage] != null) {x_objectArray[x_keyToolbarButtons][x_keyInsertImage].onclick = function (evt) {te_ExecCommand(x_keyInsertImage, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyJustifyLeft] != null) {x_objectArray[x_keyToolbarButtons][x_keyJustifyLeft].onclick = function (evt) {te_ExecCommand(x_keyJustifyLeft, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyJustifyCenter] != null) {x_objectArray[x_keyToolbarButtons][x_keyJustifyCenter].onclick = function (evt) {te_ExecCommand(x_keyJustifyCenter, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyJustifyRight] != null) {x_objectArray[x_keyToolbarButtons][x_keyJustifyRight].onclick = function (evt) {te_ExecCommand(x_keyJustifyRight, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyInsertOrderedList] != null) {x_objectArray[x_keyToolbarButtons][x_keyInsertOrderedList].onclick = function (evt) {te_ExecCommand(x_keyInsertOrderedList, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyInsertUnorderedList] != null) {x_objectArray[x_keyToolbarButtons][x_keyInsertUnorderedList].onclick = function (evt) {te_ExecCommand(x_keyInsertUnorderedList, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyOutdent] != null) {x_objectArray[x_keyToolbarButtons][x_keyOutdent].onclick = function (evt) {te_ExecCommand(x_keyOutdent, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keyIndent] != null) {x_objectArray[x_keyToolbarButtons][x_keyIndent].onclick = function (evt) {te_ExecCommand(x_keyIndent, x_objectArray, false, null, false);}}
	if (x_objectArray[x_keyToolbarButtons][x_keySpellCheck] != null) {x_objectArray[x_keyToolbarButtons][x_keySpellCheck].onclick = function (evt) {te_CheckSpelling(x_objectArray);}}
	
	
	// Setup drop down buttons
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyDropDownButtons]) {
		if (x_objectArray[x_keyStyles][x_keyDropDownButtonCSSClass] == "") {
			x_objectArray[x_keyDropDownButtons][x_key].style.width = "35px";
			x_objectArray[x_keyDropDownButtons][x_key].style.border = "threedface 1px solid";
		}
		else {
			x_objectArray[x_keyDropDownButtons][x_key].className = x_objectArray[x_keyStyles][x_keyDropDownButtonCSSClass];
		}
		x_objectArray[x_keyDropDownButtons][x_key].style.position = "relative";
		x_objectArray[x_keyDropDownButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, true);}
		x_objectArray[x_keyDropDownButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut, true);}
		x_objectArray[x_keyDropDownButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, true);}
		x_objectArray[x_keyDropDownButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, true);}
		
	}
	
	if (x_objectArray[x_keyDropDownButtons][x_keyFontColors] != null) {x_objectArray[x_keyDropDownButtons][x_keyFontColors].onclick = function (evt) {te_ShowSubBar(x_objectArray, this, x_keyFontColorSubbar);}}
	if (x_objectArray[x_keyDropDownButtons][x_keyEmoticons] != null) {x_objectArray[x_keyDropDownButtons][x_keyEmoticons].onclick = function (evt) {te_ShowSubBar(x_objectArray, this, x_keyEmoticonSubbar);}}
	
	
	
	// Setup drop down lists
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyDropDownLists]) {
		if (x_objectArray[x_keyStyles][x_keyDropDownListCSSClass] == "") {
			x_objectArray[x_keyDropDownLists][x_key].style.border = "white 1px solid";
		}
		else {
			x_objectArray[x_keyDropDownLists][x_key].className = x_objectArray[x_keyStyles][x_keyDropDownListCSSClass];
		}		
		x_objectArray[x_keyDropDownLists][x_key].style.position = "relative";
		x_objectArray[x_keyDropDownLists][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyDropDownList, x_keyMouseOver, true);}
		x_objectArray[x_keyDropDownLists][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyDropDownList, x_keyMouseOut, true);}
		x_objectArray[x_keyDropDownLists][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyDropDownList, x_keyMouseDown, true);}
		x_objectArray[x_keyDropDownLists][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyDropDownList, x_keyMouseUp, true);}
	}

	if (x_objectArray[x_keyDropDownLists][x_keyFontFace] != null) {x_objectArray[x_keyDropDownLists][x_keyFontFace].onclick = function (evt) {te_ShowSubBar(x_objectArray, this, x_keyFontFaceSubbar);}}
	if (x_objectArray[x_keyDropDownLists][x_keyFontSize] != null) {x_objectArray[x_keyDropDownLists][x_keyFontSize].onclick = function (evt) {te_ShowSubBar(x_objectArray, this, x_keyFontSizeSubbar);}}
	
	// Setup sub Toolbars
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keySubToolbars]) {
		if (x_objectArray[x_keyStyles][x_keySubToolbarCSSClass] == "") {
			x_objectArray[x_keySubToolbars][x_key].style.border = "threeddarkshadow 1px solid";
			x_objectArray[x_keySubToolbars][x_key].style.backgroundColor = "threedface";
		}
		else {
			x_objectArray[x_keySubToolbars][x_key].className = x_objectArray[x_keyStyles][x_keySubToolbarCSSClass];
		}		
		x_objectArray[x_keySubToolbars][x_key].style.position = "absolute";
		x_objectArray[x_keySubToolbars][x_key].style.display = "none";
		x_objectArray[x_keySubToolbars][x_key].cellSpacing = "0";
		x_objectArray[x_keySubToolbars][x_key].cellPadding = "0";
	}		
	
	// Setup mode buttons
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyModeButtons]) {
		if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
			x_objectArray[x_keyModeButtons][x_key].style.fontSize = "12px";
			x_objectArray[x_keyModeButtons][x_key].style.fontFamily = "Verdana";
			x_objectArray[x_keyModeButtons][x_key].style.cursor = "default";
			x_objectArray[x_keyModeButtons][x_key].style.backgroundColor = "threedface";
			x_objectArray[x_keyModeButtons][x_key].style.border = "threedface 1px solid";
			x_objectArray[x_keyModeButtons][x_key].style.width = "50px";
		}
		else {
			x_objectArray[x_keyModeButtons][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
		}		
		x_objectArray[x_keyModeButtons][x_key].align = "center";
		x_objectArray[x_keyModeButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, false);}
		x_objectArray[x_keyModeButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut, false);}
		x_objectArray[x_keyModeButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, false);}
		x_objectArray[x_keyModeButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, false);}
	}
	x_objectArray[x_keyModeButtons][x_keyDesign].onclick = function (evt) {te_SetMode(true, x_objectArray);}
	x_objectArray[x_keyModeButtons][x_keyHTML].onclick = function (evt) {te_SetMode(false, x_objectArray);}
	
	// Setup font face drop down list
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyFontFaceButtons]) {
		if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
			x_objectArray[x_keyFontFaceButtons][x_key].style.backgroundColor = "threedface";
			x_objectArray[x_keyFontFaceButtons][x_key].style.height = "10px";
			x_objectArray[x_keyFontFaceButtons][x_key].style.border = "threedface 1px solid";
		}
		else {
			x_objectArray[x_keyFontFaceButtons][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
		}		
		x_objectArray[x_keyFontFaceButtons][x_key].align = "center";
		x_objectArray[x_keyFontFaceButtons][x_key].innerHTML = "<font face=\"" + x_objectArray[x_keyFontFaceButtons][x_key].fontFace + "\">" + x_objectArray[x_keyFontFaceButtons][x_key].fontFace + "</font>";
		x_objectArray[x_keyFontFaceButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, true);}
		x_objectArray[x_keyFontFaceButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut, true);}
		x_objectArray[x_keyFontFaceButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, true);}
		x_objectArray[x_keyFontFaceButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, true);}
		x_objectArray[x_keyFontFaceButtons][x_key].onclick = function (evt) {te_ExecCommand(x_keyFontName, x_objectArray, false, this.fontFace, false);x_objectArray[x_keyDropDownListValues][x_keyFontFaceText].innerHTML = this.fontFace;};
	}
	
	// Setup font size drop down list
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyFontSizeButtons]) {
		if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
			x_objectArray[x_keyFontSizeButtons][x_key].style.backgroundColor = "threedface";
			x_objectArray[x_keyFontSizeButtons][x_key].style.height = "10px";
			x_objectArray[x_keyFontSizeButtons][x_key].style.border = "threedface 1px solid";
		}
		else {
			x_objectArray[x_keyFontSizeButtons][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
		}		
		x_objectArray[x_keyFontSizeButtons][x_key].align = "center";
		x_objectArray[x_keyFontSizeButtons][x_key].innerHTML = "<font size=\"" + x_objectArray[x_keyFontSizeButtons][x_key].fontSize + "\">" + x_objectArray[x_keyFontSizeButtons][x_key].fontSize + "</font>";
		x_objectArray[x_keyFontSizeButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, true);}
		x_objectArray[x_keyFontSizeButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut, true);}
		x_objectArray[x_keyFontSizeButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, true);}
		x_objectArray[x_keyFontSizeButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, true);}
		x_objectArray[x_keyFontSizeButtons][x_key].onclick = function (evt) {te_ExecCommand(x_keyFontSize, x_objectArray, false, this.fontSize, false);x_objectArray[x_keyDropDownListValues][x_keyFontSizeText].innerHTML = this.fontSize;};
	}	

	// Setup font color buttons
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyFontColorButtons]) {
		if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
			x_objectArray[x_keyFontColorButtons][x_key].style.backgroundColor = "threedface";
			x_objectArray[x_keyFontColorButtons][x_key].style.width = "20px";
			x_objectArray[x_keyFontColorButtons][x_key].style.height = "20px";
			x_objectArray[x_keyFontColorButtons][x_key].style.border = "threedface 1px solid";
		}
		else {
			x_objectArray[x_keyFontColorButtons][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
		}		
		x_objectArray[x_keyFontColorButtons][x_key].align = "center";
		x_objectArray[x_keyFontColorButtons][x_key].innerHTML = "<table style=\"width:12px;height:12px;background-color:" + x_objectArray[x_keyFontColorButtons][x_key].fontColor + ";border: black 1px solid;\"><tr><td></td></tr></table>";
		x_objectArray[x_keyFontColorButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, true);}
		x_objectArray[x_keyFontColorButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut, true);}
		x_objectArray[x_keyFontColorButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, true);}
		x_objectArray[x_keyFontColorButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, true);}
		x_objectArray[x_keyFontColorButtons][x_key].onclick = function (evt) {te_ExecCommand(x_keyForeColor, x_objectArray, false, this.fontColor, false);}
	}
	
	// Setup emoticon buttons
	//---------------------------------------------------------------------------------------------
	for (x_key in x_objectArray[x_keyEmoticonButtons]) {
		if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
			x_objectArray[x_keyEmoticonButtons][x_key].style.backgroundColor = "threedface";
			x_objectArray[x_keyEmoticonButtons][x_key].style.width = "20px";
			x_objectArray[x_keyEmoticonButtons][x_key].style.height = "20px";
			x_objectArray[x_keyEmoticonButtons][x_key].style.border = "threedface 1px solid";
		}
		else {
			x_objectArray[x_keyEmoticonButtons][x_key].className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
		}		
		x_objectArray[x_keyEmoticonButtons][x_key].align = "center";
		x_objectArray[x_keyEmoticonButtons][x_key].innerHTML = "<img src=\"" + x_objectArray[x_keyEmoticonsRoot] + x_objectArray[x_keyEmoticonButtons][x_key].emoticonImage + ".gif\" alt=\"" + x_objectArray[x_keyEmoticonButtons][x_key].altText +"\">";
		x_objectArray[x_keyEmoticonButtons][x_key].onmouseover = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOver, true);}
		x_objectArray[x_keyEmoticonButtons][x_key].onmouseout = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseOut, true);}
		x_objectArray[x_keyEmoticonButtons][x_key].onmousedown = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseDown, true);}
		x_objectArray[x_keyEmoticonButtons][x_key].onmouseup = function (evt) {te_MouseEvent(this, x_objectArray, x_keyToolbarButton, x_keyMouseUp, true);}
		x_objectArray[x_keyEmoticonButtons][x_key].onclick = function (evt) {te_InsertEmoticon(x_objectArray, this.emoticonImage + ".gif");}
	}
	
	// Setup "Font Default" button
	//---------------------------------------------------------------------------------------------
	x_objectArray[x_keyDefaultFontButton].onclick = function (evt) {te_SetFontDefault(x_objectArray);}
	
	// Setup editable IFRAME
	//---------------------------------------------------------------------------------------------
	x_objectArray[x_keyContentFrame].document.designMode = "on";
	x_objectArray[x_keyContentFrame].document.open("text/html","replace");
	x_objectArray[x_keyContentFrame].document.write("<BODY></BODY>");
	x_objectArray[x_keyContentFrame].document.close();
	x_objectArray[x_keyContentFrame].document.body.innerText = x_objectArray[x_keySubmitText].value;
	
	x_objectArray[x_keyContentFrame].document.body.onbeforedeactivate = function (evt) {te_ContentFrameSaveSelection(x_objectArray);}
	x_objectArray[x_keyContentFrame].document.onkeyup = function (evt) {te_ContentFrameOnSelectionChange(x_objectArray);}
	x_objectArray[x_keyContentFrame].document.onmouseup = function (evt) {te_ContentFrameOnSelectionChange(x_objectArray);}
	
	te_SetMode(true, x_objectArray);
	
	x_objectArray[x_keyLoadingDiv].style.display = "none";
	x_objectArray[x_keyMainDiv].style.display = "";
	
	if (x_objectArray[x_keySubmitText].value == "") {
		if (te_ReadCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontFace) != "")
		{
			te_ExecCommand(x_keyFontName, x_objectArray, false, te_ReadCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontFace), false);
		}
	
		if (te_ReadCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontSize) != "")
		{
			te_ExecCommand(x_keyFontSize, x_objectArray, false, te_ReadCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontSize), false);
		}

		if (te_ReadCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontColor) != "")
		{
			te_ExecCommand(x_keyForeColor, x_objectArray, false, te_ReadCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontColor), false);
		}
	} else {
		x_objectArray[x_keyContentFrame].focus();
		te_UpdateToolbarToggles(x_objectArray);
	}
	
	if (te_ReadCookie("WSpellInstalled") == "true")
	{	
		document.getElementById("WSpellDiv").innerHTML = x_WSpellHTML;
		x_objectArray[x_keyWSpellObject] = document.getElementById("ToastEdit1WSpell");
	}
	
	x_objectArray[x_keyContentFrameSelection] = x_objectArray[x_keyContentFrame].document.body.createTextRange();
	x_objectArray[x_keyContentFrameSelectionType] = "Text";
		
}

function te_SetDefaultFont(x_objectArray) {

	x_objectArray[x_keyContentFrame].document.body.style.fontFamily = x_objectArray[x_keyDefaultFontFace];
	switch(x_objectArray[x_keyDefaultFontSize]) {
		case "1":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "xx-small";
			break;
		case "2":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "x-small";
			break;
		case "3":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "small";
			break;
		case "4":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "medium";
			break;
		case "5":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "large";
			break;
		case "6":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "x-large";
			break;
		case "7":
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "xx-large";
			break;	
	}
	x_objectArray[x_keyContentFrame].document.body.style.color = x_objectArray[x_keyDefaultFontColor];

}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Events
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function te_MouseEvent(x_object, x_objectArray, x_objectType, x_eventType, x_checkDesignMode) {
	if ((x_checkDesignMode && x_objectArray[x_keyDesignMode]) || !x_checkDesignMode) {
		if ((x_object.toggle != null && x_object.toggle == x_keyUp) || x_object.toggle == null)	{
			switch (x_objectType) {
				case x_keyToolbarButton:
					switch (x_eventType) {
						case x_keyMouseUp:
						case x_keyMouseOver:
							if (x_objectArray[x_keyStyles][x_keyToolbarButtonMouseOverCSSClass] == "") {
								x_object.style.backgroundColor = x_buttonMouseOverBackColor;
								x_object.style.borderColor = x_buttonBorderMouseOverBackColor;
							}
							else {
								x_object.className = x_objectArray[x_keyStyles][x_keyToolbarButtonMouseOverCSSClass];
							}
							break;
						case x_keyMouseDown:
							if (x_objectArray[x_keyStyles][x_keyToolbarButtonMouseDownCSSClass] == "") {
								x_object.style.backgroundColor = x_buttonMouseDownBackColor;
								x_object.style.borderColor = x_buttonBorderMouseDownBackColor;
							}	
							else {
								x_object.className = x_objectArray[x_keyStyles][x_keyToolbarButtonMouseDownCSSClass];
							}												
							break;
						case x_keyMouseOut:
							if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
								x_object.style.backgroundColor = x_buttonBackColor;
								x_object.style.borderColor = x_buttonBorderColor;
							}		
							else {
								x_object.className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
							}												
							break;						
					}
					break;
				
				case x_keyDropDownList:
					switch (x_eventType) {
						case x_keyMouseUp:
						case x_keyMouseOver:
							if (x_objectArray[x_keyStyles][x_keyDropDownListMouseOverCSSClass] == "") {
								x_object.style.backgroundColor = x_listMouseOverBackColor;
								x_object.style.borderColor = x_listBorderMouseOverBackColor;
							}
							else {
								x_object.className = x_objectArray[x_keyStyles][x_keyDropDownListMouseOverCSSClass];
							}								
							break;
						case x_keyMouseDown:
							if (x_objectArray[x_keyStyles][x_keyDropDownListMouseDownCSSClass] == "") {
								x_object.style.backgroundColor = x_listMouseDownBackColor;
								x_object.style.borderColor = x_listBorderMouseDownBackColor;
							}	
							else {
								x_object.className = x_objectArray[x_keyStyles][x_keyDropDownListMouseDownCSSClass];
							}													
							break;
						case x_keyMouseOut:
							if (x_objectArray[x_keyStyles][x_keyDropDownListCSSClass] == "") {
								x_object.style.backgroundColor = x_listBackColor;
								x_object.style.borderColor = x_listBorderColor;
							}		
							else {
								x_object.className = x_objectArray[x_keyStyles][x_keyDropDownListCSSClass];
							}												
							break;						
					}
					break;
			}
		}
	}
}

function te_ExecCommand(x_command, x_objectArray, x_showUI, x_option, x_toggleButton) {
	if (x_objectArray[x_keyDesignMode]) {
		te_CloseSubBars(x_objectArray);
		
		x_objectArray[x_keyContentFrame].focus();
		if (x_objectArray[x_keyContentFrameSelection] != null) {x_objectArray[x_keyContentFrameSelection].select();}
		
		switch (x_command) {
			case x_keyInsertImage:
			{
				do
				{
					x_option = prompt(x_objectArray[x_keyLanguage][x_keyImagePrompt], "http://");
					if (!x_option) return;
					if (x_option.substr(0, 7) != "http://")
					{
						alert(x_objectArray[x_keyLanguage][x_keyImageLinkError]);
					}
				}
				while(x_option.substr(0, 7) != "http://");
				break;
			}
			case x_keyFontName:
			{
				x_objectArray[x_cookieLastFontFace] = x_option;
				if (x_objectArray[x_keyContentFrameSelectionType] == "None") {
					x_objectArray[x_keyContentFrame].document.execCommand(x_keyFontSize, false, x_objectArray[x_cookieLastFontSize]);
					x_objectArray[x_keyContentFrame].document.execCommand(x_keyForeColor, false, x_objectArray[x_cookieLastFontColor]);
				}
				break;
			}

			case x_keyFontSize:
			{
				x_objectArray[x_cookieLastFontSize] = x_option;
				if (x_objectArray[x_keyContentFrameSelectionType] == "None") {
					x_objectArray[x_keyContentFrame].document.execCommand(x_keyFontName, false, x_objectArray[x_cookieLastFontFace]);
					x_objectArray[x_keyContentFrame].document.execCommand(x_keyForeColor, false, x_objectArray[x_cookieLastFontColor]);
				}
				break;
			}
			
			case x_keyForeColor:
			{
				x_objectArray[x_cookieLastFontColor] = x_option;
				if (x_objectArray[x_keyContentFrameSelectionType] == "None") {
					x_objectArray[x_keyContentFrame].document.execCommand(x_keyFontName, false, x_objectArray[x_cookieLastFontFace]);
					x_objectArray[x_keyContentFrame].document.execCommand(x_keyFontSize, false, x_objectArray[x_cookieLastFontSize]);
				}
				break;
			}						
		}
		
		x_objectArray[x_keyContentFrame].document.execCommand(x_command, x_showUI, x_option);

		te_UpdateToolbarToggles(x_objectArray);
	}
}

function te_SetFontDefault(x_objectArray) {

	te_SetCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontFace, x_objectArray[x_cookieLastFontFace], 30);
	te_SetCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontSize, x_objectArray[x_cookieLastFontSize], 30);
	te_SetCookie(x_objectArray[x_keyPrefix] + x_cookieLastFontColor, x_objectArray[x_cookieLastFontColor], 30);
	alert(x_objectArray[x_keyLanguage][x_keySetDefaultFaultText]);

}

function te_ShowSubBar(x_objectArray, x_dropDownButton, x_subBar) {
	if (x_objectArray[x_keyDesignMode]) {
		if (x_dropDownButton.toggle == x_keyUp) {
			te_CloseSubBars(x_objectArray);

			if (x_subBar == x_keyFontFaceSubbar || x_subBar == x_keyFontSizeSubbar)	{
				te_ToggleDropDownList(x_dropDownButton, x_keyDown, x_objectArray);
			}
			else {
				te_ToggleDropDownButton(x_dropDownButton, x_keyDown, x_objectArray);
			}
			
			x_dropDownButton.style.zIndex = "1";

			x_objectArray[x_keySubToolbars][x_subBar].style.left = x_dropDownButton.offsetLeft;
			x_objectArray[x_keySubToolbars][x_subBar].style.top = x_dropDownButton.offsetTop + x_dropDownButton.offsetHeight - 1;
			x_objectArray[x_keySubToolbars][x_subBar].style.display = "block";
		}
		else {
			te_CloseSubBars(x_objectArray);
		}
	}
}

function te_InsertEmoticon(x_objectArray, x_emoticonFile) {
	if (x_objectArray[x_keyDesignMode]) {
		te_CloseSubBars(x_objectArray);
		
		if (x_objectArray[x_keyContentFrameSelection] != null) {
			x_objectArray[x_keyContentFrameSelection].select();
		}
		
		if (x_objectArray[x_keyContentFrameSelectionType] == "Control") {
			x_objectArray[x_keyContentFrameSelection].item(0).outerHTML = "<img border=\"0\" src=\"" + x_objectArray[x_keyEmoticonsRoot] + x_emoticonFile + "\">";
		}
		else {
			x_objectArray[x_keyContentFrameSelection].pasteHTML("<img border=\"0\" src=\"" + x_objectArray[x_keyEmoticonsRoot] + x_emoticonFile + "\">");
		}
	}
}

function te_SetMode(x_mode, x_objectArray) {
	if (x_objectArray[x_keyDesignMode] != x_mode) {
		te_CloseSubBars(x_objectArray);
		
		x_objectArray[x_keyDesignMode] = x_mode;
		
		var x_sTmp;
		if (x_mode)	{
			x_sTmp = x_objectArray[x_keyContentFrame].document.body.innerText;
			x_objectArray[x_keyContentFrame].document.body.innerHTML = x_sTmp;
			x_objectArray[x_keyToolbars][x_keyToolbar1].style.filter = "";
			x_objectArray[x_keyToolbars][x_keyToolbar2].style.filter = "";
			te_ToggleToolbarButton(x_objectArray[x_keyModeButtons][x_keyDesign], x_keyDown, x_objectArray);
			te_ToggleToolbarButton(x_objectArray[x_keyModeButtons][x_keyHTML], x_keyUp, x_objectArray);
			te_SetDefaultFont(x_objectArray);
		}
		else {
			x_sTmp = x_objectArray[x_keyContentFrame].document.body.innerHTML;
			x_objectArray[x_keyContentFrame].document.body.innerText = x_sTmp;
			x_objectArray[x_keyToolbars][x_keyToolbar1].style.filter = "gray";
			x_objectArray[x_keyToolbars][x_keyToolbar2].style.filter = "gray";
			te_ToggleToolbarButton(x_objectArray[x_keyModeButtons][x_keyDesign], x_keyUp, x_objectArray);
			te_ToggleToolbarButton(x_objectArray[x_keyModeButtons][x_keyHTML], x_keyDown, x_objectArray);	
			x_objectArray[x_keyContentFrame].document.body.style.fontFamily = "Courier";
			x_objectArray[x_keyContentFrame].document.body.style.fontSize = "x-small";
			x_objectArray[x_keyContentFrame].document.body.style.color = x_objectArray[x_keyDefaultFontColor];						
		}
		
		te_UpdateToolbarToggles(x_objectArray);
	}
}

function te_CheckSpelling(x_objectArray) {
	if (x_objectArray[x_keyDesignMode]) {	
		te_CloseSubBars(x_objectArray);
		
		try {
			x_objectArray[x_keyWSpellObject].TestWord("test");
		}
		catch(e1) {
			if (confirm(x_objectArray[x_keyLanguage][x_keyDownloadSpellCheckerPrompt]))	{
				showModalDialog(x_objectArray[x_keyFilesRoot] + "\\downloadWSpell.html", x_objectArray[x_keyLanguage][x_keySpellCheckerInstructionText], "dialogHeight:400px;dialogWidth:300px;center:yes;help:no;resizable:no;scroll:yes;status:yes;");
				document.getElementById("WSpellDiv").innerHTML = x_WSpellHTML;
				x_objectArray[x_keyWSpellObject] = document.getElementById(x_objectArray[x_keyPrefix] + "WSpell");
				te_SetCookie("WSpellInstalled", "true", 30);
			}
			else {
				return;
			}
		}

		try	{
			x_objectArray[x_keyWSpellObject].TestWord("test");
			x_objectArray[x_keyWSpellObject].Text = x_objectArray[x_keyContentFrame].document.body.innerHTML;
			x_objectArray[x_keyWSpellObject].Start();
			x_objectArray[x_keyContentFrame].document.body.innerHTML = x_objectArray[x_keyWSpellObject].Text;
			alert(x_objectArray[x_keyLanguage][x_keySpellCheckComplete]);
		}
		catch(e2) {
			alert(x_objectArray[x_keyLanguage][x_keyDownloadSpellCheckerError]);
		}
	}
}

function te_ContentFrameSaveSelection(x_objectArray) {
	x_objectArray[x_keyContentFrameSelectionType] = x_objectArray[x_keyContentFrame].document.selection.type;
	x_objectArray[x_keyContentFrameSelection] = x_objectArray[x_keyContentFrame].document.selection.createRange();
}

function te_ContentFrameOnSelectionChange(x_objectArray) {
	if (x_windowTimer != null) {window.clearTimeout(x_windowTimer);}
	x_windowTimer = window.setTimeout("te_UpdateToolbarToggles(" + x_objectArray[x_keyPrefix] + "Objects);", 250);
}

function teOnSubmit(x_objectArray) {
	if (x_objectArray[x_keyDesignMode]) {
		x_objectArray[x_keySubmitText].value = x_objectArray[x_keyContentFrame].document.body.innerHTML;
	}
	else {
		x_objectArray[x_keySubmitText].value = x_objectArray[x_keyContentFrame].document.body.innerText;
	}
	x_objectArray[x_keySubmitText].value = "<font face=\"" + x_objectArray[x_keyDefaultFontFace] + "\" size=\"" + x_objectArray[x_keyDefaultFontSize] + "\" color=\"" + x_objectArray[x_keyDefaultFontColor] + "\">" + x_objectArray[x_keySubmitText].value + "</font>";
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Main functions
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function te_UpdateToolbarToggles(x_objectArray) {
	if (x_objectArray[x_keyDesignMode]) {
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyBold)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyBold], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyBold], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyItalic)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyItalic], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyItalic], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyUnderline)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyUnderline], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyUnderline], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyJustifyLeft)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyJustifyLeft], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyJustifyLeft], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyJustifyCenter)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyJustifyCenter], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyJustifyCenter], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyJustifyRight)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyJustifyRight], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyJustifyRight], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyInsertOrderedList)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyInsertOrderedList], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyInsertOrderedList], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		if (x_objectArray[x_keyContentFrame].document.queryCommandState(x_keyInsertUnorderedList)) {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyInsertUnorderedList], x_keyDown, x_objectArray, x_keyToolbarButtons);} else {te_ToggleToolbarButton(x_objectArray[x_keyToolbarButtons][x_keyInsertUnorderedList], x_keyUp, x_objectArray, x_keyToolbarButtons);}
		
		var x_fontFace = x_objectArray[x_keyContentFrame].document.queryCommandValue(x_keyFontName);
		if (x_fontFace != "" && x_fontFace != null) {
			x_objectArray[x_keyDropDownListValues][x_keyFontFaceText].innerHTML = x_fontFace;
		}
		
		var x_fontSize = x_objectArray[x_keyContentFrame].document.queryCommandValue(x_keyFontSize);
		if (x_fontSize != "" && x_fontSize != null) {
			x_objectArray[x_keyDropDownListValues][x_keyFontSizeText].innerHTML = x_fontSize;
		}
	}
}

function te_ToggleToolbarButton(x_button, x_toggle, x_objectArray) {
	if (x_button != null) {
		x_button.toggle = x_toggle;
		if (x_toggle == x_keyUp) {
			if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
				x_button.style.backgroundColor = x_buttonBackColor;
				x_button.style.borderColor = x_buttonBorderColor;
			}		
			else {
				x_button.className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
			}
		}
		else {
			if (x_objectArray[x_keyStyles][x_keyToolbarButtonMouseOverCSSClass] == "") {
				x_button.style.backgroundColor = x_buttonMouseOverBackColor;
				x_button.style.borderColor = x_buttonBorderMouseOverBackColor;
			}
			else {
				x_button.className = x_objectArray[x_keyStyles][x_keyToolbarButtonMouseOverCSSClass];
			}	
		}
	}
}

function te_ToggleDropDownButton(x_button, x_toggle, x_objectArray) {
	if (x_button != null) {
		x_button.toggle = x_toggle;
		if (x_toggle == x_keyUp) {
			if (x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass] == "") {
				x_button.style.backgroundColor = x_buttonBackColor;
				x_button.style.borderColor = x_buttonBorderColor;
				x_button.style.borderBottomWidth = "1px";	
			}		
			else {
				x_button.className = x_objectArray[x_keyStyles][x_keyToolbarButtonCSSClass];
			}				
		}
		else {
			if (x_objectArray[x_keyStyles][x_keyToolbarButtonMouseOverCSSClass] == "") {
				x_button.style.backgroundColor = x_buttonMouseOverBackColor;
				x_button.style.borderColor = x_buttonBorderMouseOverBackColor;
				x_button.style.borderBottomWidth = "0px";	
			}
			else {
				x_button.className = x_objectArray[x_keyStyles][x_keyToolbarButtonMouseOverCSSClass];
			}
		}
	}
}

function te_ToggleDropDownList(x_button, x_toggle, x_objectArray) {
	if (x_button != null) {
		x_button.toggle = x_toggle;
		if (x_toggle == x_keyUp) {
			if (x_objectArray[x_keyStyles][x_keyDropDownListCSSClass] == "") {
				x_button.style.backgroundColor = x_listBackColor;
				x_button.style.borderColor = x_listBorderColor;
				x_button.style.borderBottomWidth = "1px";	
			}		
			else {
				x_button.className = x_objectArray[x_keyStyles][x_keyDropDownListCSSClass];
			}				
		}
		else {
			if (x_objectArray[x_keyStyles][x_keyDropDownListMouseOverCSSClass] == "") {
				x_button.style.backgroundColor = x_listMouseOverBackColor;
				x_button.style.borderColor = x_listBorderMouseOverBackColor;
				x_button.style.borderBottomWidth = "0px";
			}
			else {
				x_button.className = x_objectArray[x_keyStyles][x_keyDropDownListMouseOverCSSClass];
			}
		}
	}
}

function te_CloseSubBars(x_objectArray) {
	for (x_key in x_objectArray[x_keyDropDownButtons]) {
		te_ToggleDropDownButton(x_objectArray[x_keyDropDownButtons][x_key], x_keyUp, x_objectArray);
		x_objectArray[x_keyDropDownButtons][x_key].style.zIndex = "0";
	}
	
	for (x_key in x_objectArray[x_keyDropDownLists]) {
		te_ToggleDropDownList(x_objectArray[x_keyDropDownLists][x_key], x_keyUp, x_objectArray);
		x_objectArray[x_keyDropDownLists][x_key].style.zIndex = "0";
	}
		
	for (x_key in x_objectArray[x_keySubToolbars]) {
		x_objectArray[x_keySubToolbars][x_key].style.display = "none";
	}	
}

function te_SetCookie(x_cookieName, x_cookieValue, x_nDays) {
	var x_today = new Date();
	var x_expire = new Date();
	if (x_nDays == null || x_nDays == 0) x_nDays = 1;
	x_expire.setTime(x_today.getTime() + 3600000 * 24 * x_nDays);
	document.cookie = x_cookieName + "=" + escape(x_cookieValue) + ";expires=" + x_expire.toGMTString();
}

function te_ReadCookie(x_cookieName) {
	var x_theCookie= "" + document.cookie;
	var x_ind = x_theCookie.indexOf(x_cookieName);
	if (x_ind == -1 || x_cookieName == "") return ""; 
	var x_ind1 = x_theCookie.indexOf(';', x_ind);
	if (x_ind1 == -1) x_ind1 = x_theCookie.length; 
	return unescape(x_theCookie.substring(x_ind + x_cookieName.length + 1, x_ind1));
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
