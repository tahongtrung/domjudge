# Privileges for the DOMjudge MySQL tables.
# This assumes database name 'domjudge'
#
# You can pipe this file into the 'mysql' command to set these permissions.
#
# $Id$

USE mysql;

# Add users and passwords
# Change these default passwords, and change them in etc/passwords.php too!
INSERT INTO user (Host, User, Password) VALUES ('localhost','domjudge_jury'  ,PASSWORD('jury'));
INSERT INTO user (Host, User, Password) VALUES ('localhost','domjudge_team'  ,PASSWORD('team'));
INSERT INTO user (Host, User, Password) VALUES ('localhost','domjudge_public',PASSWORD('public'));

# Juryaccount can do anything to the database
INSERT INTO db (Host, Db, User, Select_priv, Insert_priv, Update_priv, Delete_priv) VALUES ('localhost','domjudge','domjudge_jury','Y','Y','Y','Y');

# Other privileges
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','submission','cid'         ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','submission','probid'      ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','submission','submitid'    ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','submission','submittime'  ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','submission','team'        ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','problem'   ,'allow_submit',NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','problem'   ,'name'        ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','problem'   ,'cid'         ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','problem'   ,'probid'      ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','judging'   ,'valid'       ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','judging'   ,'result'      ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','judging'   ,'submitid'    ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_public','judging'   ,'judgingid'   ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_team'  ,'problem'   ,'allow_submit',NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_team'  ,'problem'   ,'cid'         ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_team'  ,'problem'   ,'name'        ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_team'  ,'problem'   ,'probid'      ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_team'  ,'language'  ,'langid'      ,NOW(),'select');
INSERT INTO columns_priv VALUES ('localhost','domjudge','domjudge_team'  ,'language'  ,'name'        ,NOW(),'select');

INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','scoreboard_public','domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','team'             ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','submission'       ,'domjudge@localhost',NOW(),'','Select');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','problem'          ,'domjudge@localhost',NOW(),'','Select');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','judging'          ,'domjudge@localhost',NOW(),'','Select');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','contest'          ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_public','category'         ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'scoreboard_public','domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'clarification'    ,'domjudge@localhost',NOW(),'Select,Insert','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'category'         ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'language'         ,'domjudge@localhost',NOW(),'','Select');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'problem'          ,'domjudge@localhost',NOW(),'','Select');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'team'             ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'contest'          ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'submission'       ,'domjudge@localhost',NOW(),'Select','');
INSERT INTO tables_priv  VALUES ('localhost','domjudge','domjudge_team'  ,'judging'          ,'domjudge@localhost',NOW(),'Select','');

FLUSH PRIVILEGES;
