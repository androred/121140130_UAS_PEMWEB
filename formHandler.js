document.getElementById('user-form').addEventListener('submit', function (event) {
    event.preventDefault();

    // Ambil nilai dari form input
    const nama = document.getElementById('nama').value;
    const email = document.getElementById('email').value;
    const gender = document.querySelector('input[name="gender"]:checked')?.value;
    const agree = document.getElementById('agree').checked ? 'Yes' : 'No';

    // Validasi Input
    if (!nama || !email || !gender) {
        alert('Harap isi semua field!');
        return;
    }

    // Tambahkan data ke tabel
    const table = document.getElementById('data-table');
    const row = table.insertRow();
    row.insertCell(0).innerText = nama;
    row.insertCell(1).innerText = email;
    row.insertCell(2).innerText = gender;
    row.insertCell(3).innerText = agree;

    // Kirim form ke server
    event.target.submit();
});
