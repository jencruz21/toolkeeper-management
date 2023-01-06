<?php
session_start();
include "includes/connection.php";
echo '<pre>' . print_r($_SESSION, true) . '</pre>';