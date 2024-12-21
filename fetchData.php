<?php
$host = 'localhost';
$dbname = 'uas_pemweb';
$username = 'root'; // Ganti sesuai konfigurasi Anda
$password = ''; // Ganti sesuai konfigurasi Anda

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->query("SELECT id, nama, email, gender, agree FROM mahasiswa");
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>";
        echo "<td>" . htmlspecialchars($row['nama']) . "</td>";
        echo "<td>" . htmlspecialchars($row['email']) . "</td>";
        echo "<td>" . htmlspecialchars($row['gender']) . "</td>";
        echo "<td>" . ($row['agree'] ? 'Yes' : 'No') . "</td>";
        echo "<td>";
        echo "<a href='index.php?id=" . $row['id'] . "&nama=" . urlencode($row['nama']) . "&email=" . urlencode($row['email']) . "&gender=" . $row['gender'] . "&agree=" . $row['agree'] . "' class='btn-icon'><i class='fas fa-edit'></i></a> ";
        echo "<a href='saveData.php?delete_id=" . $row['id'] . "' class='btn-icon btn-danger' onclick='return confirm(\"Are you sure?\")'><i class='fas fa-trash'></i></a>";
        echo "</td>";
        echo "</tr>";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
