<!--#include file="includes/aspheader.asp"-->
<!--#include file="includes/DBOpen.asp"-->
<!--#include file="includes/usersecurity.asp"-->
<!--#include file="includes/lm_misc.asp"-->
<%
strSelectedMenu = "AudioBooks"
%>

    <script type="text/javascript">
        function fnClick(id) {
            fnHideAll();
            document.all["div" + id].style.display = "block";
        }

        function fnHideAll()
        {
            for (var i = 1; i <= 21; i++)
                document.all["div" + i].style.display = "none";
        }

        function fnShowAll() {
            for (var i = 1; i <= 21; i++)
                document.all["div" + i].style.display = "block";
        }

        function showInstructions()
        {
            document.all["divInstructions"].style.display = "block";
        }
    </script>
    
	
</head>
<body vlink="blue">

    
<!--#include file="includes/header.asp"-->
<form name="frmMain" method="POST">
<input type="hidden" name="mode">
<img src="images/cap_AudioBooks.gif"> 
<!--#include file="includes/formvars.asp"-->
<br />
<font face="verdana,arial,universe,univers" size="2">
    <i>You may listen to these classic audiobooks at no charge (included). You can also listen on your smartphone while commuting (<a href="javascript:showInstructions();">instructions</a>).</i>
<div id="divInstructions" style="display: none;">
<br>
<b>To Listen while Commuting.</b><br>
1. Quickest Way: Login using any smartphone then click any audiobook, OR<br>
2. Alternatively if your cell service is poor: <br>
&nbsp; &nbsp; &nbsp; - For iPhone/iPod: Right click, SaveAs, then in iTunes click File, AddFileToLibrary, then sync.<br>
&nbsp; &nbsp; &nbsp; - For Android: Right click, SaveAs, then in Explorer drag the file to your phone's SD card.<br>
&nbsp; &nbsp; &nbsp; - For WindowsPhone: Right click, SaveAs, then in Explorer drag the file to your phone's SD card.<br>
&nbsp; &nbsp; &nbsp; - For Blackberry: Right click, SaveAs, then use <a target="_blank" href="http://na.blackberry.com/eng/services/media/mediasync.jsp">BB Media Sync</a> to transfer.
</div>
<br>
<br>
<b>Click a Category:</b>

<div class="buttons">
<a  class="showSingle" target="1"><button onclick="fnClick(1);return false;">Biographies & Companies</button></a>
<a  class="showSingle" target="2"><button onclick="fnClick(2);return false;">Change Management</button></a>
<a  class="showSingle" target="3"><button onclick="fnClick(3);return false;">Communication</button></a>
<a  class="showSingle" target="4"><button onclick="fnClick(4);return false;">Customer Focus</button></a>
<a  class="showSingle" target="5"><button onclick="fnClick(5);return false;">Diversity</button></a>
<a  class="showSingle" target="6"><button onclick="fnClick(6);return false;">Economics & Finance</button></a>
<a  class="showSingle" target="7"><button onclick="fnClick(7);return false;">Entrepreneurship</button></a>
<a  class="showSingle" target="8"><button onclick="fnClick(8);return false;">Global Business</button></a>
<a  class="showSingle" target="9"><button onclick="fnClick(9);return false;">Human Resources</button></a>
<a  class="showSingle" target="10"><button onclick="fnClick(10);return false;">Innovation</button></a>
<a  class="showSingle" target="11"><button onclick="fnClick(11);return false;">Leadership</button></a>
<a  class="showSingle" target="12"><button onclick="fnClick(12);return false;">Management</button></a>
<a  class="showSingle" target="13"><button onclick="fnClick(13);return false;">Marketing</button></a>
<a  class="showSingle" target="14"><button onclick="fnClick(14);return false;">Personal Growth</button></a>
<a  class="showSingle" target="15"><button onclick="fnClick(15);return false;">Productivity</button></a>
<a  class="showSingle" target="16"><button onclick="fnClick(16);return false;">Relationships</button></a>
<a  class="showSingle" target="17"><button onclick="fnClick(17);return false;">Social Responsibility</button></a>
<a  class="showSingle" target="18"><button onclick="fnClick(18);return false;">Strategy</button></a>
<a  class="showSingle" target="19"><button onclick="fnClick(19);return false;">Teams</button></a>
<a  class="showSingle" target="20"><button onclick="fnClick(20);return false;">Technology</button></a>
<a  class="showSingle" target="21"><button onclick="fnClick(21);return false;">Training & Dev</button></a>

<a  id="showall"><button onclick="fnShowAll();return false;">All Lists</button></a>
</div>

<br>
<br>

