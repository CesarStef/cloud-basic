<?php

/**
 * This configuration file is only provided to document the different
 * configuration options and their usage.
 *
 * DO NOT COMPLETELY BASE YOUR CONFIGURATION FILE ON THIS SAMPLE. THIS MAY BREAK
 * YOUR INSTANCE. Instead, manually copy configuration switches that you
 * consider important for your instance to your working ``config.php``, and
 * apply configuration options that are pertinent for your instance.
 *
 * This file is used to generate the configuration documentation.
 * Please consider following requirements of the current parser:
 *  * all comments need to start with `/**` and end with ` *\/` - each on their
 *    own line
 *  * add a `@see CONFIG_INDEX` to copy a previously described config option
 *    also to this line
 *  * everything between the ` *\/` and the next `/**` will be treated as the
 *    config option
 *  * use RST syntax
 */

$CONFIG = [

/**
 * Allow remote servers with local addresses e.g. in federated shares, webcal services and more
 *
 * Defaults to false
 */
'allow_local_remote_servers' => true,
'debug' => true,
'overwritewebroot' => '',
'trusted_domains' =>
  array (
   0 => 'localhost',
   1 => 'nextcloud',
   2 => '192.168.106.2'
),
//'overwritewebroot' => '/nextcloud',
];