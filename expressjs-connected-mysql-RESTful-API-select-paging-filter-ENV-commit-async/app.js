require('dotenv').config();

const express = require('express');
const mysql = require('mysql2');
const util = require('util');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Middleware untuk parsing body permintaan menjadi JSON
app.use(bodyParser.json());

// Konfigurasi koneksi database
const dbConfig = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
  port: process.env.DB_PORT,
  insecureAuth: process.env.DB_INSECUREAUTH
};

// Buat koneksi database
const connection = mysql.createConnection(dbConfig);

// Mengubah metode koneksi menjadi asinkron
connection.connectAsync = util.promisify(connection.connect);

// Mengubah metode commit menjadi asinkron
connection.commitAsync = util.promisify(connection.commit);

// Mengubah metode rollback menjadi asinkron
connection.rollbackAsync = util.promisify(connection.rollback);

// Mengubah metode query menjadi asinkron
connection.queryAsync = util.promisify(connection.query);

// Mengubah metode end menjadi asinkron
connection.endAsync = util.promisify(connection.end);

app.get('/api/data/filter', async (req, res) => {
  const page = parseInt(req.query.page) || 1; // Nomor halaman yang diminta oleh pengguna
  const limit = parseInt(req.query.limit) || 10; // Jumlah data yang akan ditampilkan per halaman
  const filterField = req.query.filterField || ''; // Kolom yang akan difilter
  const filterValue = req.query.filterValue || ''; // Nilai filter yang diminta oleh pengguna

  // Hitung offset berdasarkan nomor halaman dan jumlah data per halaman
  const offset = (page - 1) * limit;

  try {
    // Jalankan transaksi secara asinkron
    await connection.connectAsync();

    let results;
    let total;

    if (filterField && filterValue) {
      // Query database untuk mendapatkan data dengan limit, offset, dan filter
      results = await connection.queryAsync(`SELECT * FROM usersbanyak WHERE ${filterField} = ? LIMIT ? OFFSET ?`, [filterValue, limit, offset]);

      // Menghitung total jumlah data dalam tabel (tanpa limit, offset, dan filter)
      const countResult = await connection.queryAsync(`SELECT COUNT(*) AS total FROM usersbanyak WHERE ${filterField} = ?`, [filterValue]);
      total = countResult[0].total; // Total jumlah data dalam tabel
    } else {
      // Query database untuk mendapatkan data dengan limit dan offset (tanpa filter)
      results = await connection.queryAsync('SELECT * FROM usersbanyak LIMIT ? OFFSET ?', [limit, offset]);

      // Menghitung total jumlah data dalam tabel (tanpa limit, offset, dan filter)
      const countResult = await connection.queryAsync('SELECT COUNT(*) AS total FROM usersbanyak');
      total = countResult[0].total; // Total jumlah data dalam tabel
    }

    const response = {
      page,
      limit,
      total,
      data: results
    };

    res.status(200).json(response);
  } catch (error) {
    console.error('Terjadi kesalahan:', error);
    res.status(500).json({ error: 'Terjadi kesalahan saat mengambil data.' });
  }
});

// Menjalankan server
app.listen(port, () => {
  console.log(`Server berjalan pada port ${port}`);
});
