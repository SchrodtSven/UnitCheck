#!/usr/bin/env php
<?php
require_once 'color.php';
require_once 'PreParser.php';



//$file = 'unitcheck/unitcheck/Core/Kql/Entity/Lst.zep';
//$file = 'unitcheck/unitcheck/Core/Kql/Entity/Lst.zep';
// $file =  'unitcheck/unitcheck/Source/Zephir/ZepToken.zep';
// $parser = new PreParser($file);
// exit();

$file = [
    'unitcheck/unitcheck/Entity/Cfg.zep',
    'unitcheck/unitcheck/Entity/Failure.zep',
    'unitcheck/unitcheck/Entity/Success.zep',
    //'unitcheck/unitcheck/Kernel/FoundationCheck.zep',
    'unitcheck/unitcheck/Shell/Cli.zep',
];

$parser = new PreParser($file);
$parser->setStopOnError(true);
print $parser->getErrors() . " errors found!" . PHP_EOL;
print $parser->count() . " files pre parsed" . PHP_EOL;