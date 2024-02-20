## latihan nodejs sederhana dengan framework expressjs.

# pastikan sebelumnya telah menginstall paket diperlukan yaitu :
- mysql
    # cara install
    $ npm install mysql
    # tampilkan list paket
    $ npm list
    ├── express@4.18.0
    └── mysql@2.18.1


# buat file json secara manual dan isinya.
- package.json
- app.js

# jalankan
$ node app.js
op:
Server running on port 3000


# desclimer:
# saat menjalankan pertama kali pada container mysql maka akan terdapat error sebagai berikut:
❯ node app.js
Server berjalan pada port 3000
Koneksi ke database gagal:  Error: ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client

# untuk mengatasi hal tersebut lakukan langkah berikut:
❯ mysql -h 127.0.0.1 -P 3309 -u root -p --ssl-mode=DISABLED
mysql> ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
Query OK, 0 rows affected (0.03 sec)

mysql> use ujimysqlkudb;
mysql> \
INSERT INTO usersbanyak (nama, alamat)
VALUES
('David Johnson', 'Jalan Kenanga 789'),
('Sarah Williams', 'Jalan Melati 321'),
('Michael Brown', 'Jalan Anggrek 654'),
('Michelle Lee', 'Jalan Dahlia 987'),
('Robert Wilson', 'Jalan Cempaka 234'),
('Emily Taylor', 'Jalan Angsana 567'),
('Daniel Anderson', 'Jalan Sakura 890'),
('Olivia Martinez', 'Jalan Flamboyan 432'),
('William Thomas', 'Jalan Kamboja 765'),
('Sophia Garcia', 'Jalan Tulip 098'),
('James Rodriguez', 'Jalan Mawar 543'),
('Emma Hernandez', 'Jalan Melati 876'),
('Benjamin Moore', 'Jalan Kenanga 210'),
('Ava Lopez', 'Jalan Raya 543'),
('Alexander Clark', 'Jalan Anggrek 876'),
('Mia Lewis', 'Jalan Dahlia 109'),
('Henry Young', 'Jalan Cempaka 432'),
('Charlotte Hall', 'Jalan Angsana 765'),
('Joseph King', 'Jalan Sakura 098'),
('Madison Scott', 'Jalan Flamboyan 321'),
('Samuel Green', 'Jalan Kamboja 654'),
('Chloe Hill', 'Jalan Tulip 987'),
('David Ward', 'Jalan Mawar 234'),
('Ella Turner', 'Jalan Melati 567'),
('Jackson Phillips', 'Jalan Kenanga 890'),
('Amelia Bennett', 'Jalan Raya 123'),
('Matthew Reed', 'Jalan Anggrek 456'),
('Abigail Murphy', 'Jalan Dahlia 789'),
('Daniel Butler', 'Jalan Cempaka 321'),
('Sofia Nguyen', 'Jalan Angsana 654'),
('Andrew Foster', 'Jalan Sakura 987'),
('Charlotte Simmons', 'Jalan Flamboyan 234'),
('David Gray', 'Jalan Kamboja 567'),
('Avery Howard', 'Jalan Tulip 890'),
('Evelyn Cox', 'Jalan Mawar 109'),
('James Diaz', 'Jalan Melati 432'),
('Ella Perez', 'Jalan Kenanga 765'),
('Lucas Coleman', 'Jalan Raya 098'),
('Scarlett Barnes', 'Jalan Anggrek 321'),
('Victoria Barnes', 'Jalan Dahlia 654'),
('Liam Nelson', 'Jalan Cempaka 987'),
('Harper Bell', 'Jalan Angsana 234'),
('Logan Ward', 'Jalan Sakura 567'),
('Grace Sanders', 'Jalan Flamboyan 890'),
('Lucas Davis', 'Jalan Kamboja 123'),
('Nora Rivera', 'Jalan Tulip 456'),
('Henry Evans', 'Jalan Mawar 789'),
('Lily Reed', 'Jalan Melati 321'),
('Wyatt Mitchell', 'Jalan Kenanga 654'),
('Zoe Torres', 'Jalan Raya 987'),
('Joseph Edwards', 'Jalan Anggrek 234'),
('Aubrey Adams', 'Jalan Dahlia 567'),
('Carter Rodriguez', 'Jalan Cempaka 890'),
('Penelope Collins', 'Jalan Angsana'),
('Maxwell Jenkins', 'Jalan Sakura 123'),
('Luna Hughes', 'Jalan Flamboyan 456'),
('Henry Cooper', 'Jalan Kamboja 789'),
('Mila Turner', 'Jalan Tulip 321'),
('Sebastian Murphy', 'Jalan Mawar 654'),
('Hazel Morgan', 'Jalan Melati 987'),
('Leo Foster', 'Jalan Kenanga 234'),
('Stella Ross', 'Jalan Raya 567'),
('Gabriel Richardson', 'Jalan Anggrek 890'),
('Ellie Powell', 'Jalan Dahlia 123'),
('David Simmons', 'Jalan Cempaka 456'),
('Aria Henderson', 'Jalan Angsana 789'),
('Owen Stewart', 'Jalan Sakura 321'),
('Ariana Hayes', 'Jalan Flamboyan 654'),
('Samuel Bennett', 'Jalan Kamboja 987'),
('Eleanor Cooper', 'Jalan Tulip 234'),
('Isaac Reed', 'Jalan Mawar 567'),
('Clara Ross', 'Jalan Melati 890'),
('Elijah Rivera', 'Jalan Kenanga 123'),
('Lillian Collins', 'Jalan Raya 456'),
('Xavier Diaz', 'Jalan Anggrek 789'),
('Skylar Adams', 'Jalan Dahlia 321'),
('Lucy Wilson', 'Jalan Cempaka 654'),
('Nathan Ward', 'Jalan Angsana 987'),
('Ruby Carter', 'Jalan Sakura 234'),
('Mason Sanders', 'Jalan Flamboyan 567'),
('Sadie Griffin', 'Jalan Kamboja 890'),
('Jackson Gonzalez', 'Jalan Tulip 123'),
('Gabriella Price', 'Jalan Mawar 456'),
('Christopher Campbell', 'Jalan Melati 789'),
('Zoey Brooks', 'Jalan Kenanga 321'),
('Lincoln Powell', 'Jalan Raya 654'),
('Maya Stewart', 'Jalan Anggrek 987'),
('Eliana Cook', 'Jalan Dahlia 234'),
('Caleb Cox', 'Jalan Cempaka 567'),
('Aaliyah Nelson', 'Jalan Angsana 890'),
('Jonathan Phillips', 'Jalan Sakura 123'),
('Addison Hughes', 'Jalan Flamboyan 456'),
('Aaron Bell', 'Jalan Kamboja 789'),
('Paisley Hill', 'Jalan Tulip 321'),
('Gavin Simmons', 'Jalan Mawar 654'),
('Audrey Patterson', 'Jalan Melati 987'),
('Austin Rivera', 'Jalan Kenanga 234'),
('Brooklyn Richardson', 'Jalan Raya 567'),
('Leo Butler', 'Jalan Anggrek 890'),
('Natalie Nguyen', 'Jalan Dahlia 123'),
('Julian Morris', 'Jalan Cempaka 456'),
('Aria Sanders', 'Jalan Angsana 789'),
('Greyson Davis', 'Jalan Sakura 321'),
('Bella Bennett', 'Jalan Flamboyan 654'),
('Evan Adams', 'Jalan Kamboja 987'),
('Scarlett Cooper', 'Jalan Tulip 234'),
('Nicholas Richardson', 'Jalan Mawar 567'),
('Hannah Morgan', 'Jalan Melati 890'),
('Riley Foster', 'Jalan Kenanga 123'),
('Leah Ross', 'Jalan Raya 456'),
('Nolan Evans', 'Jalan Anggrek 789'),
('Nolan Evans', 'Jalan Anggrek 789'),
('Avery Barnes', 'Jalan Dahlia 321'),
('Eli Simmons', 'Jalan Cempaka 654'),
('Scarlett Hughes', 'Jalan Angsana 987'),
('Adam Turner', 'Jalan Sakura 234'),
('Aurora Murphy', 'Jalan Flamboyan 567'),
('Lucas Cox', 'Jalan Kamboja 890'),
('Eleanor Collins', 'Jalan Tulip 123'),
('Isaiah Diaz', 'Jalan Mawar 456'),
('Skylar Powell', 'Jalan Melati 789'),
('Zoe Richardson', 'Jalan Kenanga 321'),
('David Bell', 'Jalan Raya 654'),
('Stella Nelson', 'Jalan Anggrek 987'),
('Nathan Carter', 'Jalan Dahlia 234'),
('Lily Foster', 'Jalan Cempaka 567'),
('Oliver Gonzalez', 'Jalan Angsana 890'),
('Aria Price', 'Jalan Sakura 123'),
('Elijah Cook', 'Jalan Flamboyan 456'),
('Chloe Cox', 'Jalan Kamboja 789'),
('Jacob Brooks', 'Jalan Tulip 321'),
('Amelia Butler', 'Jalan Mawar 654'),
('Daniel Ross', 'Jalan Melati 987'),
('Sophia Stewart', 'Jalan Kenanga 234'),
('Mason Richardson', 'Jalan Raya 567'),
('Emily Phillips', 'Jalan Anggrek 890'),
('James Patterson', 'Jalan Dahlia 123'),
('Harper Davis', 'Jalan Cempaka 456'),
('Liam Adams', 'Jalan Angsana 789'),
('Emma Nguyen', 'Jalan Sakura 321'),
('Aiden Morgan', 'Jalan Flamboyan 654'),
('Mia Bell', 'Jalan Kamboja 987'),
('Benjamin Griffin', 'Jalan Tulip 234'),
('Avery Lewis', 'Jalan Mawar 567'),
('Charlotte Green', 'Jalan Melati 890'),
('Lucas Adams', 'Jalan Kenanga 123'),
('Grace Richardson', 'Jalan Raya 456'),
('Noah Hughes', 'Jalan Anggrek 789'),
('Isabella Powell', 'Jalan Dahlia 321'),
('Michael Simmons', 'Jalan Cempaka 654'),
('Aria Hill', 'Jalan Angsana 987'),
('Oliver Butler', 'Jalan Sakura 234'),
('Evelyn Barnes', 'Jalan Flamboyan 567'),
('Henry Phillips', 'Jalan Kamboja 890'),
('Sophia Cox', 'Jalan Tulip 123'),
('Logan Ross', 'Jalan Mawar 456'),
('Mila Foster', 'Jalan Melati 789'),
('Jacob Gonzalez', 'Jalan Kenanga 321'),
('Harper Stewart', 'Jalan Raya 654'),
('Aiden Richardson', 'Jalan Anggrek 987'),
('Ella Bell', 'Jalan Dahlia 234'),
('Carter Cook', 'Jalan Cempaka 567'),
('Mia Nelson', 'Jalan Angsana 890'),
('Alexander Patterson', 'Jalan Sakura 123'),
('Luna Davis', 'Jalan Flamboyan 456'),
('Daniel Brooks', 'Jalan Kamboja 789'),
('Chloe Hill', 'Jalan Tulip 321'),
('Samuel Simmons', 'Jalan Mawar 654'),
('Scarlett Green', 'Jalan Melati 890'),
('Elijah Adams', 'Jalan Kenanga 123'),
('Ava Richardson', 'Jalan Raya 456'),
('Liam Hughes', 'Jalan Anggrek 789'),
('Mila Powell', 'Jalan Dahlia 321'),
('Lucas Cox', 'Jalan Cempaka 654'),
('Evelyn Stewart', 'Jalan Angsana 987'),
('Oliver Butler', 'Jalan Sakura 234'),
('Isabella Barnes', 'Jalan Flamboyan 567'),
('Henry Phillips', 'Jalan Kamboja 890'),
('Sophia Cox', 'Jalan Tulip 123'),
('Logan Ross', 'Jalan Mawar 456'),
('Mila Foster', 'Jalan Melati 789'),
('Jacob Gonzalez', 'Jalan Kenanga 321'),
('Harper Stewart', 'Jalan Raya 654'),
('Aiden Richardson', 'Jalan Anggrek 987'),
('Ella Bell', 'Jalan Dahlia 234'),
('Carter Cook', 'Jalan Cempaka 567'),
('Mia Nelson', 'Jalan Angsana 890'),
('Alexander Patterson', 'Jalan Sakura 123'),
('Luna Davis', 'Jalan Flamboyan 456'),
('Daniel Brooks', 'Jalan Kamboja 789'),
('Chloe Hill', 'Jalan Tulip 321'),
('Samuel Simmons', 'Jalan Mawar 654'),
('Scarlett Green', 'Jalan Melati 890');


# lanjut coba jalankan kembali aplikasi

❯ node app.js
Server berjalan pada port 3000
Terhubung ke database MySQL

# eksekusi dengan CURL:
# contoh 1
curl -X GET "http://localhost:3000/api/data/filter?filterField=nama&filterValue=Ava%20Lopez&page=1&limit=5"

output :
{"page":1,"limit":5,"total":1,"data":[{"id":16,"nama":"Ava Lopez","alamat":"Jalan Raya 543"}]}

# contoh 2 ( atau dapat juga dengan demikian saja)
curl -X GET "http://localhost:3000/api/data/filter?filterField=nama&filterValue=Ava%20Lopez"

output :
{"page":1,"limit":10,"total":1,"data":[{"id":16,"nama":"Ava Lopez","alamat":"Jalan Raya 543"}]}

# check data
❯ mysql -h 127.0.0.1 -P 3309 -u root -p --ssl-mode=DISABLED
Enter password: password
mysql> use ujimysqlkudb;


# mekanisme backup database
❯ mysqldump -h 127.0.0.1 -P 3309 -u root -p ujimysqlkudb > backup_ujimysqlkudb.sql
Enter password:

