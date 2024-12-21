<?php
session_start();

$host = 'localhost';
$dbname = 'uas_pemweb';
$username = 'root'; // Ganti sesuai konfigurasi Anda
$password = ''; // Ganti sesuai konfigurasi Anda

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (!empty($_POST['id'])) {
            // Update data jika ID ada
            $stmt = $conn->prepare("UPDATE mahasiswa SET nama = :nama, email = :email, gender = :gender, agree = :agree WHERE id = :id");
            $stmt->execute([
                ':id' => $_POST['id'],
                ':nama' => $_POST['nama'],
                ':email' => $_POST['email'],
                ':gender' => $_POST['gender'],
                ':agree' => isset($_POST['agree']) ? 1 : 0
            ]);
        } else {
            // Simpan data baru
            $stmt = $conn->prepare("INSERT INTO mahasiswa (nama, email, gender, agree, ip_address, user_agent) 
                                    VALUES (:nama, :email, :gender, :agree, :ip_address, :user_agent)");
            $stmt->execute([
                ':nama' => $_POST['nama'],
                ':email' => $_POST['email'],
                ':gender' => $_POST['gender'],
                ':agree' => isset($_POST['agree']) ? 1 : 0,
                ':ip_address' => $_SERVER['REMOTE_ADDR'],
                ':user_agent' => $_SERVER['HTTP_USER_AGENT']
            ]);

            // Simpan informasi ke dalam session
            $_SESSION['user'] = [
                'nama' => $_POST['nama'],
                'email' => $_POST['email'],
                'gender' => $_POST['gender'],
                'agree' => isset($_POST['agree']) ? 1 : 0
            ];
        }

        header("Location: index.php");
        exit();
    } elseif ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['delete_id'])) {
        // Hapus data jika delete_id ada
        $stmt = $conn->prepare("DELETE FROM mahasiswa WHERE id = :id");
        $stmt->execute([':id' => $_GET['delete_id']]);

        header("Location: index.php");
        exit();
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>