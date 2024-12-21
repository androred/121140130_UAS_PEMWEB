<?php
ob_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas Website</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="stateManager.js" defer></script>
    <script src="sessionManager.js" defer></script>
</head>
<body>
    <div class="container">
        <h1 class="title">Tugas Mata Kuliah Website</h1>

        <!-- Form Input -->
        <form id="user-form" method="POST" action="saveData.php">
            <input type="hidden" id="id" name="id" value="">
            <div class="form-group">
                <label for="nama">Nama:</label>
                <input type="text" id="nama" name="nama" class="input-field" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="input-field" required>
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <div class="radio-group">
                    <input type="radio" id="male" name="gender" value="Male" required>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="Female" required>
                    <label for="female">Female</label>
                </div>
            </div>

            <div class="form-group">
                <label>
                    <input type="checkbox" id="agree" name="agree">
                    I agree to terms and conditions
                </label>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <h2 class="subtitle">Data Pengguna</h2>
        <table id="data-table" class="table">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Agree</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php include_once 'fetchData.php'; ?>
            </tbody>
        </table>

        <h2 class="subtitle">Session Manager</h2>
        <div id="session-info">
            <?php include_once 'sessionDisplay.php'; ?>
        </div>

        <h2 class="subtitle">Cookie Manager</h2>
        <div class="cookie-manager">
            <button onclick="setCookie('GFG', 'SampleCookie', 7)" class="btn btn-primary">Set Cookie</button>
            <button onclick="alert(getCookie('GFG'))" class="btn btn-primary">Get Cookie</button>
            <button onclick="deleteCookie('GFG')" class="btn btn-danger">Delete Cookie</button>
        </div>

        <h2 class="subtitle">Browser Storage Manager</h2>
        <div class="storage-manager">
            <input type="text" id="storage-input" class="input-field" placeholder="Enter data for storage">
            <button onclick="saveToLocalStorage('localKey', document.getElementById('storage-input').value)" class="btn btn-primary">Save to Local Storage</button>
            <button onclick="alert(getFromLocalStorage('localKey'))" class="btn btn-primary">Get from Local Storage</button>
            <button onclick="deleteFromLocalStorage('localKey')" class="btn btn-danger">Delete Local Storage</button>
        </div>
    </div>
</body>
</html>

<?php
ob_end_flush();
?>