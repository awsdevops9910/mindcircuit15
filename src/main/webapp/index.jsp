


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<script type="text/Javascript" language="Javascript" src="../../core/scripts/pop_up_funcs.js"></script>

	<script type="text/javascript" language="javascript">var is = new Is();
var popup = null;

// JScript File


function Body_OnLoad(TimedOut, lockCorpName, formName)
{
	if (TimedOut == "True")
		showTimeoutMessage();
	else if (lockCorpName == "False")
		document.forms[formName].corpBox.focus();
	else
		document.forms[formName].userNameBox.focus();

	var elFlash = document.getElementById('loginpage-flash');
	if (elFlash !== undefined) elFlash = elFlash.getElementsByTagName('embed');
    if (elFlash !== undefined) elFlash[0].setAttribute("tabindex", "-1");
}

function Is()
{
	var agt=navigator.userAgent.toLowerCase();
	this.nav=((agt.indexOf('mozilla')!=-1)&&(agt.indexOf('spoofer')==-1)&&(agt.indexOf('compatible')==-1)
	&&(agt.indexOf('opera')==-1)&&(agt.indexOf('webtv')==-1));
	this.ie=(agt.indexOf("msie")!=-1);

	var appVersion = agt.substr(agt.indexOf("/")+1,agt.length);
	this.major = parseInt(appVersion);
	this.minor = parseFloat(appVersion);

	this.nav4up = (this.nav && (this.major >= 4));
	this.ie4up  = (this.ie  && (this.major >= 4));
	this.ie5  = (this.ie && (this.major == 4) && (agt.indexOf("msie 5.0")!=-1));
	this.ie5up  = (this.ie  && !this.ie3 && !this.ie4);
}

function showTimeoutMessage()
{
	if ( is.ie5up )
	{
		popup=window.showModalDialog("common/SessionExpired.htm",null,"dialogWidth:415px;dialogHeight:200px;center:1;scroll:0;help:0;status:0");
	}
	else
	{
		if ( is.nav4up )
			newWindow("common/SessionExpired.htm",popup,
				"location=0,toolbar=0,directories=0,"+						// window features
				"menubar=0,scrollbars=0,resizable=0,"+
				"width=415,height=175");
		else
			newWindow("common/SessionExpired.htm",popup,
				"location=0,toolbar=0,directories=0,"+						// window features
				"menubar=0,scrollbars=0,resizable=0,"+
				"width=410,height=175");
	}	
}

function newWindow(theURL,winName,features) 
{
	if(popup!=null && !popup.closed) { popup.location.href=theURL; popup.focus(); }
	else { popup=window.open(theURL,winName,features); popup.focus(); }
}
function MM_preloadImages() //v3.0
{ 
	var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
	var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
	if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() //v3.0
{ 
	var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) //v4.0
{ 
	var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
		d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	if(!x && document.getElementById) x=document.getElementById(n); return x;
}
function MM_swapImage() //v3.0
{ 
	var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
	if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}</script>
    <script type="text/javascript" language="javascript" src="/client/Core/scripts/jquery/jquery-3.6.0.min.js?hsh=1599186078"></script>

	<script language="javascript">
	    if (top != self)
	        top.location = self.location;
	</script>
    <title>American Express</title>

<style type="text/css">
.main {
  color: #4d4f53;
  font-family: Arial,sans-serif;
  font-size: 12px;
  margin: 30px auto 10px;
  width: 600px;
}
.grayBlock {
	background-color: rgb(229,229,228);
	padding: 20px 10px;
	margin-top: 10px;
	border-top: solid #ADAFAF 1px;
	border-bottom: solid #ADAFAF 1px;
	margin-bottom: 60px;
}
a {
	color: #009BBB;
	text-decoration: none;
}
input[type=text], input[type=password] {
	width: 100%;
	color: #ADAFAF;
	padding-left: 5px;
}
td {
	padding: 4px 4px 4px 0;
}
h3, h2 {
	font-family: "BentonSans Light", Arial, sans-serif;
	font-weight: normal;
	color: #002663;
	font-size: 24px;
	margin: 12px 0;
}
h2 {
	font-size: 32px;
}
i {
	margin: 0 8px;
	color: #8B8D8E;
	font-style: normal;
	cursor: default;
}
table {
	width: 100%;
}
#wordmark {
	margin-bottom: 17px
}
.clear {
    clear: both;
}
.cropbox {
  left: 0;
  position: fixed;
  bottom: 0;
}
#username, #password {
  position: relative;
}
.errorSign {
  position: absolute;
  right: -12px;
  top: 18px;
}
.error {
  color: #ff0000;
  position: absolute;
  top: -34px;
  width: 480px;
}
.LoginBtn {
  background: #8b8d8e;
  border: 1px solid #4d4f53;
  border-radius: 3px;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  font-family: Arial;
  font-size: 12px;
  margin: 3px 0 7px 14px;
  padding: 3px 7px;
}
.LoginBtn:hover {
	color: #FFFFFF;
	background-color: #4D4F53;
	text-decoration: none;
}
input[type=button], input[type=submit] {
	display: inline-block;
	color: #FFF;
	text-decoration: none;
	padding: 1px 5px;
	font-size: 12px;
	line-height: 1.5;
	border-radius: 3px;
	margin: 7px 0 7px 14px;
	background-color: #8B8D8E;
	border: 1px solid #4D4F53;
	text-align: center;
	width: auto;
	cursor: pointer;
}
input[type=button]:hover, input[type=submit]:hover {
	color: #FFFFFF;
	background-color: #4D4F53;
	text-decoration: none;
}
</style>
        
