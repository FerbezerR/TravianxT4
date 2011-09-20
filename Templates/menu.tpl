<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       menu.tpl                                                    ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
?>
<?php
if(!$session->logged_in) {
?>
                        <div id="side_navi">
    <ul>
        <li class="">
            <a href="index.php"><?php echo HOME; ?></a>
        </li>

        <li class="<?php echo $logactive; ?>"> 
            <a href="login.php"><?php echo LOGIN; ?></a>
        </li>

        <li class="<?php echo $regactive; ?>">
            <a href="anmelden.php"><?php echo REG; ?></a>
        </li>

                <li class="">
            <a href="" target="_blank">FORUM</a>
        </li>
        
        <li class="support">
            <a href="support.php">SUPPORT</a>
        </li>
    </ul>
</div>                                                <div class="clear"></div>
	
<?php
}
else {
?>
    <div id="side_navi">
		<a id="logo" href="<?php echo HOMEPAGE; ?>"><img src="img/x.gif" <?php if($session->plus) { echo "class=\"logo_plus\""; } ?> alt="Travian" /></a>
				<p>
			<a href="<?php echo HOMEPAGE; ?>"><?php echo HOME; ?></a>
			<a href="spieler.php?uid=<?php echo $session->uid ?>"><?php echo PROFILE; ?></a>
			<a href="#" onclick="return Popup(0,0,1);"><?php echo INSTRUCT; ?></a>
			<?php if($session->access == MULTIHUNTER) {
			echo "<a href=\"Admin/admin.php\"><font color=\"Blue\">Multihunter Panel</font></a>";
			} ?>
            <?php if($session->access == ADMIN) {
            echo "<a href=\"Admin/admin.php\"><font color=\"Red\">Admin Panel</font></a>";
            echo "<a href=\"massmessage.php\">Mass Message</a>";
            echo "<a href=\"medals.php\">Update Top 10</a>";
            echo "<a href=\"sysmsg.php\">System message</a>";
            } ?>
			<a href="logout.php"><?php echo LOGOUT; ?></a>
		</p>
<p>
	<a href="#">Forum</a>
	</p>
		<p>
					</p>
		<p>
			<a href="plus.php?id=3">Travian <b><span class="plus_g">P</span><span class="plus_o">l</span><span class="plus_g">u</span><span class="plus_o">s</span></span></span></b></a>
			<a href="spieler.php?uid=0"><b>Support</b></a>
			<a href="contact.php">Contact us!</a><br />
		</p>
					</div>
<?php
if($_SESSION['ok']=='1'){
?>
<div id="content"  class="village1">
<h1>Announcement</h1>
<h2>Hi <?php echo $session->username; ?>,</h2><br />
<?php include("Templates/text.tpl"); ?>
<center><a href="dorf1.php?ok"><h2>&raquo; Go to my village</h2></a></center>
</div>
<div id="side_info">
<?php
include("Templates/quest.tpl");
include("Templates/news.tpl");
include("Templates/multivillage.tpl");
include("Templates/links.tpl");
?>
</div>
<div class="clear"></div>
</div>
<div class="footer-stopper"></div>
<div class="clear"></div>

<?php 
include("Templates/footer.tpl"); 
include("Templates/res.tpl"); 
?>
<div id="stime">
<div id="ltime">
<div id="ltimeWrap">
Calculated in <b><?php
echo round(($generator->pageLoadTimeEnd()-$start)*1000);
?></b> ms
 
<br />Server time: <span id="tp1" class="b"><?php echo date('H:i:s'); ?></span>
</div>
	</div>
</div>

<div id="ce"></div>
</body>
</html>
<?php
die();
}
}
?>
