<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
strSelectedMenu = "SuperSearch"
%>
	
</head>
<body vlink="blue">
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<input type="hidden" name="mode">
<input type="hidden" name="category">
<input type="hidden" name="oldcategory">
<input type="hidden" name="newfile">
<input type="hidden" name="newfiledesc">
<input type="hidden" name="mygrouponly">
<input type="hidden" name="fileidtodelete">
<input type="hidden" name="currentfileid">
<img src="images/cap_supersearch.gif"><br />
    <small><i>Search across over 10,000 articles within the top publications in our profession at once here.</i></small>
<%
Dim cx
Dim siteA

siteA = LCase(Request.ServerVariables("SCRIPT_NAME"))
siteA = Replace(Left(siteA, InStr(2, siteA, "/") - 1), "/", "")
Select Case SiteA
    Case "dimasummit"
        cx = "014298924308056227199:odyawn7relu"
    Case "summits"
        cx = "014298924308056227199:odyawn7relu"
    Case "cfosummit"
        cx = "014298924308056227199:shsrhk2nkm0"
	Case "summits" 
        cx = "014298924308056227199:odyawn7relu"
    Case "hrsummit"
        cx = "014298924308056227199:odyawn7relu"
    Case "ciosummit"
        cx = "014298924308056227199:tgcst74tink"
    Case "thecoosummit"
        cx = "014298924308056227199:fk0ys3rc99s"
    Case "corpdevsummit"
        cx = "014298924308056227199:ys_yy92rflu"
    Case "theengineeringsummit"
        cx = "014298924308056227199:cxuohmxviiq"
    Case "healthcareadminsummit"
        cx = "014298924308056227199:quohegvnmqw"
    Case "customerservicesummit"
        cx = "014298924308056227199:1gk4fdxlbqu"
    Case "corporatecounselsummit"
        cx = "014298924308056227199:4mve663evc0"
    Case "logisticsmanagementsummit"
        cx = "014298924308056227199:ubvmiwwoqsc"
    Case "thecmosummit"
        cx = "014298924308056227199:5kl1fu3tgla"
    Case "theprocurementsummit"
        cx = "014298924308056227199:1mgjkalptkg"
    Case "productdevsummit"
        cx = "014298924308056227199:cjdy94cybgo"
    Case "projectmanagementsummit"
        cx = "014298924308056227199:klzdj6mnow0"
    Case "publicrelationssummit"
        cx = "014298924308056227199:medqq-d5gcu"
    Case "qualitymanagementsummit"
        cx = "014298924308056227199:lbjcvsnrhyg"
    Case "riskmanagementsummit"
        cx = "014298924308056227199:yyd0pzjtqsu"
    Case "safetymanagementsummit"
        cx = "014298924308056227199:mdkdbpsbwne"
    Case "thesalessummit"
        cx = "014298924308056227199:blk6zwoagim"
    Case "trainingsummit"
        cx = "014298924308056227199:doixkm1xlmo"
    Case "csosummit"
        cx = "014298924308056227199:blk6zwoagim"
    Case "theoperationssummit"
        cx = "014298924308056227199:fk0ys3rc99s"
    Case "womenleaders"
        cx = "014298924308056227199:cxuohmxviiq"
End Select
     %>
    <script>
  (function() {
    var cx = '<%=cx%>';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
        '//www.google.com/cse/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>

<gcse:search></gcse:search>
<!--#include file="includes/formvars.asp"--></form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->