</head>
<body id="body" onload="Body_OnLoad(&#39;False&#39;,&#39;True&#39;, &#39;defaultForm&#39;);">
    <form name="defaultForm" method="post" action="./default2.aspx" id="defaultForm" autocomplete="off">
<div>
<input type="hidden" name="resWidth" id="resWidth" value="" />
<input type="hidden" name="resHeight" id="resHeight" value="" />
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="dT1cdvDmRHGIpxEPQyP5vEb7q8WX80XoYv5xc2bShU0GwzE3M6RaG02ZmRXCn9xOsJhdtbIdc20ibO8IBnAPWSlx9Jo=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['defaultForm'];
if (!theForm) {
    theForm = document.defaultForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/client/WebResource.axd?d=pynGkmcFUV13He1Qd6_TZHxccEwv5uzrzlMX4D4SS-bCxI7MzEKbjx5rY82npiqARxepQw2&amp;t=638459572569584809" type="text/javascript"></script>


<script src="/client/Core/scripts/jquery/jquery-3.6.0.min.js?hsh=1599186078" type="text/javascript"></script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D93AA332" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
</div>
        <div class="main"> <img src="images/Amex LOGO.png" alt="American Express" id="wordmark" />
          <h2>Guests & Partners</h2>
          <table border="0" class="grayBlock">
            <tr>
              <td width="245" valign="middle" id="username">
                  <p class="error"></p>
                  <input name="userNameBox" type="text" id="userNameBox" tabindex="1" class="input" placeholder="User Name" />

                    
                    <div class="clear"></div>
              </td>
              <td width="7">&nbsp;</td>
              <td width="237" valign="middle" id="password">
                    <input name="passWordBox" type="password" id="passWordBox" tabindex="2" class="input" placeholder="Password" />
                    
                                        
                    <div class="clear"></div>
              </td>
              <td width="73" align="right">
                  <input type="submit" name="LoginBtn" value="Login" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;LoginBtn&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="LoginBtn" tabindex="3" />                  
              </td>
            </tr>
            <tr>
              <td colspan="4" valign="top" style="font-size:11px"><a href="../../ForgotPasswordAuthentication.aspx?corpName=amex">Forgot User Name or Password?</a></td>
            </tr>
          </table>
          <h3>Colleagues & Contractors </h3>
          <table border="0">
            <tr>
              <td valign="left"><span>Login here if you are using American Express equipment & network </span>
               <a class='nostyle' href='https://amex.csod.com'>
    <span class='LoginBtn'>Login</span>
</a></td>
            </tr>
          </table>
            <br /><br />

          

          
        </div>

        <div class="cropbox">
                
        </div>
    
<script type="text/javascript">document.getElementById('resWidth').value = window.screen.width;document.getElementById('resHeight').value = window.screen.height;</script>
<script type="text/javascript">
//<![CDATA[
var htmlElem = document.body.parentNode;
htmlElem.setAttribute('lang','en');
if (top != self) top.location = self.location;//]]>
</script>
</form>  
    
    <script type="text/javascript" language="javascript">       
        var custError = $(".error").text();
        if (custError.indexOf('This account has been temporarily disabled due to too many invalid login attempts. Please try again in 10 min.') > -1 || custError.indexOf('temporarily disabled') > -1) {
            $('.error').css({"top": "-32px"});
        }

        function onClickRedirect() {
            var url = document.location.href;
            if (url != null && url.length > 0) {
                url = url.toLowerCase();
                if (url.indexOf('-stg') > -1) {
                    // things for stage environment                                                    
                    window.location.href = 'https://network.americanexpress.com/globalnetwork/sign-in/';
                }
                else if (url.indexOf('-pilot') > -1) {
                    // things for pilot environment
                    window.location.href = 'https://qnetwork.americanexpress.com/globalnetwork/sign-in/';
                }
                else {
                    // things for Live environment
                    window.location.href = 'https://network.americanexpress.com/globalnetwork/sign-in/';
                }
            }

            
        }
    </script>      
</body>
</html>
