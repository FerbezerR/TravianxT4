<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       index.php                                                   ##
##  Developed by:  Advocaite                                                      ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

error_reporting(E_ALL);
if (!file_exists('GameEngine/config.php')) {
header("Location: install/");
}
include("GameEngine/config.php");
include("GameEngine/Database.php");
include("GameEngine/Lang/".LANG.".php");
?>
<h3 class="pop popgreen bold">Please choose a server.</h3>
<?php
//connect info for server
?>
<div class="server serverA serverbig servernormal serverbignormal ">
<a class="link" onclick="" href="anmelden.php" title="Register on Server 1.">
<span class="name"> Server 1 </span>
<?php
$users = mysql_num_rows(mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users"));
                       
                        ?>
<span class="player" title="Players in total: <?php echo $users;?>"><?php echo $users;?>  </span>
<?php
$result = mysql_query("SELECT * FROM ".TB_PREFIX."active");
                        $num_rows = mysql_num_rows($result);
                        X
                        ?>
<span class="online" title="Players online: <?php echo $num_rows;?>"><?php echo $num_rows;?>  </span>
<span class="start"> The server started <?php echo round((time()-COMMENCE)/86400);?> days ago. </span>
<span class="mark"> </span>
<img class="hover" src="img/x.gif">
</a>
</div>
