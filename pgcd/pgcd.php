<?php

set_error_handler(function ($errno, $errstr, $errfile, $errline) {
  if (error_reporting() & $errno) {
      throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
  }
  return false;
});

function pgcd(int $p, int $q): int {
    while ($q != 0) {
        list($p, $q) = array($q, $p % $q);
    }
    return $p;
}

function affiche_pgcd($p, $q): void {
    echo "PGCD = " . pgcd($p, $q) . "\n";
}

affiche_pgcd(48, 18);
affiche_pgcd(48.0, 18.0);
affiche_pgcd(48.0 + 0.3 - 0.1 - 0.2, 18.0);

?>