<div id="div1" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/46.mp3'><b>A Traitor to His Class:</b></a> Robert A. G. Monks and the Battle to Change Corporate America (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/418.mp3'><b>Absolutely Positively Overnight! Wall Street's Darling Inside and Up Close:</b></a>  (St. Luke's Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/33.mp3'><b>Amazon.com Get Big Fast:</b></a> Inside the Revolutionary Business Model That Changed the World (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/647.mp3'><b>American Express:</b></a> The Unofficial History of the People Who Built the Great Financial Empire (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/43.mp3'><b>aol.com:</b></a> How Steve Case Beat Bill Gates, Nailed the Netheads, and Made Millions in the War for the Web (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/101.mp3'><b>Apple:</b></a> The Inside Story of Intrigue, Egomania, and Business Blunders (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/284.mp3'><b>Barons of the Sky:</b></a> From Early Flight to Strategic Warfare: The Story of the America Aerospace Industry (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/286.mp3'><b>Beating the Odds:</b></a> The Untold Story Behind the Rise of ABC—The Stars, Struggles and Egos That Transformed Network Television (Charles Scribner’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/412.mp3'><b>Beatrice:</b></a> From Buildup Through Breakup (The University of Illinois Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/194.mp3'><b>Ben & Jerry’s:</b></a> The Inside Scoop - How Two Guys Built a Business With a Social Conscience and a Sense of Humor (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/276.mp3'><b>Big Blues:</b></a> The Unmaking of IBM (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10867.mp3'><b>Big Change at Best Buy:</b></a> Working Through Hypergrowth to Sustained Excellence (Davies-Black Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13840.mp3'><b>Billy, Alfred, and General Motors:</b></a> The Story of Two Unique Men, a Legendary Company, and a Remarkable Time in American History (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/96.mp3'><b>Birds of Prey:</b></a> Boeing vs. Airbus - A Battle for the Skies (Four Walls Eight Windows).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/365.mp3'><b>Body and Soul:</b></a> Profits With Principles—The Amazing Story of Anita Roddick & the Body Shop (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/673.mp3'><b>Boone:</b></a>  (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14665.mp3'><b>Branding Iron:</b></a> Branding Lessons from the Meltdown of the US Auto Industry (Racom Communications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/486.mp3'><b>Breaking the Bank:</b></a> The Decline of BankAmerica (Little, Brown & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/179.mp3'><b>Buffet:</b></a> The Making of an American Capitalist (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/48.mp3'><b>Built From Scratch:</b></a> How a Couple of Regular Guys Grew the Home Depot from Nothing to $30 Billion (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10948.mp3'><b>Built to Learn:</b></a> The Inside Story of How Rockwell Collins Became a True Learning Organization (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/695.mp3'><b>Business as Unusual:</b></a> The Triumph of Anita Roddick (Thorsons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/83.mp3'><b>Business Maharajas:</b></a> The Inside Track on Some of India‘s Most Powerful Tycoons and the Business Strategies They Follow to Keep Their Companies at the Top (Viking Penguin India).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/574.mp3'><b>Call Me Roger:</b></a> The Story of How Roger Smith, Chairman of General, Transformed the Industry Leader into a Fallen Giant (Contemporary Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/1.mp3'><b>Capitalist Philosophers:</b></a> The Geniuses of Modern Business-Their Lives, Times, and Ideas (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/375.mp3'><b>Cargill:</b></a> Trading the World’s Grain (University Press of New England).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/302.mp3'><b>CEO:</b></a> Building a $400 Million Company From the Ground Up (W. W. Norton & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/60.mp3'><b>Comeback:</b></a> How Seven Straight-Shooting CEOs Turned Around Troubled Companies (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/528.mp3'><b>Confessions of a PR Man:</b></a>  (New American Library).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10920.mp3'><b>Conquering Complexity in Your Business:</b></a> How Wal-Mart, Toyota, and Other Top Companies Are Breaking Through the Ceiling on Profits and Growth (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/263.mp3'><b>Control Your Destiny or Someone Else Will:</b></a> How Jack Welch Is Making General Electric the World’s Most Competitive Company (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/547.mp3'><b>Corporate Alchemists:</b></a> Profit Takers and Problem Makers in the Chemical Industry (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/437.mp3'><b>Corporate Bloodlines:</b></a> The Future Of The Family Firm (Lyle Stuart).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/107.mp3'><b>Corporate Comeback:</b></a> The Story of Renewal and Transformation at National Semiconductor (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/332.mp3'><b>Corporate Welfare:</b></a> The Mega Bankruptcies of the 80s and 90s (Lyle Stuart).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11021.mp3'><b>Customers Rule!:</b></a> Why the E-Commerce Honeymoon is Over and Where Winning Businesses Go from Here (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/305.mp3'><b>Dave’s Way:</b></a> A New Approach to Old-Fashioned Success (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/25.mp3'><b>Dealers of Lightning:</b></a> Xerox PARC and the Dawn of the Computer Age (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10868.mp3'><b>Deals from Hell:</b></a> M&A Lessons That Rise Above the Ashes (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/490.mp3'><b>Delta Air Lines:</b></a> Debunking the Myth (Peachtree Publishers, Ltd.).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/485.mp3'><b>Disconnecting Bell:</b></a> The Impact of the AT&T Divestiture (Pergamon Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/544.mp3'><b>Disconnecting Parties:</b></a> Managing the Bell System Break-Up: An Inside View (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/411.mp3'><b>Dream Maker:</b></a> The Rise and Fall of John Z. DeLorean (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/610.mp3'><b>Empire:</b></a> William S. Paley and the Making of CBS (Burrill-Ellsworth Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/352.mp3'><b>Europe 1992 & The New World Power Game:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/353.mp3'><b>Father Son & Co.:</b></a> My Life at IBM and Beyond (Bantam Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/216.mp3'><b>For God, Country and Coca-Cola:</b></a> The Unauthorized History of the Great American Soft Drink and the Company That Makes It (Charles Scribner’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/650.mp3'><b>Forcing Our Hand:</b></a> America's Trade Wars in the 1980s (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/514.mp3'><b>From Monopoly to Competition:</b></a> Transformations of Alcoa (Cambridge University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/57.mp3'><b>From Worst to First:</b></a> Behind the Scenes of Continental’s Remarkable Comeback (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/621.mp3'><b>Geneen:</b></a>  (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/339.mp3'><b>Going for Broke:</b></a> How Robert Campeau Bankrupted the Retail Industry, Jolted the Junk Bond Market, and Brought the Booming Eighties to a Crashing Halt (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/75.mp3'><b>Guts:</b></a> The Seven Laws of Business That Made Chrysler the World’s Hottest Car Company (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/675.mp3'><b>Hammer:</b></a>  (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/406.mp3'><b>Henry J. Kaiser:</b></a> American Empire Builder (Peter Lang Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/410.mp3'><b>Heritage & Destiny:</b></a> Reflections on the Bell System in Transition (Praeger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10944.mp3'><b>Hershey:</b></a> Milton S. Hershey's Extraordinary Life of Wealth, Empire, and Utopian Dreams (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/592.mp3'><b>Honda Motor:</b></a> The Men, the Management, the Machines (Kodansha International).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/84.mp3'><b>I’d Like The World To Buy A Coke:</b></a> The Life and Leadership of Roberto Goizueta (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/40.mp3'><b>IBM Redux:</b></a> Lou Gerstner & the Business Turnaround of the Decade (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/80.mp3'><b>In Sam We Trust:</b></a> The Untold Story of Sam Walton and How Wal-Mart Is Devouring America (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/428.mp3'><b>Inside The Wall Street Journal:</b></a>  (MacMillan Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/268.mp3'><b>It Ain’t as Easy as It Looks:</b></a> Ted Turner’s Amazing Story (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/186.mp3'><b>Korean Dynasty:</b></a> Hyundai and Chung Ju Yun (M. E. Sharpe Inc.).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/443.mp3'><b>Law, Lawyers, and Laymen:</b></a> Making Sense of the American Legal System (Harcourt Brace Jovanovic).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/468.mp3'><b>Live Via Satellite:</b></a> The Story of COMSAT and the Technology that Changed World Communications (Burrill-Ellsworth Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/668.mp3'><b>Made in Japan:</b></a> Akio Morita and Sony (E.P. Dutton).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/231.mp3'><b>Master of the Game:</b></a> Steve Ross and the Creation of Time Warner (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/658.mp3'><b>McDonald's:</b></a> Behind the Arches (Bantam Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/248.mp3'><b>Murdoch:</b></a>  (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/155.mp3'><b>NUTS!:</b></a> Southwest Airlines’ Crazy Recipe for Business and Personal Success (Bard Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/622.mp3'><b>On the Line:</b></a> The Men of MCI--Who Took on AT&T, Risked Everything, and Won! (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/249.mp3'><b>Overnight Success:</b></a> Federal Express and Frederick Smith, Its Renegade Creator (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/404.mp3'><b>Perot:</b></a> An Unauthorized Biography (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/22.mp3'><b>Peter Drucker-Shaping the Managerial Mind:</b></a> How the World’s Foremost Management Thinker Crafted the Essentials of Business Success (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/363.mp3'><b>Poor Richard’s Legacy:</b></a> American Business Values From Benjamin Franklin to Donald Trump (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/129.mp3'><b>Pour Your Heart into It:</b></a> How Starbucks Built a Company One Cup at a Time (Hyperion).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/384.mp3'><b>Prophets in the Dark:</b></a> How Xerox Reinvented Itself and Beat Back the Japanese (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10942.mp3'><b>Put the Moose on the Table:</b></a> Lessons in Leadership from a CEO's Journey Through Business and Life (Indiana University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/434.mp3'><b>Rupert Murdoch:</b></a>  (Donald I. Fine).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/532.mp3'><b>Saatchi & Saatchi:</b></a> The Inside Story (NTC Business Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/533.mp3'><b>Science and Corporate Strategy:</b></a> Du Pont R&D, 1902-1980 (Cambridge University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/500.mp3'><b>Shaping An American Institution:</b></a> Robert E. Wood and Sears, Roebuck (University Press of New England).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/561.mp3'><b>Splash of Colors:</b></a> The Self-Destruction of Braniff International (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/394.mp3'><b>Swoosh:</b></a> The Unauthorized Story of Nike and The Men Who Played There (Harcourt Brace Jovanovic).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/316.mp3'><b>The Big Six:</b></a> The Selling Out of America’s Top Accounting Firms (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/613.mp3'><b>The Big Store:</b></a> Inside the Crisis and Revolution at Sears (Viking Penguin India).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/534.mp3'><b>The Corporate Steeplechase:</b></a> Predictable Crises in a Business Career (Facts on File Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/479.mp3'><b>The Death of Keynes:</b></a> Conflicts In The Evolution of Economic Policy (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/322.mp3'><b>The Disney Touch:</b></a> How a Daring Management Team Revived an Entertainment Empire (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15798.mp3'><b>The Elegant Solution:</b></a> Toyota's Formula for Mastering Innovation (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/76.mp3'><b>The Emperors of Chocolate:</b></a> Inside the Secret World of Hershey and Mars (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3820.mp3'><b>The Essential Drucker:</b></a> In One Volume the Best of Sixty Years of Peter Drucker’s Essential Writings on Management (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/555.mp3'><b>The First Hundred Years Are the Toughest:</b></a> What We Can Learn from the Century of Competition Between Sears and Ward (Ten Speed Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/7.mp3'><b>The Fortune Tellers:</b></a> Inside Wall Street’s Game of Money, Media, and Manipulation (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11008.mp3'><b>The Hard Road to the Softer Side:</b></a> Lessons from the Transformation of SEARS (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/357.mp3'><b>The House of Nomura:</b></a> The Inside Story of the Legendary Japanese Financial Dynasty (Little, Brown & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/174.mp3'><b>The HP Way:</b></a> How Bill Hewlett and I Built Our Company (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/623.mp3'><b>The IBM Way:</b></a> Insights into the World's Most Successful Marketing Organization (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/524.mp3'><b>The Little Kingdom:</b></a> The Private Story of Apple Computer (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/475.mp3'><b>The Lore and Legends of Wall Street:</b></a>  (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/635.mp3'><b>The Making of McPaper:</b></a> The Inside Story of USA Today (Andrews, McMeel & Parker).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/356.mp3'><b>The Making of Microsoft:</b></a> How Bill Gates and His Team Created the World’s Most Successful Software Company (Prima Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/340.mp3'><b>The Man Who Discovered Quality:</b></a> How W. Edwards Deming Brought the Quality Revolution to America—The Stories of Ford, Xerox, and GM (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/235.mp3'><b>The Merc:</b></a> The Emergence of a Global Financial Powerhouse (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11006.mp3'><b>The Most Effective Organization in the U.S.:</b></a> Leadership Secrets of The Salvation Army (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/269.mp3'><b>The New GE:</b></a> How Jack Welch Revived an American Institution (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/270.mp3'><b>The Nissan Report:</b></a> An Inside Look at How a World-Class Japanese Company Makes Products That Make a Difference (Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3344.mp3'><b>The Nokia Revolution:</b></a> The Story of an Extraordinary Company That Transformed an Industry (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/476.mp3'><b>The Panasonic Way:</b></a> From a Chief Executive's Desk (Kodansha International).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/579.mp3'><b>The Power Makers:</b></a> The Inside Story of America's Biggest Business…and Its Struggle to Control Tomorrow's Electricity (Rodale Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/483.mp3'><b>The Quiet Company:</b></a> A Modern History of Northwestern Mutual Life (Northwestern Mutual Life).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/659.mp3'><b>The Rise and Decline of the Great Atlantic & Pacific Tea Company:</b></a>  (Lyle Stuart).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10855.mp3'><b>The Search:</b></a> How Google and Its Rivals Rewrote the Rules of Business and Transformed Our Culture (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10873.mp3'><b>The Southwest Airlines Way:</b></a> Using the Power of Relationships to Achieve High Performance (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10863.mp3'><b>The Toyota Way:</b></a> 14 Management Principles from the World's Greatest Manufacturer (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/522.mp3'><b>The Ultimate Entrepreneur:</b></a> The Story of Ken Olsen and Digital Equipment Corporation (Contemporary Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10883.mp3'><b>The World Is Flat:</b></a> A Brief History of the Twenty-First Century (Farrar, Straus and Giroux).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/595.mp3'><b>The Year They Sold Wall Street:</b></a>  (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10862.mp3'><b>Tough Calls:</b></a> AT&T and the Hard Lessons Learned from the Telecom Wars (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11023.mp3'><b>Welch:</b></a> An American Icon (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/318.mp3'><b>Well Made in America:</b></a> Lessons from Harley-Davidson on Being the Best (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/570.mp3'><b>Who Killed CBS?:</b></a> The Undoing of America's Number One News Network (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/236.mp3'><b>Wide-Body:</b></a> The Triumph of the 747 (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/157.mp3'><b>Wriston:</b></a> Walter Wriston, Citibank, and the Rise and Fall of American Financial Supremacy (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/641.mp3'><b>Xerox:</b></a> American Samurai (MacMillan Books).<br>

</div>



<div id="div2" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10955.mp3'><b>Absolute Honesty:</b></a> Building a Corporate Culture That Values Straight Talk and Rewards Integrity (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/331.mp3'><b>Achieving Total Quality Management:</b></a> A Program for Action (Productivity Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/460.mp3'><b>American Business: A Two-Minute Warning:</b></a> Ten Changes Managers Must Make to Survive Into the 21st Century (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/671.mp3'><b>Back-to-Basics Management:</b></a> The Lost Craft of Leadership (Facts on File Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/104.mp3'><b>Champions of Change:</b></a> How CEOs and Their Companies Are Mastering the Skills of Radical Change (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/188.mp3'><b>Lean and Mean:</b></a> The Changing Landscape of Corporate Power in the Age of Flexibility (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/113.mp3'><b>Learning from the Future:</b></a> Competitive Foresight Scenarios (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11026.mp3'><b>Lessons from the Future:</b></a> Making Sense of a Blurred World (Capstone Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10907.mp3'><b>Leveraging the New Human Capital:</b></a> Adaptive Strategies, Results Achieved, and Stories of Transformation (Davies-Black Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/393.mp3'><b>Managing for the Future:</b></a> The 1990s and Beyond (Truman Talley Books/Dutton).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/171.mp3'><b>Managing in a Time of Great Change:</b></a>  (Truman Talley Books/Dutton).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10924.mp3'><b>Managing in the Next Society:</b></a> Thoughts on the Information Society, Business Opportunities and the Changing World Economy (St. Martin's Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10988.mp3'><b>Managing Innovation And Change:</b></a> Second Edition (Sage Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/341.mp3'><b>Managing The Future:</b></a> 10 Driving Forces of Change for the '90s (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10912.mp3'><b>Navigating the Badlands:</b></a> Thriving in the Decade of Radical Transformation (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/571.mp3'><b>Re-inventing the Corporation:</b></a> Transforming Your Job and Your Company for the New Information Society (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/219.mp3'><b>Rethinking the Corporation:</b></a> The Architecture of Change (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/604.mp3'><b>Service America! Doing Business in the New Economy:</b></a>  (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/37.mp3'><b>Surfing the Edge of Chaos:</b></a> The Laws of Nature and the New Laws of Business (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/402.mp3'><b>Teaching the Elephant to Dance:</b></a> Empowering Change in Your Organization (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/142.mp3'><b>The Age of Heretics:</b></a> Heroes, Outlaws, and the Forerunners of Corporate Change (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/178.mp3'><b>The Boundaryless Organization:</b></a> Breaking the Chains of Organizational Structure (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/321.mp3'><b>The Change Riders:</b></a> Managing the Power of Change (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/2172.mp3'><b>The EVA Challenge:</b></a> Implementing Value-Added Change in an Organization (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/161.mp3'><b>The Second Curve:</b></a> Managing the Velocity of Change (Ballantine Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/51.mp3'><b>What Works:</b></a> A Decade of Change at Champion International (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10963.mp3'><b>X-Engineering the Corporation:</b></a> Reinventing Your Business in the Digital Age (Warner Books).<br>

</div>


<div id="div3" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/256.mp3'><b>A Briefing for Leaders:</b></a> Communication as the Ultimate Exercise of Power (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10887.mp3'><b>A Whole New Mind:</b></a> Moving from the Information Age to the Conceptual Age (Riverhead Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10989.mp3'><b>Communicating for Managerial Effectiveness:</b></a> Second Edition (Sage Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10971.mp3'><b>Corporate Conversations:</b></a> A Guide to Crafting Effective and Appropriate Internal Communications (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/407.mp3'><b>Corporate Cultures:</b></a> The Rites and Rituals of Corporate Life (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10906.mp3'><b>Crucial Conversations:</b></a> Tools for Talking When Stakes are High (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/285.mp3'><b>Networking With the Affluent and Their Advisors:</b></a>  (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/465.mp3'><b>Public Relations/Publicity:</b></a> A Key Link in Communications (Fairchild Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/463.mp3'><b>Teleconferencing:</b></a> Maximizing Human Potential (Reston).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10934.mp3'><b>The Communication Catalyst:</b></a> The Fast (But Not Stupid) Track to Value for Customers, Investors, and Employees (Dearborn).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10935.mp3'><b>The Leader's Voice:</b></a> How Your Communication Can Inspire Action and Get Results! (SelectBooks).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/370.mp3'><b>The Light Touch:</b></a> How To Use Humor for Business Success (Simon and Schuster).<br>

</div>


<div id="div4" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10879.mp3'><b>Angel Customers & Demon Customers:</b></a> Discover Which Is Which and Turbo-Charge Your Stock (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10922.mp3'><b>Creating Customer Evangelists:</b></a> How Loyal Customers Become a Volunteer Sales Force (Dearborn).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/121.mp3'><b>Customer Intimacy:</b></a> Pick Your Partners, Shape Your Culture, Win Together (Knowledge Exchange).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/2053.mp3'><b>Customer Winback:</b></a> How to Recapture Lost Customers—And Keep Them Loyal (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/152.mp3'><b>Customer-Centered Growth:</b></a> Five Proven Strategies for Building Competitive Advantage (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10983.mp3'><b>CustomerCulture:</b></a> How FedEx and Other Great Companies Put the Customer First Every Day (Financial Times Prentice Hall).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/432.mp3'><b>Delivering Quality Service:</b></a> Balancing Customer Perceptions and Expectations (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10.mp3'><b>Driving Customer Equity:</b></a> How Customer Lifetime Value Is Reshaping Corporate Strategy (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15.mp3'><b>Emotional Value:</b></a> Creating Strong Bonds with Your Customers (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11033.mp3'><b>e-Service:</b></a> 24 Ways to Keep Your Customers-When the Competition Is Just a Click Away (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/138.mp3'><b>Getting Into Your Customer's Head:</b></a> 8 Secret Roles of Selling Your Competitors Don't Know (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/491.mp3'><b>I'm First:</b></a> Your Customer's Message to You (Rawson Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/360.mp3'><b>Keeping Customers for Life:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/69.mp3'><b>Relationship Marketing:</b></a> New Strategies, Techniques and Technologies to Win the Customers You Want and Keep Them Forever (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10980.mp3'><b>Satisfaction:</b></a> How Every Great Company Listens to the Voice of the Customer (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/436.mp3'><b>Satisfaction Guaranteed:</b></a> The Making of the American Mass Market (Pantheon Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/386.mp3'><b>The Customer Comes Second:</b></a> And Other Secrets of Exceptional Service (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/554.mp3'><b>The Customer Connection:</b></a> Quality for the Rest of Us (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/183.mp3'><b>The Customer Is Usually Wrong:</b></a>  (Park Avenue Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3293.mp3'><b>The Customer Revolution:</b></a> How to Thrive When Customers Are in Control (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/273.mp3'><b>The One to One Future:</b></a> Building Relationships One Customer at a Time (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/449.mp3'><b>The Service Advantage:</b></a> How to Identify and Fulfill Customer Needs (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/237.mp3'><b>The Value Network:</b></a> Integrating the Five Critical Processes That Create Customer Satisfaction (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/478.mp3'><b>Total Customer Service:</b></a> The Ultimate Weapon (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12286.mp3'><b>Trust-Based Selling:</b></a> Using Customer Focus and Collaboration to Build Long-Term Relationships (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/670.mp3'><b>Why They Buy:</b></a> American Consumers Inside and Out (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/180.mp3'><b>Win the Value Revolution:</b></a> How To Give Your Customers a Quality Product and Excellent Service, and Still Make Money (Career Press).<br>

</div>

<div id="div5" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/287.mp3'><b>Beyond Race and Gender:</b></a> Unleashing the Power of Your Total Work Force By Managing Diversity (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10882.mp3'><b>Business Across Cultures:</b></a> From the Business for Culture Series (Capstone Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/108.mp3'><b>From Mind to Market:</b></a> Reinventing the Retail Supply Chain (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/166.mp3'><b>Future in Sight:</b></a> 100 of the Most Important Trends, Implications and Predictions for the New Millennium (MacMillan Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13832.mp3'><b>The Culture Code:</b></a> An Ingenious Way to Understand Why People Around the World Buy and Live as They Do (Broadway Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10986.mp3'><b>The Inclusion Breakthrough:</b></a> Unleashing the Real Power of Diversity (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/441.mp3'><b>Wall Street Women:</b></a> Women In Power on Wall Street Today (Alfred A. Knopf).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/281.mp3'><b>When Women Retire:</b></a> The Problems They Face & How To Solve Them (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/326.mp3'><b>Workforce America!:</b></a> Managing Employee Diversity As a Vital Resource (Business One Irwin).<br>

</div>


<div id="div6" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/282.mp3'><b>Activity Accounting:</b></a> An Activity-Based Costing Approach (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/435.mp3'><b>Airline Economics:</b></a>  (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/572.mp3'><b>America's New Economy:</b></a> The Basic Guide (Franklin Watts).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/450.mp3'><b>Balancing Acts:</b></a> Technology, Finance and the American Future (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/580.mp3'><b>Banking Deregulation and the New Competition in Financial Services:</b></a>  (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/330.mp3'><b>Bionomics:</b></a> The Inevitability of Capitalism (Henry Holt and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/54.mp3'><b>Blur:</b></a> The Speed of Change in the Connected Economy (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10987.mp3'><b>Changing Fortunes:</b></a> Remaking the Industrial Corporation (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/590.mp3'><b>Comeback:</b></a> Case by Case: Building the Resurgence of American Business (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/369.mp3'><b>Coming to Public Judgment:</b></a> Making Democracy Work in a Complex World (Syracuse University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/120.mp3'><b>Competition in the 21st Century:</b></a>  (St. Lucie Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/416.mp3'><b>Dismantling America:</b></a> The Rush to Deregulate (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/292.mp3'><b>Euroquake:</b></a> Europe’s Explosive Economic Challenge Will Change the World (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/164.mp3'><b>Fidelity’s World:</b></a> The Secret Life and Public Power of the Mutual Fund Giant (Scribner).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10851.mp3'><b>Flight Capital:</b></a> The Alarming Exodus of America's Best and Brightest (Davies-Black Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/308.mp3'><b>How To Keep Your Savings Safe:</b></a> Protecting the Money You Can’t Afford To Lose (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/672.mp3'><b>How to Read and Understand the Financial News:</b></a>  (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/266.mp3'><b>Hunters and the Hunted:</b></a> A Non-Linear Solution for American Industry (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/344.mp3'><b>In Search of Excess:</b></a> The Overcompensation of American Executives (W. W. Norton & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/409.mp3'><b>Megatrends:</b></a> Ten New Directions Transforming Our Lives (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/431.mp3'><b>Megatrends 2000:</b></a> Ten New Directions For the 1990s (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/446.mp3'><b>Microcosm:</b></a> The Quantum Revolution in Economics and Technology (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/661.mp3'><b>New Venture Analysis:</b></a> Research, Planning and Finance (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/227.mp3'><b>Post-Capitalist Society:</b></a>  (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/315.mp3'><b>Rebirth of the Corporation:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/405.mp3'><b>Renewing American Industry:</b></a>  (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/642.mp3'><b>Roadside Empires:</b></a> How the Chains Franchised America (Viking Penguin India).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/473.mp3'><b>Rust To Riches:</b></a> The Coming of the Second Industrial Revolution (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15807.mp3'><b>Strategic Corporate Finance:</b></a> Applications in Valuation and Capital Structure (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/640.mp3'><b>Takeover Madness:</b></a> Corporate America Fights Back (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10838.mp3'><b>The Battle for the Soul of Capitalism:</b></a>  (Yale University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/317.mp3'><b>The Breakthrough Illusion:</b></a> Corporate America’s Failure to Move From Innovation to Mass Production (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/552.mp3'><b>The Clustering of America:</b></a>  (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/220.mp3'><b>The Fourth Wave:</b></a> Business in the 21st Century (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/143.mp3'><b>The Future of Capitalism:</b></a> How Today’s Economic Forces Shape Tomorrow’s World (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/634.mp3'><b>The Great Depression of 1990:</b></a>  (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/655.mp3'><b>The Insider's Guide to Franchising:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/217.mp3'><b>The Myth of Free Trade:</b></a> A Plan for America’s Economic Revival (Charles Scribner’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/503.mp3'><b>The New Realities:</b></a>  (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/272.mp3'><b>The Once and Future Superpower:</b></a> How To Restore America’s Economic, Energy, and Environmental Security (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/387.mp3'><b>The Portable MBA in Finance and Accounting:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/685.mp3'><b>The Power of Gold:</b></a> The History of an Obsession (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/50.mp3'><b>The Productive Edge:</b></a> How U.S. Industries Are Pointing the Way to a New Era of Economic Growth (W. W. Norton & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/676.mp3'><b>The Reckoning:</b></a>  (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/608.mp3'><b>The Rise and Fall of the Great Powers:</b></a> Economic Change and Military Conflict from 1500 to 2000 (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/221.mp3'><b>The Tom Peters Seminar:</b></a> Crazy Times Call for Crazy Organizations (Vintage Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/601.mp3'><b>The Zero-Sum Solution:</b></a> Building a World-Class American Economy (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/467.mp3'><b>Understanding Wall Street:</b></a>  (Liberty Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/71.mp3'><b>When Economics Means Business:</b></a> The New Economics of the Information Age (Financial Times Pitman Publishing).<br>

</div>

<div id="div7" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/82.mp3'><b>An Eye for Winners:</b></a> How I Built One of America’s Greatest Direct-Mail Businesses (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/34.mp3'><b>Clicks and Mortar:</b></a> Passion Driven Growth in an Internet Driven World (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3.mp3'><b>Digital Rush:</b></a> Nine Internet Start-Ups in the Race for Dot-Com Riches (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/597.mp3'><b>Entrepreneurial Megabucks:</b></a> The 100 Greatest Entrepreneurs of the Last 25 Years (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/307.mp3'><b>From Executive to Entrepreneur:</b></a> Making the Transition (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/663.mp3'><b>Going For It!:</b></a> How to Succeed as an Entrepreneur (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/557.mp3'><b>Intrapreneuring:</b></a> Why You Don't Have to Leave the Corporation to Become an Entrepreneur (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10877.mp3'><b>Nobodies to Somebodies:</b></a> How 100 Great Careers Got Their Start (Penguin Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10928.mp3'><b>The Art of the Start:</b></a> The Time-Tested, Battle-Hardened Guide for Anyone Starting Anything (The Penguin Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/679.mp3'><b>The Entrepreneurs:</b></a> An American Adventure (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/358.mp3'><b>The Second Coming of the Woolly Mammoth:</b></a> An Entrepreneur’s Bible (Ten Speed Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15796.mp3'><b>Trust Your Gut:</b></a> How the Power of Intuition Can Grow Your Business (Kaplan Publishing).<br>

</div>

<div id="div8" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11.mp3'><b>A Future Perfect:</b></a> The Challenge and Hidden Promise of Globalization (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/247.mp3'><b>A Manager’s Guide to Globalization:</b></a> Six Keys to Success in a Changing World (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/300.mp3'><b>Agents of Influence:</b></a> How Japan Manipulates America’s Political and Economic System (Touchstone).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/549.mp3'><b>Beyond Globalism:</b></a> Remaking American Foreign Economic Policy (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/79.mp3'><b>Big Dragon:</b></a> China’s Future - What It Means for Business, the Economy, and the Global Order (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/210.mp3'><b>Birth of a New World:</b></a> An Open Moment for International Leadership (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/160.mp3'><b>Bold New World:</b></a> The Essential Road Map to the Twenty-First Century (Kodansha International).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/573.mp3'><b>Buying Into America:</b></a> How foreign Money is Changing the Face of Our Nation (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10888.mp3'><b>China Inc:</b></a> How the Rise of the Next Superpower Challenges America and the World (Scribner).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/452.mp3'><b>China, Inc.:</b></a> How To Do Business With The Chinese (Bantam Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/212.mp3'><b>Do’s and Taboos Around the World:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/643.mp3'><b>Doing Business Abroad:</b></a> Everything the Businessman Needs to Know for Successful Negotiation, Barter, Trade, and Business Entertaining Around the World (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/427.mp3'><b>Doing Business with the Japanese:</b></a>  (The New American Library).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/415.mp3'><b>Economic Reform in Three Giants:</b></a> U.S. Foreign Policy and the USSR, China and India (Transaction Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/596.mp3'><b>Empires of the Sky:</b></a> The Politics, Contests, and Cartels of World Airlines (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/335.mp3'><b>Gaishi:</b></a> The Foreign Company in Japan (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/206.mp3'><b>Global Dreams:</b></a> Imperial Corporations and the New World Order (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/39.mp3'><b>Global Literacies:</b></a> Lessons on Business Leadership and National Cultures (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/226.mp3'><b>Global Paradox:</b></a> The Bigger the World Economy, the More Powerful Its Smallest Players (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/61.mp3'><b>Global Squeeze:</b></a> The Coming Crisis for First-World Nations (Contemporary Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/199.mp3'><b>GlobalWork:</b></a> Bridging Distance, Culture & Time (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/379.mp3'><b>Head to Head:</b></a> The Coming Economic Battle Among Japan, Europe, and America (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/649.mp3'><b>Hidden Differences:</b></a> Doing Business With The Japanese (Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/481.mp3'><b>How to Do Business with the People's Republic of China:</b></a>  (Reston).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/614.mp3'><b>IBM vs Japan:</b></a> The Struggle for the Future (Stein and Day).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/516.mp3'><b>Is Korea the Next Japan?:</b></a> Understanding the Structure, Strategy, and Tactics of America's Next Competitor (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/245.mp3'><b>Japan:</b></a> The Coming Collapse: A Probing Report on Japan’s Economy, Politics and Society and the Crisis of the 1990s (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/382.mp3'><b>Japan Without Blinders:</b></a> Coming to Terms With Japan’s Economic Success (Kodansha International).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/593.mp3'><b>Japanese Business Etiquette:</b></a> A practical Guide to Success with the Japanese (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/259.mp3'><b>Juggernaut:</b></a> The German Way of Business—Why It Is Transforming Europe—and the World (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/230.mp3'><b>Looking at the Sun:</b></a> The Rise of the New East Asian Economic and Political System (Pantheon Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/681.mp3'><b>Managed Trade:</b></a> The New Competition Between Nations (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/147.mp3'><b>Megatrends Asia:</b></a> Eight Asian Megatrends That Are Reshaping Our World (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/62.mp3'><b>Powered by Honda:</b></a> Developing Excellence in the Global Enterprise (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/342.mp3'><b>Powershift:</b></a> Knowledge, Wealth, and Violence at the Edge of the 21st Century (Bantam Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/313.mp3'><b>Quality or Else:</b></a> The Revolution in World Business A Companion to the IBM-Funded PBS Series (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/320.mp3'><b>Rubles and Dollars:</b></a> Strategies for Doing Business in the Soviet Union (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12290.mp3'><b>Tectonic Shift:</b></a> The Geoeconomic Realignment of Globalizing Markets (Sage Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/400.mp3'><b>The Borderless World:</b></a> Power and Strategy in the Interlinked Economy (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/232.mp3'><b>The Death of Money:</b></a> How the Electronic Economy Has Destabilized the World’s Markets and Created Financial Chaos (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/538.mp3'><b>The Eagle and the Rising Sun:</b></a>  (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15802.mp3'><b>The Emerging Markets Century:</b></a> How a New Breed of World-Class Companies Is Overtaking the World (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/429.mp3'><b>The End of the American Century:</b></a>  (Congdon & Weed).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/499.mp3'><b>The False Promise of the Japanese Miracle:</b></a> Illusions and Realities of the Japanese Management System (Pitman).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/541.mp3'><b>The Financial Behavior of Japanese Corporations:</b></a>  (Kodansha International).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/496.mp3'><b>The Global Marketplace:</b></a>  (Facts on File Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/338.mp3'><b>The Japan That Can Say No:</b></a> Why Japan Will Be First Among Equals (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/312.mp3'><b>The Machine That Changed the World:</b></a>  (Rawson Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10930.mp3'><b>The Mirage of Global Markets:</b></a> How Globalizing Companies Can Succeed as Markets Localize (Financial Times Prentice Hall).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/350.mp3'><b>The Next Century:</b></a>  (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/275.mp3'><b>The Pacific Century:</b></a> America and Asia in a Changing World (Charles Scribner’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/191.mp3'><b>The Rice-Paper Ceiling:</b></a> Breaking Through Japanese Corporate Culture (Stonebridge Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/521.mp3'><b>The Silent War:</b></a> Inside the Global Business Battles Shaping America's Future (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/430.mp3'><b>The Sun Also Sets:</b></a> The Limits To Japan's Power (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/325.mp3'><b>The Work of Nations:</b></a> Preparing Ourselves for 21st-Century Capitalism (Alfred A. Knopf).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/94.mp3'><b>The World According to Peter Drucker:</b></a>  (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/566.mp3'><b>Trading Places:</b></a> How We Allowed Japan to Take the Lead (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/323.mp3'><b>Winning Worldwide Strategies for Dominating Global Markets:</b></a>  (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10845.mp3'><b>Working GlobeSmart:</b></a> 12 People Skills for Doing Business Across Borders (Davies-Black Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15803.mp3'><b>World Wise:</b></a> What to Know Before You Go (Fairchild Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/239.mp3'><b>Zaibatsu America:</b></a> How Japanese Firms Are Colonizing Vital U.S. Industries (The Free Press).<br>

</div>

<div id="div9" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/568.mp3'><b>A Great Place to Work:</b></a>  (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10901.mp3'><b>A Journey into the Heroic Environment:</b></a> A Personal Guide to Creating a Work Environment Built on Shared Values (SelectBooks).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/526.mp3'><b>Alternative Staffing Strategies:</b></a>  (The Bureau of National Affairs).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/361.mp3'><b>America and the New Economy:</b></a> How New Competitive Standards Are Radically Changing American Workplaces (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/135.mp3'><b>Beyond Reengineering:</b></a> How the Process-Centered Organization Is Reshaping Our Work and Our Lives (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/648.mp3'><b>Breaking the Glass Ceiling:</b></a> Can Women Reach the Top of America's Largest Corporations? (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/366.mp3'><b>Breaking With Tradition:</b></a> Women and Work, the New Facts of Life (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/211.mp3'><b>Building the Competitive Workforce:</b></a> Investing in Human Capital for Corporate Success (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/577.mp3'><b>Controlling Work Stress:</b></a> Effective Human Resource and Management Strategies (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/137.mp3'><b>Creating an 'Open Book' Organization:</b></a> Where Employees Think & Act Like Business Partners (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/8.mp3'><b>Culture.com:</b></a> Building Corporate Culture in the Connected Workplace (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/264.mp3'><b>Developing the Global Organization:</b></a> Strategies for Human Resource Professionals (Gulf Publishing Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11017.mp3'><b>Embracing Excellence:</b></a> Become an Employer of Choice to Attract and Keep the Best Talent (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/343.mp3'><b>Harassed:</b></a> 100 Women Define Inappropriate Behavior In the Workplace (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10994.mp3'><b>High Performance HR:</b></a> Leveraging Human Resources for Competitive Advantage (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/55.mp3'><b>High-Impact HR:</b></a> Transforming Human Resources for Competitive Advantage (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/464.mp3'><b>How To Pick The Right People Program:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10951.mp3'><b>HR from the Heart:</b></a> Inspiring Stories and Strategies for Building the People Side of Great Business (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10982.mp3'><b>Impact Hiring:</b></a> The Secrets of Hiring a Superstar (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10969.mp3'><b>Innovative Reward Systems for the Changing Workplace:</b></a> Second Edition (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/362.mp3'><b>Keeping the Best:</b></a> And Other Thoughts on Building a Super Competitive Workforce (Bob Adams).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10889.mp3'><b>Lost Knowledge:</b></a> Confronting the Threat of an Aging Workforce (Oxford University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/348.mp3'><b>Reducing Employee Theft:</b></a> A Guide To Financial and Organizational Controls (Quorum Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/385.mp3'><b>Sexual Harassment in the Workplace:</b></a> How To Prevent, Investigate, and Resolve Problems in Your Organization (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14663.mp3'><b>Strategic Hiring:</b></a> Tomorrow's Benefits Today (Stephen J. Blakesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15808.mp3'><b>Talent IQ:</b></a>  (Adams Media).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/493.mp3'><b>The 100 Best Companies to Work for in America:</b></a>  (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10905.mp3'><b>The 7 Hidden Reasons Employees Leave:</b></a> How to Recognize the Subtle Signs and Act Before It's Too Late (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/88.mp3'><b>The 8 Practices of Exceptional Companies:</b></a> How Great Organizations Make the Most of Their Human Assets (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13834.mp3'><b>The Enthusiastic Employee:</b></a> How Companies Profit by Giving Workers What They Want (Pearson Education).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/606.mp3'><b>The Gold Collar Worker:</b></a> Harnessing the Brainpower of the New Work Force (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/453.mp3'><b>The Invisible Workforce:</b></a> Transforming American Business With Outside and Home-Based Workers (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/563.mp3'><b>The Management of Personnel:</b></a>  (Vantage Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14674.mp3'><b>The New American Workplace:</b></a>  (Palgrave Mcmillan).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/677.mp3'><b>The New Capitalism:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/626.mp3'><b>The New Expatriates:</b></a> Managing Human Resources Abroad (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/324.mp3'><b>The New Individualists:</b></a> The Generation After The Organization Man (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10979.mp3'><b>The New Workforce:</b></a> Five Sweeping Trends That Will Shape Your Company's Future (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/477.mp3'><b>The Paycheck Disruption:</b></a> Finding Success in the Workplace of the '90s (Hippocrene Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10974.mp3'><b>The Power of Minds at Work:</b></a> Organizational Intelligence in Action (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/18.mp3'><b>The ROI of Human Capital:</b></a> Measuring the Economic Value of Employee Performance (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/564.mp3'><b>The Supermeds:</b></a> How the Big Business of Medicine Is Endangering our Health Care (Charles Scribner’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10968.mp3'><b>The Trusted Leader:</b></a> Bringing Out the Best in Your People and Your Company (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/32.mp3'><b>The Working Life:</b></a> The Promise and Betrayal of Modern Work (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/77.mp3'><b>Topgrading:</b></a> How Leading Companies Win by Hiring, Coaching and Keeping the Best People (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11003.mp3'><b>Value Rx for Healthcare:</b></a> How to Make the Most of Your Organization's Assets and Relationships (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/508.mp3'><b>Why Employees Don't Do What They're Supposed To Do and What To Do About It:</b></a>  (Liberty Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/545.mp3'><b>Work Smart, Not Hard:</b></a>  (Facts on File Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/372.mp3'><b>Work Without Managers:</b></a> A View From the Trenches (Delta Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/589.mp3'><b>Working It Out:</b></a> Sanity and Success in the Workplace (Prentice Hall Press).<br>

</div>

<div id="div10" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/665.mp3'><b>Breakthroughs!:</b></a>  (Rawson Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/581.mp3'><b>Corporate Profitability & Logistics:</b></a> Innovative Guidelines for Executives (Council of Logistics Management and National Association of Accountants).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/684.mp3'><b>Creativity in Business:</b></a>  (Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10894.mp3'><b>Creativity in Virtual Teams:</b></a> Key Components for Success (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/591.mp3'><b>Deciding to Innovate:</b></a> How Firms Justify Advanced Technology (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10970.mp3'><b>Driving Growth Through Innovation:</b></a> How Leading Firms Are Transforming Their Futures (Berrett-Koehler Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/408.mp3'><b>Innovation:</b></a> Managing the Development of Profitable New Products (Lifetime Learning Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/535.mp3'><b>Innovation and Entrepreneurship:</b></a> Practice and Principles (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/111.mp3'><b>Innovation Explosion:</b></a> Using Intellect and Software to Revolutionize Growth Strategies (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/624.mp3'><b>Inside Corporate Innovation:</b></a> Strategy, Structure, and Managerial Skills (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3231.mp3'><b>The Art of Innovation:</b></a> Lessons in Creativity from IDEO, America’s Leading Design Firm (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/654.mp3'><b>The Creative Edge:</b></a> Fostering Innovation Where You Work (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/518.mp3'><b>The Innovators:</b></a> Rediscovering America's Creative Energy (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/560.mp3'><b>The Pursuit of Innovation:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10981.mp3'><b>The Seeds of Innovation:</b></a> Cultivating the Synergy That Fosters New Ideas (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12285.mp3'><b>The Ten Faces of Innovation:</b></a> IDEO's Strategies for Beating the Devil's Advocate & Driving Creativity Throughout Your Organization (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/93.mp3'><b>What Will Be:</b></a> How the New World of Information Will Change Our Lives (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10966.mp3'><b>21 Leaders for the 21st Century:</b></a> How Innovative Leaders Manage in the Digital Age (McGraw-Hill).<br>

</div>

<div id="div11" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15795.mp3'><b>A Leader's Legacy:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10996.mp3'><b>A New Brand World:</b></a> 8 Principles for Achieving Brand Leadership in the 21st Century (Viking).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/556.mp3'><b>A Passion for Excellence:</b></a> The Leadership Difference (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/222.mp3'><b>Alchemy of a Leader:</b></a> Combining Western and Japanese Management Skills To Transform Your Company (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10852.mp3'><b>Authentic Leadership:</b></a> Rediscovering the Secrets to Creating Lasting Value (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10865.mp3'><b>Awakening the Leader Within:</b></a> A Story of Transformation (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/587.mp3'><b>Beyond the Bottom Line:</b></a> How Business Leaders are Turning Principles into Profits (Facts on File Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/31.mp3'><b>Brand Leadership:</b></a>  (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/520.mp3'><b>CEO:</b></a> Corporate Leadership in Action (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/36.mp3'><b>Co-Leaders:</b></a> The Power of Great Partnerships (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/163.mp3'><b>Empires of the Mind:</b></a> Lessons To Lead and Succeed in a Knowledge-Based World (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/583.mp3'><b>Executive Chess:</b></a> Creative Problem-Solving by 45 of America's Top Business Leaders and Thinkers (New American Library).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/214.mp3'><b>Flight of the Buffalo:</b></a> Soaring to Excellence, Learning to Let Employees Lead (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10945.mp3'><b>Good Business:</b></a> Leadership, Flow, and the Making of Meaning (Viking).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10904.mp3'><b>Great Motivation Secrets of Great Leaders:</b></a>  (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10837.mp3'><b>How Great Leaders Get Great Results:</b></a>  (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/23.mp3'><b>Identity Is Destiny:</b></a> Leadership and the Roots of Value Creation (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/185.mp3'><b>If I Knew Then What I Know Now:</b></a> CEOs and Other Smart Executives Share Wisdom They Wish They’d Been Told 25 Years Ago (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/145.mp3'><b>Innovation:</b></a> Leadership Strategies for the Competitive Edge (NTC Business Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/42.mp3'><b>Leadership A to Z:</b></a> A Guide for the Appropriately Ambitious (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15804.mp3'><b>Leadership Agility:</b></a> Five Levels of Mastery for Anticipating and Initiating Change (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/392.mp3'><b>Leadership and the Computer:</b></a> Top Executives Reveal How They Personally Use Computers To Communicate, Coach, Convince and Compete (Prima Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/632.mp3'><b>Leadership for Change:</b></a>  (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10857.mp3'><b>Leadership Presence:</b></a> Dramatic Techniques to Reach Out, Motivate, and Inspire (Gotham Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10917.mp3'><b>Leadership: The Inner Side of Greatness:</b></a> A Philosophy for Leaders (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14661.mp3'><b>Leading at a Higher Level:</b></a> Blanchard on Leadership and Creating High-Performance Organizations (Financial Times Prentice Hall).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10895.mp3'><b>Leading Leaders:</b></a> How to Manage Smart, Talented, Rich, and Powerful People (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/187.mp3'><b>Leading Minds:</b></a> An Anatomy of Leadership (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10975.mp3'><b>Leading on the Edge of Chaos:</b></a> The 10 Critical Elements for Success in Volatile Times (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10902.mp3'><b>Leading the Way:</b></a> Three Truths from the Top Companies for Leaders (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/153.mp3'><b>Leading Your Team:</b></a> How To Involve and Inspire Teams (Nicholas Brealey Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/41.mp3'><b>Lessons from the Top:</b></a> The Search for America''s Best Business Leaders (Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/433.mp3'><b>Making A Difference:</b></a> Twelve Qualities That Make You A Leader (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10964.mp3'><b>Measure of a Leader:</b></a> An Actionable Formula for Legendary Leadership (Performance Management Publications (PMP)).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/651.mp3'><b>Moments of Truth:</b></a>  (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/472.mp3'><b>On Becoming a Leader:</b></a>  (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10899.mp3'><b>Organizational Culture and Leadership:</b></a> 3rd Edition (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/311.mp3'><b>Principle-Centered Leadership:</b></a>  (Summit Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10976.mp3'><b>Secrets of an Executive Coach:</b></a> Proven Methods for Helping Leaders Excel Under Pressure (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/448.mp3'><b>SuperLeadership:</b></a> Leading Others To Lead Themselves (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10841.mp3'><b>Tales From The Top:</b></a> Ten Crucial Questions from the World's #1 Executive Coach (Nelson Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10909.mp3'><b>The 360-Degree Leader:</b></a> Developing Your Influence from Anywhere in the Organization (Thomas Nelson).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/29.mp3'><b>The Arc of Ambition:</b></a> Defining the Leadership Journey (Perseus Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/403.mp3'><b>The Art of the Leader:</b></a>  (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/250.mp3'><b>The CEO Paradox:</b></a> The Privilege and Accountability of Leadership (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/689.mp3'><b>The Classic Touch:</b></a> Lessons in Leadership from Homer (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13836.mp3'><b>The DNA of Leadership:</b></a> Leverage Your Instincts to Communicate, Differentiate, Innovate (Adams Media).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10977.mp3'><b>The Extraordinary Leader:</b></a> Turning Good Managers Into Great Leaders (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/368.mp3'><b>The Female Advantage:</b></a> Women’s Ways of Leadership (Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/607.mp3'><b>The Leadership Challenge:</b></a> How to Get Extraordinary Things Done in Organizations (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10973.mp3'><b>The Leadership Challenge:</b></a> Third Edition (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10890.mp3'><b>The Leadership Gap:</b></a> Building Leadership Capacity for Competitive Advantage (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10938.mp3'><b>The Legacy Leader:</b></a> Leadership with a Purpose (1stBooks).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11020.mp3'><b>The New Market Leaders:</b></a> Who's Winning and How in the Battle for Customers (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14670.mp3'><b>The Productive Narcissist:</b></a> The Promise and Peril of Visionary Leadership (Broadway Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10941.mp3'><b>The Skilled Negotiator:</b></a> Mastering the Language of Engagement (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10846.mp3'><b>The Source of Success:</b></a> Five Enduring Principles at the Heart of Real Leadership (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15134.mp3'><b>The Starfish and the Spider:</b></a> The Unstoppable Power of Leaderless Organizations (Penguin Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10962.mp3'><b>The Third Opinion:</b></a> How Successful Leaders Use Outside Insight to Create Superior Results (Penguin Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/253.mp3'><b>Visionary Leadership:</b></a>  (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/582.mp3'><b>Win-Win Negotiating:</b></a> Turning Conflict into Agreement (John Wiley & Sons).<br>

</div>

<div id="div12" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/95.mp3'><b>21st Century Corporate Board:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/373.mp3'><b>A Rock and a Hard Place:</b></a> How To Make Ethical Business Decisions When the Choices Are Tough (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/328.mp3'><b>Answers for Managers:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/629.mp3'><b>Asking 'Just Right' Business Questions:</b></a>  (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/639.mp3'><b>Augustine's Laws:</b></a>  (Viking Penguin India).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/540.mp3'><b>Beyond The Quick Fix:</b></a> Managing Five Tracks to Organizational Success (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/56.mp3'><b>Boards at Work:</b></a> How Corporate Boards Create Competitive Advantage (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10960.mp3'><b>Breakthrough:</b></a> How Great Companies Set Outrageous Objectives-and Achieve Them (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/376.mp3'><b>Contrarian Management:</b></a> Commonsense Antidotes to Business Fads & Fallacies (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/489.mp3'><b>Corporate Lifecycles:</b></a> How and Why Corporations Grow and Die (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/85.mp3'><b>Drucker on Asia:</b></a> A Dialogue Between Peter Drucker and Isao Nakauchi (Butterworth-Heinemann).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/280.mp3'><b>EcoManagement:</b></a> The Elmwood Guide to Ecological Auditing and Sustainable Business (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/445.mp3'><b>Further Up the Organization:</b></a> How to Stop Management from Stifling People and Strangling Productivity (Alfred A. Knopf).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/616.mp3'><b>Gaining Control of the Corporate Culture:</b></a>  (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/265.mp3'><b>Healing the Wounds:</b></a> Overcoming the Trauma of Layoffs and Revitalizing Downsized Organizations (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/345.mp3'><b>In Transition:</b></a> From the Harvard Business School Club of New York’s Career Management Seminar (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/336.mp3'><b>Inside the Harvard Business School:</b></a> Strategies and Lessons of America’s Leading School of Business (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/244.mp3'><b>Instant Management:</b></a> The Best Ideas From the People Who Have Made a Difference in How We Manage (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/631.mp3'><b>Japanese-Style Management:</b></a> An Insider's Analysis (Kodansha International).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/260.mp3'><b>Liberation Management:</b></a> Necessary Disorganization for the Nanosecond Nineties (Alfred A. Knopf).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10891.mp3'><b>Living on the Fault Line:</b></a> Managing for Shareholder Value in Any Economy (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10870.mp3'><b>Management Malpractice:</b></a> How to Cure Unhealthy Management Practices That Disable Your Organization (Platinum Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/422.mp3'><b>Management Support Systems:</b></a> A Pragmatic Approach (Van Nostrand Reinhold).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/638.mp3'><b>Managerial Courage:</b></a> Revitalizing Your Company Without Sacrificing Your Job (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10956.mp3'><b>Managers Not MBAs:</b></a> A Hard Look at the Soft Practice of Managing and Management Development (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/513.mp3'><b>Managing:</b></a>  (Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/537.mp3'><b>Managing Corporate Culture:</b></a>  (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/471.mp3'><b>Managing for Excellence:</b></a> The Guide to Developing High Performance in Contemporary Organizations (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/637.mp3'><b>Managing for Results:</b></a> Economic Tasks and Risk-Taking Decisions (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11031.mp3'><b>Managing Global Accounts:</b></a> Nine Critical Factors for a World-Class Program (South-Western Educational Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/656.mp3'><b>Managing Innovation:</b></a> From the Executive Suite to the Shop Floor (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3375.mp3'><b>Managing Inter@ctively:</b></a> Executing Business Strategy, Improving Communication, and Creating a Knowledge-Sharing Culture (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/295.mp3'><b>Managing With Integrity:</b></a> Insights From America’s CEOs (Praeger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/78.mp3'><b>Maslow on Management:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/686.mp3'><b>Millennium Management:</b></a> Last Chance for American Business (New Century).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/2039.mp3'><b>Mind of the CEO:</b></a>  (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/495.mp3'><b>Modern Approaches to Understanding and Managing Organizations:</b></a>  (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/667.mp3'><b>No-Nonsense Delegation:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/578.mp3'><b>Quality Without Tears:</b></a> The Art of Hassle-Free Management (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/170.mp3'><b>Reengineering Management:</b></a> The Mandate for New Leadership (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/289.mp3'><b>Reengineering the Corporation:</b></a> A Manifesto for Business Revolution (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/296.mp3'><b>Reframing Organizations:</b></a> Artistry, Choice, and Leadership (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/652.mp3'><b>Running American Business:</b></a> Top CEOs Rethink Their Major Decisions (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/417.mp3'><b>Service Management and Marketing:</b></a> Managing the Moments of Truth In Service Competition (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/364.mp3'><b>Service Management Effectiveness:</b></a> Balancing Strategy, Organization and Human Resources, Operations, and Marketing (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/367.mp3'><b>Service Within:</b></a> Solving the Middle Management Leadership Crisis (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/47.mp3'><b>Shortcuts for Smart Managers:</b></a> Checklists, Worksheets & Action Plans for Managers with No Time to Waste (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10954.mp3'><b>Social Power and the CEO:</b></a> Leadership and Trust in a Sustainable Free Enterprise System (Quorum Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/660.mp3'><b>Success and Betrayal:</b></a> The Crisis of Women in Corporate America (Franklin Watts).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10998.mp3'><b>Survival Is Not Enough:</b></a> Zooming, Evolution,and the Future of Your Company (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/172.mp3'><b>Talking to the Top:</b></a> Executive’s Guide to Career-Making Presentations Career-Making Presentations (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/512.mp3'><b>The Adaptive Corporation:</b></a>  (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11015.mp3'><b>The Agenda:</b></a> What Every Business Must Do to Dominate the Decade (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/414.mp3'><b>The Androgynous Manager:</b></a> Blending Male and Female Management Styles for Today's Organizations (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/617.mp3'><b>The Art of Managing:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/462.mp3'><b>The Business of Business:</b></a> How 100 Businesses Really Work (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/678.mp3'><b>The Corporate Survivors:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/451.mp3'><b>The Eternal Venture Spirit:</b></a> An Executive's Practical Philosophy (Productivity Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/664.mp3'><b>The Frontiers of Management:</b></a> Where Tomorrow's Decisions Are Being Shaped Today (E.P. Dutton).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/605.mp3'><b>The Future 500:</b></a> Creating Tomorrow's Organizations Today (New American Library).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/149.mp3'><b>The Great Transition:</b></a> Using the Seven Disciplines of Enterprise Engineering To Align People, Technology, and Strategy (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/132.mp3'><b>The Individualized Corporation:</b></a> A Fundamental New Approach to Management (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/618.mp3'><b>The Intuitive Manager:</b></a>  (Little, Brown & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/588.mp3'><b>The Knowledge Executive:</b></a>  (Truman Talley Books/Dutton).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/30.mp3'><b>The Management Century:</b></a> A Critical Review of 20th Century Thought and Practice (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/558.mp3'><b>The Management Challenge:</b></a> Japanese Views (The MIT Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/620.mp3'><b>The Managerial Imperative:</b></a> The Age of Macromanagement (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/89.mp3'><b>The New Organizational Wealth:</b></a> Managing & Measuring Knowledge-Based Assets (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10900.mp3'><b>The One Thing You Need to Know:</b></a> About Great Managing, Great Leading, and Sustained Individual Success (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/457.mp3'><b>The Politics of Management:</b></a>  (Nichols).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/229.mp3'><b>The Race Without a Finish Line:</b></a> America’s Quest for Total Quality (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14386.mp3'><b>The Transparency Edge:</b></a> How Credibility Can Make or Break You in Business (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/627.mp3'><b>The Winning Corporation:</b></a> Management Practices That Work (Acropolis).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/576.mp3'><b>The Winning Streak:</b></a> On Sustaining Success When Times Are Tough: Lessons from Britain's Top Companies (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/92.mp3'><b>The Witch Doctors:</b></a> Making Sense of the Management Gurus (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/559.mp3'><b>The World Class Executive:</b></a> How to Do Business Like a Pro Around the World (Rawson Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10959.mp3'><b>Thinking Inside The Box:</b></a> The 12 Timeless Rules for Managing a Successful Business (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/628.mp3'><b>Thriving on Chaos:</b></a> TOM PETERS- Handbook for a Management Revolution (Alfred A. Knopf).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/119.mp3'><b>Turned On:</b></a> Eight Vital Insights to Energize Your People, Customers, and Profits (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/329.mp3'><b>Understanding and Managing Public Organizations:</b></a>  (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/351.mp3'><b>Unlimited Wealth:</b></a> The Theory and Practice of Economic Alchemy (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/603.mp3'><b>Views from the Top:</b></a> Establishing the Foundation for the Future of Business (Facts on File Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/396.mp3'><b>Vision Management:</b></a> Translating Strategy Into Action (Productivity Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/636.mp3'><b>Wareham's Basic Business Types:</b></a>  (Atheneum).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/205.mp3'><b>What America Does Right:</b></a> Learning From Companies That Put People First (W. W. Norton & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/690.mp3'><b>What Every Executive Better Know About the Law:</b></a>  (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/646.mp3'><b>What Works for Me:</b></a> 16 CEOs Talk About Their Careers and Commitments (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/195.mp3'><b>White Collar Blues:</b></a> Management Loyalties in an Age of Corporate Restructuring (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10939.mp3'><b>Why Smart Executives Fail:</b></a> And What You Can Learn from Their Mistakes (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/207.mp3'><b>Working the Shadow Side:</b></a> A Guide to Positive Behind-the-Scenes Management (Jossey-Bass Publishers).<br>

</div>

<div id="div13" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/240.mp3'><b>AfterMarketing:</b></a> How To Keep Customers for Life Through Relationship Marketing (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10915.mp3'><b>Ageless Marketing:</b></a> Strategies for Reaching the Hearts and Minds of the New Customer Majority (Dearborn).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/177.mp3'><b>All Consumers Are Not Created Equal:</b></a> The Differential Marketing Strategy for Brand Loyalty and Profits (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10997.mp3'><b>Beyond "E":</b></a> 12 Ways Technology Is Transforming Sales and Marketing Strategy (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10927.mp3'><b>Beyond Selling Value:</b></a> A Proven Process to Avoid the Vendor Trap (Dearborn).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10871.mp3'><b>Brand Sense:</b></a> Build Powerful Brands through Touch, Taste, Smell, Sight, and Sound (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10881.mp3'><b>Coming to Concurrence:</b></a> Addressable Attitudes and the New Model for Marketing Productivity (Racom Communications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10923.mp3'><b>Conquering Consumerspace:</b></a> Marketing Strategies for a Branded World (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10848.mp3'><b>Counter-Intuitive Marketing:</b></a> Achieve Great Results Using Uncommon Sense (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3131.mp3'><b>Digital Marketing:</b></a> Global Strategies from the World’s Leading Experts (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/241.mp3'><b>Doing Well While Doing Good:</b></a> The Marketing Link Between Business & Nonprofit Causes (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11030.mp3'><b>e-loyalty:</b></a> How to Keep Customers Coming Back to Your Website (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10929.mp3'><b>Enterprise Marketing Management:</b></a> The New Science of Marketing (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10990.mp3'><b>Hope Is Not a Strategy:</b></a> The 6 Keys to Winning the Complex Sale (Nautilus Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/200.mp3'><b>How To Make a Fortune on the Information Superhighway:</b></a> Everyone’s Guerrilla Guide to Marketing on the Internet and Other On-Line Services (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10926.mp3'><b>How Winners Sell:</b></a> 21 Proven Strategies to Outsell Your Competition & Win the Big Sale (Bard Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/165.mp3'><b>Implementing Supplier Partnerships:</b></a> How To Lower Costs and Improve Service (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10893.mp3'><b>In Search of Business Value:</b></a> Ensuring a Return on Your Technology Investment (SelectBooks).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/126.mp3'><b>Integrated Account Management:</b></a> How Business-to-Business Marketers Maximize Customer Loyalty and Profitability (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10847.mp3'><b>Lean Solutions:</b></a> How Companies and Customers Can Create Value and Wealth Together (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/146.mp3'><b>Let Your Customers Do the Talking:</b></a> 301 + Word-of-Mouth Marketing Tactics Guaranteed To Boost Profits (Upstart Publishing Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/140.mp3'><b>Market Unbound:</b></a> Unleashing Global Capitalism (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/551.mp3'><b>Marketing High Technology:</b></a>  (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10931.mp3'><b>Marketing Insights from A to Z:</b></a> 80 Concepts Every Manager Needs to Know (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/504.mp3'><b>Marketing Mistakes:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/215.mp3'><b>Multicultural Marketing:</b></a> Selling to a Diverse America (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/657.mp3'><b>No Contest:</b></a> The Case Against Competition (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/531.mp3'><b>Pioneering New Products:</b></a> A Market Survival Guide (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/413.mp3'><b>Power Base Selling:</b></a> Secrets of An Ivy League Street Fighter (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/494.mp3'><b>Romancing the Brand:</b></a> The Power of Advertising and How to Use It (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/274.mp3'><b>Save Your Business a Bundle:</b></a> 202 Ways To Cut Costs and Boost Profits Now—For Companies of Any Size (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/267.mp3'><b>Segmentation Marketing:</b></a> New Methods for Capturing Business Markets (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/519.mp3'><b>Six Timeless Marketing Blunders:</b></a>  (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/193.mp3'><b>TechnoBrands:</b></a> How To Create & Use 'Brand Identity' To Market, Advertise & Sell Technology Products (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3505.mp3'><b>Techno-Ready Marketing:</b></a> How and Why Your Customers Adopt Technology (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14.mp3'><b>The 11 Immutable Laws of Internet Branding:</b></a>  (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/184.mp3'><b>The Discipline of Market Leaders:</b></a> Choose Your Customer, Narrow Your Focus, Dominate Your Market (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/395.mp3'><b>The Domino Effect:</b></a> How To Grow Sales, Profits, and Market Share Through Supervision (Business One Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/482.mp3'><b>The Mirror Makers:</b></a> A History of American Advertising and Its Creators (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/575.mp3'><b>The New Competition:</b></a> What Theory Z Didn't Tell You About Marketing (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15797.mp3'><b>Treasure Hunt:</b></a> Inside the Mind of the New Global Consumer (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/124.mp3'><b>What Were They Thinking?:</b></a> Marketing Lessons I've Learned from Over 80,000 New Products Innovations and Idiocies (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10914.mp3'><b>Winning at Retail:</b></a> Developing a Sustained Model for Retail Success (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/469.mp3'><b>Winning Back Your Market:</b></a> The Inside Stories of the Companies that Did It (John Wiley & Sons).<br>

</div>

<div id="div14" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10844.mp3'><b>Beyond Code:</b></a> Learn to distinguish yourself in 9 simple steps (SelectBooks).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10859.mp3'><b>Blink:</b></a> The Power of Thinking Without Thinking (Time Warner Book Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10937.mp3'><b>Building the Bridge As You Walk On It:</b></a> A Guide for Leading Change (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10965.mp3'><b>BusinessThink:</b></a> Rules for Getting It Right-Now and No Matter What! (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/569.mp3'><b>Climbing the Corporate Matterhorn:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10916.mp3'><b>Confidence:</b></a> How Winning Streaks & Losing Streaks Begin & End (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10860.mp3'><b>Creating the Good Life:</b></a> Applying Aristotle's Wisdom to Find Meaning and Happiness (Rodale Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10949.mp3'><b>Cycles:</b></a> How We Will Live, Work, and Buy (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14662.mp3'><b>Diversity: Leaders Not Labels:</b></a> A New Plan for the 21st Century (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/697.mp3'><b>Don’t Waste Your Talent:</b></a> The 8 Critical Steps to Discovering What You Do Best (Longstreet Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/291.mp3'><b>Downshifting:</b></a> Reinventing Success on a Slower Track (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10864.mp3'><b>Execution:</b></a> The Discipline of Getting Things Done (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10936.mp3'><b>Face It:</b></a> Recognizing and Conquering the Hidden Fear That Drives All Conflict at Work (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/334.mp3'><b>Future Edge:</b></a> Discovering the New Paradigms of Success (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10876.mp3'><b>FutureThink:</b></a> How to Think Clearly in a Time of Change (Pearson Education).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/611.mp3'><b>Getting the Best Out of Yourself and Others:</b></a>  (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/224.mp3'><b>Healthy, Wealthy, & Wise:</b></a> A Step-by-step Plan for Success Through Healthful Living (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/466.mp3'><b>How To Retire Young:</b></a>  (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/377.mp3'><b>How To Stay Cool, Calm & Collected When the Pressure’s On:</b></a> A Stress-Control Plan for Businesspeople (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/515.mp3'><b>How to Talk So People Listen:</b></a> The Real Key to Job Success (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/242.mp3'><b>I Wish I’d Said That!:</b></a> How To Talk Your Way Out of Trouble and Into Success (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/359.mp3'><b>Influence Without Authority:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/599.mp3'><b>John T. Molloy's New Dress for Success:</b></a>  (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15794.mp3'><b>Kiss Theory Good Bye:</b></a> Five Proven Ways to Get Extraordinary Results in Any Company (Gold Pen Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/507.mp3'><b>Leaving the Office Behind:</b></a>  (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/310.mp3'><b>Lure the Tiger Out of the Mountains:</b></a> The 36 Stratagems of Ancient China (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/687.mp3'><b>Modern Madness:</b></a> The Emotional Fallout of Success (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/688.mp3'><b>Never Work for a Jerk!:</b></a>  (Franklin Watts).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/600.mp3'><b>Personal Power:</b></a> An Orthodox Guide to Success (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/261.mp3'><b>Playing the Great Game of Golf:</b></a> Making Every Minute Count (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10918.mp3'><b>Prisoners of Our Thoughts:</b></a> Viktor Frankl's Principles at Work (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15800.mp3'><b>Run With the Bulls Without Getting Trampled:</b></a> The Qualities You Need to Stay Out of Harm's Way and Thrive at Work (Nelson Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15805.mp3'><b>Smarts:</b></a> Are We Hardwired for Success? (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14673.mp3'><b>Succeed On Your Own Terms:</b></a> Lessons from Top Achievers Around the World on Developing Your Unique Potential (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14671.mp3'><b>Success Built to Last:</b></a> Creating a Life That Matters (Pearson Education).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10903.mp3'><b>The 8th Habit:</b></a> From Effectiveness to Greatness (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15809.mp3'><b>The Adversity Advantage:</b></a> Turning Everyday Struggles into Everyday Greatness (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/584.mp3'><b>The Hardy Executive:</b></a> Health Under Stress (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/203.mp3'><b>The Human Element:</b></a> Productivity, Self-Esteem and the Bottom Line (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11004.mp3'><b>The Likeability Factor:</b></a> How to Boost Your L-Factor & Achieve Your Life's Dreams (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13837.mp3'><b>The Next Level:</b></a> What Insiders Know About Executive Succes (Davies-Black Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10840.mp3'><b>The Number:</b></a> A Completely Different Way to Think About the Rest of Your Life (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/525.mp3'><b>The One Minute Sales Person:</b></a>  (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11007.mp3'><b>The Other 90%:</b></a> How To Unlock Your Vast Untapped Potential For Leadership & Life (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/625.mp3'><b>The Plateauing Trap:</b></a> How to Avoid It in Your Career...and Your Life (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10946.mp3'><b>The Power of Full Engagement:</b></a> Managing Energy, Not Time, Is the Key to High Performance and Personal Renewal (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/218.mp3'><b>The Reinvention of Work:</b></a> A New Vision of Livelihood for Our Time (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15806.mp3'><b>What Got You Here Won't Get You There:</b></a> How Successful People Become Even More Successful (Hyperion).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/397.mp3'><b>What To Say To Get What You Want:</b></a> Strong Words for 44 Challenging Types of Bosses, Employees, Coworkers and Customers (Addison-Wesley).<br>

</div>

<div id="div15" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/299.mp3'><b>A Better Idea:</b></a> Redefining the Way Americans Work (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/487.mp3'><b>Competing Through Productivity and Quality:</b></a>  (Productivity Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/371.mp3'><b>Continuous Improvement in Operations:</b></a> A Systematic Approach to Waste Reduction (Productivity Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/52.mp3'><b>Critical Shift:</b></a> The Future of Quality in Organizational Performance (ASQ Quality Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11019.mp3'><b>Free Agent Nation:</b></a> How America's New Independent Workers Are Transforming the Way We Live (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15812.mp3'><b>Go Put Your Strengths to Work:</b></a> 6 Powerful Steps to Achieve Outstanding Performance (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/243.mp3'><b>Idea Power:</b></a> Techniques & Resources To Unleash the Creativity in Your Organization (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/425.mp3'><b>Industrial Renaissance:</b></a> Producing a Competitive Future for America (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10953.mp3'><b>Less Is More:</b></a> How Great Companies Use Productivity as a Competitive Tool in Business (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/2045.mp3'><b>Love the Work You're With:</b></a> A Practical Guide to Finding New Joy and Productivity in Your Job (Henry Holt and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/492.mp3'><b>Made in America:</b></a> Regaining the Productive Edge (The MIT Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/233.mp3'><b>Maximizing Employee Productivity:</b></a> A Manager's Guide (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/426.mp3'><b>Productivity Through Work Innovations-The Innovative Organization: Productivity Programs in Action:</b></a>  (Pergamon Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/612.mp3'><b>Professionalizing the Organization:</b></a> Reducing Bureaucracy to Enhance Effectiveness (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11001.mp3'><b>The Business of Innovation:</b></a> Managing the Corporate Imaginationfor Maximum Results (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/228.mp3'><b>The Inventive Organization:</b></a> Hope and Daring at Work (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/553.mp3'><b>The Organized Executive:</b></a> A Program for Productivity: New Ways to Manage Time, Paper, and People (Warner Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/456.mp3'><b>The Productivity Challenge:</b></a>  (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/619.mp3'><b>Winning the Productivity Race:</b></a>  (Lexington Books).<br>

</div>

<div id="div16" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10940.mp3'><b>Beyond Neutrality:</b></a> Confronting the Crisis in Conflict Resolution (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13.mp3'><b>Clients for Life:</b></a> How Great Professionals Develop Breakthrough Relationships (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10978.mp3'><b>Collaborative Approaches to Resolving Conflict:</b></a>  (Sage Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10972.mp3'><b>Crucial Confrontations:</b></a> Tools for Resolving Broken Promises, Violated Expectations, and Bad Behavior (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/144.mp3'><b>Frames of Reference:</b></a> How Men and Women Can Overcome Communication Barriers - and Increase Their Effectiveness at Work (Peterson’s/Pacesetter Book).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/38.mp3'><b>Generations at Work:</b></a> Managing the Clash of Veterans, Boomers, Xers, and Nexters in Your Workplace (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/683.mp3'><b>Good-bye to the Low Profile:</b></a> The Art of Creative Confrontation (Little, Brown & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/383.mp3'><b>Neanderthals at Work:</b></a> How People and Politics Can Drive You Crazy. . . And What You Can Do About Them (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/98.mp3'><b>One Size Fits One:</b></a> Building Relationships One Customer and One Employee at a Time (Van Nostrand Reinhold).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12283.mp3'><b>Power Mentoring:</b></a> How Successful Mentors and Protégés Get the Most Out of Their Relationships (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/141.mp3'><b>Supply Chain Optimization:</b></a> Building the Strongest Total Business Network (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/131.mp3'><b>Territorial Games:</b></a> Understanding & Ending Turf Wars at Work (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14387.mp3'><b>The Art of Connecting:</b></a> How to Overcome Differences, Build Rapport, and Communicate Effectively with Anyone (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/49.mp3'><b>The Office Romance:</b></a> Playing With Fire Without Getting Burned (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14666.mp3'><b>The Speed of Trust:</b></a> The One Thing That Changes Everything (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/20.mp3'><b>Trusted Partners:</b></a> How Companies Build Mutual Trust and Win Together (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/197.mp3'><b>Why Didn’t You Say That in the First Place?:</b></a> How To Be Understood at Work (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15793.mp3'><b>Working with Americans:</b></a> How to Build Profitable Business Relationships (Pearson Education).<br>

</div>

<div id="div17" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/511.mp3'><b>From Baby Boom to Baby Bust:</b></a> How Business Can Meet the Demographic Challenge (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/355.mp3'><b>Hothouse Earth:</b></a> The Greenhouse Effect and Gaia (Grove Weidenfeld).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/201.mp3'><b>In Pursuit of Principle and Profit:</b></a> Business Success Through Social Responsibility (G.P. Putnam’s Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/346.mp3'><b>Investing From the Heart:</b></a> A Guide to Socially Responsible Investments and Money Management (Crown Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/278.mp3'><b>The Ecology of Commerce:</b></a> A Declaration of Sustainability (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/298.mp3'><b>The E-Factor:</b></a> The Bottom-Line Approach to Environmentally Responsible Business (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/502.mp3'><b>The Moral Dimension:</b></a> Toward a New Economics (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10886.mp3'><b>The Support Economy:</b></a> Why Corporations Are Failing Individuals and the Next Episode of Capitalism (Viking Penguin India).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/390.mp3'><b>Transforming the Crisis-Prone Organization:</b></a> Preventing Individual, Organizational, and Environmental Tragedies (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/154.mp3'><b>Tyranny of the Bottom Line:</b></a> Why Corporations Make Good People Do Bad Things (Berrett-Koehler).<br>

</div>

<div id="div18" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/304.mp3'><b>2020 Vision:</b></a> Turbocharge Your Business TodayTo Thrive in Tomorrow’s Economy (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15801.mp3'><b>Achieve Sales Excellence:</b></a> The 7 Customer Rules for Becoming the New Sales Professional (Adams Media).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/546.mp3'><b>At America's Service:</b></a> How Corporations Can Revolutionize the Way They Treat Their Customers (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10854.mp3'><b>Bigger Isnt Always Better:</b></a> The New Mindset for Real Business Growth (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11025.mp3'><b>Breakthrough Creativity:</b></a> Achieving Top Performance Using the Eight Creative Talents (Davies-Black Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10950.mp3'><b>Building A Knowledge-Driven Organization:</b></a> Overcome Resistance to a Free Flow of Ideas (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/162.mp3'><b>Building Brand Identity:</b></a> A Strategy for Success in a Hostile Marketplace (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10932.mp3'><b>Building the Brand-Driven Business:</b></a> Operationalize Your Brand to Drive Profitable Growth (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13839.mp3'><b>Built to Change:</b></a> How to Achieve Sustained Organizational Effectiveness (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/306.mp3'><b>By the Numbers:</b></a> Using Demographics and Psychographics for Business Growth in the ’90s (Bonus Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/9.mp3'><b>Capitalize on Merger Chaos:</b></a> Six Ways to Profit from Your Competitor’s Consolidation and Your Own (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/72.mp3'><b>Clockspeed:</b></a> Winning Industry Control in the Age of Temporary Advantage (Perseus Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/262.mp3'><b>Collaborating To Compete:</b></a> Using Strategic Alliances and Acquisitions in the Global Marketplace (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10839.mp3'><b>Competition Demystified:</b></a> A Radically Simplified Approach to Business Strategy (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/539.mp3'><b>Competitive Advantage:</b></a> Creating and Sustaining Superior Performance (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10933.mp3'><b>Competitive Solutions:</b></a> The Strategist's Toolkit (Princeton University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/510.mp3'><b>Competitiveness:</b></a> The Executive's Guide to Success (M. E. Sharpe Inc.).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10993.mp3'><b>Competitor Targeting:</b></a> Winning the Battle for Market and Customer Share (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/136.mp3'><b>Co-opetition:</b></a>  (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/277.mp3'><b>Corporate Realities and Environmental Truths:</b></a> Strategies for Leading Your Business in the Environmental Era (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/21.mp3'><b>Cracking the Value Code:</b></a> How Successful Businesses Are Creating Wealth in the New Economy (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/674.mp3'><b>Creating Shareholder Value:</b></a> The New Standard for Business Performance (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/374.mp3'><b>Creating Strategic Leverage:</b></a> Matching Company Strengths With Market Opportunities (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/290.mp3'><b>Creating Value for Customers:</b></a> Designing & Implementing a Total Corporate Strategy (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10884.mp3'><b>Creating WE:</b></a> Change I-Thinking to WE-Thinking Build a Healthy, Thriving Organization (Platinum Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10872.mp3'><b>Designing the Customer-Centric Organization:</b></a> A Guide to Strategy, Structure, and Process (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/527.mp3'><b>Developing Business Strategies:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11032.mp3'><b>Differentiate or Die:</b></a> Survival in Our Era of Killer Competition (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/64.mp3'><b>Discovering the Soul of Service:</b></a> The Nine Drivers of Sustainable Business (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10961.mp3'><b>Double-Digit Growth:</b></a> How Great Companies Achieve It- No Matter What (Portfolio).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/609.mp3'><b>Downsizing:</b></a> Reshaping the Corporation for the Future (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/106.mp3'><b>Driving Change:</b></a> How the Best Companies Are Preparing for the 21st Century (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/110.mp3'><b>Enterprise One to One:</b></a> Tools for Competing in the Interactive Age (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11034.mp3'><b>e-Profit:</b></a> High Payoff Strategies for Capturing the E-Commerce Edge (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/74.mp3'><b>Every Business Is a Growth Business:</b></a> How Your Company Can Prosper Year After Year (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/257.mp3'><b>Every Street Is Paved With Gold:</b></a> The Road to Real Success (William Morrow and Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/333.mp3'><b>Financial Self-Defense:</b></a> How To Win the Fight for Financial Freedom (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/112.mp3'><b>Focus:</b></a> The Future of Your Company Depends on It (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10910.mp3'><b>From Selling to Serving:</b></a> The Essence of Client Creation (Dearborn).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/114.mp3'><b>From the Ground Up:</b></a> Six Principles for Building the New Logic Corporation (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/115.mp3'><b>Future Perfect:</b></a> Tenth Anniversary Edition (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/447.mp3'><b>FutureScope:</b></a> Success Strategies For The 1990s & Beyond (Longman Financial Services Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/594.mp3'><b>Game Plans:</b></a>  (E.P. Dutton).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/337.mp3'><b>Global Corporate Alliances and the Competitive Edge:</b></a> Strategies and Tactics for Management (Quorum Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/169.mp3'><b>He Works She Works:</b></a> Successful Strategies for Working Couples (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/97.mp3'><b>Heads You Win:</b></a> How the Best Companies Think (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/666.mp3'><b>High-Involvement Management:</b></a> Participative Strategies for Improving Organizational Performance (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10957.mp3'><b>How Great Decisions Get Made:</b></a> 10 Easy Steps for Reaching Agreement on Even the Toughest Issues (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11028.mp3'><b>How the Way We Talk Can Change the Way We Work:</b></a> Seven Languages for Transformation and the New Laws of Business (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/691.mp3'><b>How We Talk:</b></a> Seven Languages for Transformation and the New Laws of Business (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/380.mp3'><b>Hypergrowth:</b></a> Applying the Success Formula of Today’s Fastest Growing Companies (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/696.mp3'><b>It’s Not the Big that Eat the Small …It’s the Fast that Eat the Slow:</b></a> How to Use Speed as a Competitive Tool in Business (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/167.mp3'><b>Leading Change:</b></a> Overcoming the Ideology of Comfort and the Tyranny of Custom (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/127.mp3'><b>Leading Corporate Transformation:</b></a> A Blueprint for Business Renewal (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/246.mp3'><b>Lightning Strategies for Innovation:</b></a> How the World’s Best Firms Create New Products (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10885.mp3'><b>Lion Taming:</b></a> Working Successfully with Leaders, Bosses and Other Tough Customers (Sourcebooks).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12287.mp3'><b>Making Strategy Work:</b></a> Leading Effective Execution and Change (Pearson Education).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/86.mp3'><b>Managers as Facilitators:</b></a> A Practical Guide to Getting Work Done in a Changing Workplace (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/529.mp3'><b>Managers Caught in the Crunch:</b></a> Turning a Job Crisis into a Career Opportunity (Franklin Watts).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/498.mp3'><b>Managing by Negotiations:</b></a>  (Van Nostrand Reinhold).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/168.mp3'><b>Managing Imitation Strategies:</b></a> How Later Entrants Seize Markets from Pioneers (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/401.mp3'><b>Managing On The Edge:</b></a> How the Smartest Companies Use Conflict To Stay Ahead (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/633.mp3'><b>Manufacturing for Competitive Advantage:</b></a> Becoming a World Class Manufacturer (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/118.mp3'><b>Mean Business:</b></a> How I Save Bad Companies and Make Good Companies Great (Times Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/461.mp3'><b>New Corporate Ventures:</b></a> How To Make Them Work (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10925.mp3'><b>Offshore Outsourcing:</b></a> Business Models, ROI and Best Practices (Mivar Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11027.mp3'><b>One to One B2B:</b></a> Customer Relationship Management Strategies for the Real Economy (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3421.mp3'><b>One to One B2B:</b></a> Customer Relationship Management Strategies for the Real Economy (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/517.mp3'><b>One Up on Wall Street:</b></a> How to Use What You Already Know to Make Money in the Market (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/156.mp3'><b>Only the Paranoid Survive:</b></a> How To Exploit Crisis Points That Challenge Every Company and Career (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11024.mp3'><b>Partners.Com:</b></a> How to Profit from the New DNA of Business (Perseus Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/680.mp3'><b>Protecting Your Business Secrets:</b></a>  (Nichols).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/65.mp3'><b>Pushing the Envelope:</b></a> All the Way to the Top (Ballantine Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10999.mp3'><b>Radical E:</b></a> Lessons on How to Rule the Web (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/67.mp3'><b>Radical Marketing:</b></a> From Harvard to Harley, Lessons from Ten That Broke the Rules and Made It Big (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/419.mp3'><b>Raising Money:</b></a> Venture Funding & How to Get It (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10943.mp3'><b>Reinventing Strategy:</b></a> Using Strategic Learning to Create & Sustain Breakthrough Performance (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/66.mp3'><b>Rules for Revolutionaries:</b></a> The Capitalist Manifesto for Creating and Marketing New Products and Services (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15810.mp3'><b>Seduced by Success:</b></a> How the Best Companies Survive the 9 Traps of Winning (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/349.mp3'><b>Sense and Nonsense in Corporate Finance:</b></a> An Antidote to Conventional Thinking About LBOs, Capital Budgeting, Dividend Policy, and Creating Shareholder Value (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10958.mp3'><b>Shaping the Future:</b></a> A Dynamic Process for Creating and Achieving Your Company's Strategic Vision (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13835.mp3'><b>Small Giants:</b></a> Companies That Choose to Be Great Instead of Big (Penguin Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/68.mp3'><b>Smart Alliances:</b></a> A Practical Guide to Repeatable Success (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10843.mp3'><b>Social Intelligence:</b></a> The New Science of Success (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/497.mp3'><b>Staying On Top:</b></a> The Business Case for a National Industrial Strategy (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/474.mp3'><b>Strategic Issues Management:</b></a> How Organizations Influence and Respond to Public Interests and Policies (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/488.mp3'><b>Strategies for Vertical Integration:</b></a>  (Lexington Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/439.mp3'><b>Street Smarts:</b></a> New Ideas For Small Companies (Georgia State University Business Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10892.mp3'><b>Survival of the Savvy:</b></a> High-Integrity Political Tactics for Career and Company Success (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/536.mp3'><b>Taking Charge:</b></a> Making the Right Choices (Avery Publishing Group Inc.).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10842.mp3'><b>The 3 Financial Styles of Very Successful Leaders:</b></a> Strategic Approaches to Identifying the Growth Drivers of Every Company (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/550.mp3'><b>The 40 + Job-Hunting Guide:</b></a> Official Handbook of the 40 + Club (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10947.mp3'><b>The 5 Patterns of Extraordinary Careers:</b></a> The Guide for Achieving Success and Satisfaction (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15141.mp3'><b>The Allure of Toxic Leaders:</b></a> Why We Follow Destructive Bosses and Corrupt Politicians - and How We Can Survive Them (Oxford University Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/15799.mp3'><b>The Carrot Principle:</b></a> How the Best Managers Use Recognition to Engage Their People, Retain Talent, and Accelerate Performance (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/585.mp3'><b>The Competitive Challenge:</b></a> Strategies for Industrial Innovation and Renewal (Ballinger).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14672.mp3'><b>The Corporate Culture Handbook:</b></a> How to Plan, Implement and Measure a Successful Culture Change Programme (Liffey Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/438.mp3'><b>The Critical Edge:</b></a> How To Criticize Up and Down Your Organization and Make It Pay Off (Little, Brown & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/159.mp3'><b>The Death of Competition:</b></a> Leadership & Strategy in the Age of Business Ecosystems (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/283.mp3'><b>The Endangered American Dream:</b></a> How To Stop the U.S. From Becoming a Third-World Country and How To Win the Geo-Economic Struggle for Industrial Supremacy (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10913.mp3'><b>The Four Pillars of High Performance:</b></a> How Robust Organizations Achieve Extraordinary Results (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12289.mp3'><b>The Giants of Sales:</b></a> What Dale Carnegie, John Patterson, Elmer Wheeler, and Joe Girard Can Teach You About Real Sales Success (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/234.mp3'><b>The Great Reckoning:</b></a> Protect Yourself in the Coming Depression (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/398.mp3'><b>The Healthy Company:</b></a> Eight Strategies To Develop People,Productivity, and Profits (Jeremy P. Tarcher).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14664.mp3'><b>The Innovation Killer:</b></a> How What We Know Limits What We Can Imagine...And What Smart Companies Are Doing About It. (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/19.mp3'><b>The Invisible Continent:</b></a> Four Strategic Imperatives of the New Economy (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/117.mp3'><b>The Leadership Engine:</b></a> How Winning Companies Build Leaders at Every Level (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/2042.mp3'><b>The Leadership Pipeline:</b></a> How To Build the Leadership-Empowered Company (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/133.mp3'><b>The Lean Enterprise:</b></a> Designing and Managing Strategic Processes for Customer-Winning Performance (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/14385.mp3'><b>The Must-Have Customer:</b></a> 7 Steps to Winning the Customer You Haven't Got (St. Martin's Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11022.mp3'><b>The Myth of Excellence:</b></a> Why Great Companies Never Try to Be the Best at Everything (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/297.mp3'><b>The New Corporate Frontier:</b></a> The Big Move to Small Town USA (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10880.mp3'><b>The New Law of Demand and Supply:</b></a> The Revolutionary New Demand Strategy for Faster Growth and Higher Profits (Currency/Doubleday).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/271.mp3'><b>The Northbound Train:</b></a> Finding the Purpose, Setting the Direction, Shaping the Destiny of Your Organization (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/151.mp3'><b>The Paradox Principles:</b></a> How High-Performance Companies Manage Chaos, Complexity, and Contradiction To Achieve Superior Results (Irwin Professional Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10995.mp3'><b>The Passion Plan at Work:</b></a> Building a Passion-Driven Organization (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/301.mp3'><b>The Performance Edge:</b></a> New Strategies To Maximize Your Work Effectiveness & Competitive Advantage (Houghton Mifflin Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10991.mp3'><b>The Phoenix Effect:</b></a> 9 Revitalizing StrategiesNo Business Can Do Without (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10921.mp3'><b>The Power of the 2x2 Matrix:</b></a> Using 2x2 Thinking to Solve Business Problems and Make Better Decisions (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10861.mp3'><b>The Power of We:</b></a> Succeeding Through Partnerships (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10874.mp3'><b>The Prime Solution:</b></a> Close the Value Gap, Increase Margins, and Win the Complex Sale (Dearborn).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/91.mp3'><b>The Profit Zone:</b></a> How Strategic Business Design Will Lead You to Tomorrow's Profits (Times Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11005.mp3'><b>The Rule of Three:</b></a> Surviving and Thriving in Competitive Markets (Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/90.mp3'><b>The Service Profit Chain:</b></a> How Leading Companies Link Profit and Growth to Loyalty, Satisfaction, and Value (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11000.mp3'><b>The Strategy and Tactics of Pricing:</b></a> A Guide to Profitable Decision Making 3rd Edition (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10985.mp3'><b>The Tipping Point:</b></a> How Little Things Can Make a Big Difference (Little, Brown & Company).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10896.mp3'><b>The Value Profit Chain:</b></a> Treat Employees Like Customers and Customers Like Employees (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/645.mp3'><b>The Vital Difference:</b></a> Unleashing the Powers of Sustained Corporate Success (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/13833.mp3'><b>The Well-Timed Strategy:</b></a> Managing the Business Cycle for Competitive Advantage (Pearson Education).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10853.mp3'><b>Think Big, Act Small:</b></a> How America's Best Performing Companies Keep the Start-Up Spirit Alive (Penguin Group).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/567.mp3'><b>Thinking Economically:</b></a> How Economic Principles Can Contribute to Clear Thinking (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10875.mp3'><b>Time Mastery:</b></a> How Temporal Intelligence Will Make You a Stronger, More Effective Leader (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/565.mp3'><b>Time Power:</b></a>  (Harper & Row).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/327.mp3'><b>Tomorrow’s Competition:</b></a> The Next Generation of Growth Strategies (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/252.mp3'><b>Turning the Tables:</b></a> A Machiavellian Strategy for Dealing With Japan (Simon and Schuster).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/444.mp3'><b>Unwritten Rules For Your Career:</b></a> 15 Secrets For Fast Track Success (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11029.mp3'><b>Value Space:</b></a> Winning the Battle for Market Leadership: Lessons from the World's Most Admired Companies (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/3455.mp3'><b>ValueSpace:</b></a> Winning the Battle for Market Leadership: Lessons from the World’s Most Admired Companies (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11002.mp3'><b>Venture Catalyst:</b></a> The Five Strategies for Explosive Corporate Growth (Perseus Publishing).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10878.mp3'><b>We Are All Self-Employed:</b></a> How to Take Control of Your Career (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/59.mp3'><b>When Giants Stumble:</b></a> Classic Business Blunders and How to Avoid Them (Prentice Hall Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/523.mp3'><b>Who's Afraid of Big Blue?:</b></a> How Companies Are Challenging IBM-and Winning (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10984.mp3'><b>Why Decisions Fail:</b></a> Avoiding the Blunders and Traps That Lead to Debacles (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10911.mp3'><b>Why Some Companies Emerge Stronger and Better From a Crisis:</b></a> Seven Essential Lessons for Surviving Disaster (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/319.mp3'><b>Why This Horse Won’t Drink:</b></a> How To Win— and Keep—Employee Commitment (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12288.mp3'><b>Will Your Next Mistake Be Fatal?:</b></a> Avoiding the Chain of Mistakes That Can Destroy Your Organization (Pearson Education).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/105.mp3'><b>Women Breaking Through:</b></a> Overcoming the Final 10 Obstacles at Work (Peterson’s/Pacesetter Book).<br>

</div>

<div id="div19" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/204.mp3'><b>Cross-Functional Teams:</b></a> Working With Allies, Enemies and Other Strangers (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/181.mp3'><b>Designing Team-Based Organizations:</b></a> New Forms for Knowledge Work (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/81.mp3'><b>Executive Teams:</b></a> The Ultimate Guide to Turning Top Executives into a Top-Notch Team (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10967.mp3'><b>Grow Your Own Leaders:</b></a> How to Identify, Develop, and Retain Leadership Talent (Financial Times Prentice Hall).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/99.mp3'><b>Organizing Genius:</b></a> The Secrets of Creative Collaboration (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/480.mp3'><b>The M-Form Society:</b></a> How American Teamwork Can Recapture the Competitive Edge (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/389.mp3'><b>The Ultimate Advantage:</b></a> Creating the High-Involvement Organization (Jossey-Bass Publishers).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/279.mp3'><b>The Unnatural Act of Management:</b></a> When the Great Leader’s Work Is Done, The People Say, “We Did It Ourselves” (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/251.mp3'><b>Time Management for Teams:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10992.mp3'><b>When Teams Work Best:</b></a> 6,000 Team Members and LeadersTell What It Takes to Succeed (Sage Publications).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/176.mp3'><b>Why Teams Don’t Work:</b></a> What Went Wrong and How To Make It Right (Peterson’s/Pacesetter Book).<br>

</div>

<div id="div20" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/288.mp3'><b>Bringing New Products to Market:</b></a> The Art and Science of Creating Winners (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/73.mp3'><b>Competitors:</b></a> Outwitting, Outmaneuvering, and Outperforming (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/615.mp3'><b>Corporate Fraud:</b></a>  (McGraw-Hill).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11018.mp3'><b>Creative Destruction:</b></a> Why Companies That Are Built to Last Underperform the Market and How to Successfully Transform Them (Random House).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/109.mp3'><b>Cybercorp:</b></a> The New Business Revolution (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/24.mp3'><b>Digital Capitalism:</b></a> Networking the Global Market System (The MIT Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/459.mp3'><b>Excess Profits:</b></a> The Rise of United Technologies (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/440.mp3'><b>Execucomp:</b></a> Maximum Management with the New Computers (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/692.mp3'><b>How Digital Is Your Business?:</b></a> Creating the Company of the Future (Crown Business).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/173.mp3'><b>Microsoft Secrets:</b></a> How the World’s Most Powerful Software Company Creates Technology, Shapes Markets, and Manages People (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/189.mp3'><b>Profits of Science:</b></a> The American Marriage of Business and Technology (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/26.mp3'><b>Silicon Gold Rush:</b></a> The Next Generation of High-Tech Stars Rewrites the Rules of Business (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/458.mp3'><b>Silicon Valley Fever:</b></a> Growth of High-Technology Culture (Basic Books).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/598.mp3'><b>Strategy and Computers:</b></a> Information Systems as Competitive Weapons (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/293.mp3'><b>Technotrends:</b></a> How To Use Technology To Go Beyond Your Competition (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10897.mp3'><b>The E-Learning Revolution:</b></a> How Technology Is Driving a New Training Paradigm (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/442.mp3'><b>The Information Based Corporation:</b></a> Stakeholder Economics and the Technology Investment (Dow Jones-Irwin).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/11016.mp3'><b>The Internet Bubble:</b></a> The Inside Story on Why It Burst and What You Can Do to Profit Now (HarperCollins).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/586.mp3'><b>The Massachusetts Miracle:</b></a> High Technology and Economic Revitalization (The MIT Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/122.mp3'><b>The Paradox Process:</b></a> Creative Business Solutions Where You Least Expect to Find Them (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/505.mp3'><b>The Professional's Guide to Working Smarter:</b></a>  (Burrill-Ellsworth Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/455.mp3'><b>The Technology Edge:</b></a> Opportunities for America in World Competition (Simon and Schuster).<br>

</div>

<div id="div21" class="targetDiv">
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/424.mp3'><b>Financial Savvy for Singles:</b></a>  (Rawson Associates).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/420.mp3'><b>From Management Theory to Business Sense:</b></a>  (AMACOM).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/258.mp3'><b>Handbook of Business Valuation:</b></a>  (John Wiley & Sons).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/309.mp3'><b>How To Be Prepared To Think on Your Feet and Make the Best Business Presentation of Your Life:</b></a>  (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/45.mp3'><b>If We Only Knew What We Know:</b></a> The Transfer of Internal Knowledge and Best Practice (The Free Press).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/139.mp3'><b>Managers As Mentors:</b></a> Building Partnerships for Learning (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/314.mp3'><b>Mastering the Information Age:</b></a> A Course in Working Smarter, Thinking Better, and Learning Faster (Jeremy P. Tarcher).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/347.mp3'><b>Mastering the News Media Interview:</b></a> How To Succeed at Television, Radio, and Print Interviews (HarperBusiness).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/10898.mp3'><b>Online Learning Today:</b></a> Strategies That Work (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/100.mp3'><b>Performance Consulting:</b></a> Moving Beyond Training (Berrett-Koehler).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/669.mp3'><b>The Executive Course:</b></a> What Every Manager Needs to Know About the Essentials of Business (Addison-Wesley).<br>
&nbsp; &nbsp; <img src='images/blue-arrow.gif' border='0'> <a href='http://216.126.41.20/audiobooks/12284.mp3'><b>The Six Disciplines of Breakthrough Learning:</b></a> How to Turn Training and Development into Business Results (John Wiley & Sons).<br>

</div>

<script>
    fnHideAll();
</script>
</form>
<!--#include file="includes/footer.asp"-->
</body>
</html>
<!--#include file="includes/DBClose.asp"-->