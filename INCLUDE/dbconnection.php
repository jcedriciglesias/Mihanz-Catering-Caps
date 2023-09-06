
<?php
$servername = "localhost"; // Replace with your server name or IP address
$username = "root"; // Replace with your database username
$password = ""; // Replace with your database password
$database = "mihanzcatering"; // Replace with your database name

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>
