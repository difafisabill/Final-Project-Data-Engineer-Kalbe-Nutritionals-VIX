# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    user='root',   
    password='mySQ1234!',    
    host='localhost',    
    database='KARYAWAN'   
)

# membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ('Difa', 'Fisabilillah', 25, 'Female', 50000)  

try:
    # Eksekusi SQL Command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()
except Exception as e:
    # Roll Back apabila ada issue
    conn.rollback()
    print(f"Error: {e}")
finally:
    # Menutup Koneksi
    cursor.close()
    conn.close()
