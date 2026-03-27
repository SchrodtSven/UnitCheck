<?php

use UnitCheck\Shell\Cli;

var_dump(new \UnitCheck\Entity\Cfg('unitcheck.ini'));

$cli = new Cli();
echo $cli->getColouredString('Fool me not ypu fool!', 'red', 'blue');