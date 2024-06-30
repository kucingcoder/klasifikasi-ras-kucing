package main

import (
	"bytes"
	"crypto/md5"
	"database/sql"
	"encoding/hex"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"time"

	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
)

type Pengguna struct {
	Email        string
	Nama         string
	JenisKelamin string
	TanggalLahir string
	Negara       string
}

type Kucing struct {
	Jenis      string `json:"jenis"`
	UmurMin    int    `json:"umur_min"`
	UmurMax    int    `json:"umur_max"`
	HargaMin   int    `json:"harga_min"`
	HargaMax   int    `json:"harga_max"`
	BeratMin   int    `json:"berat_min"`
	BeratMax   int    `json:"berat_max"`
	PanjangMin int    `json:"panjang_min"`
	PanjangMax int    `json:"panjang_max"`
	Deskripsi  string `json:"deskripsi_teks"`
}

func BelumMasuk() gin.HandlerFunc {
	return func(c *gin.Context) {
		session := sessions.Default(c)
		id := session.Get("id")

		if id == nil {
			c.JSON(403, gin.H{
				"status":  403,
				"message": "Sesi tidak valid",
				"data":    nil,
			})
			c.Abort()
		}

		c.Next()
	}
}

func SudahMasuk() gin.HandlerFunc {
	return func(c *gin.Context) {
		session := sessions.Default(c)
		id := session.Get("id")

		if id != nil {
			c.JSON(403, gin.H{
				"status":  403,
				"message": "Sudah memiliki sesi",
				"data":    nil,
			})
			c.Abort()
		}

		c.Next()
	}
}

func main() {
	db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/meow_type")
	if err != nil {
		panic(err.Error())
	}
	defer db.Close()

	gin.SetMode(gin.ReleaseMode)
	router := gin.Default()

	router.Static("/foto", "./Images")

	store := cookie.NewStore([]byte("^%*#@!&&GIHWGOFU@#T*(&T(!#*&#($UGOIWUEG#$Y*(&#$#$&^(#*GIUFV#O!*)(@&#R)(#)))))"))

	store.Options(sessions.Options{
		MaxAge:   0,
		HttpOnly: true,
	})

	router.Use(sessions.Sessions("sesi", store))

	router.POST("/daftar", SudahMasuk(), func(c *gin.Context) {
		email := c.PostForm("email")
		sandi := c.PostForm("sandi")
		nama := c.PostForm("nama")
		jenisKelamin := c.PostForm("jenis_kelamin")
		tanggalLahir := c.PostForm("tanggal_lahir")
		negara := c.PostForm("negara")

		var count int
		err := db.QueryRow("SELECT COUNT(*) FROM pengguna WHERE email = ?", email).Scan(&count)

		if err != nil {
			panic(err.Error())
		}

		if count > 0 {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Email sudah terdaftar",
				"data":    nil,
			})
			return
		}

		hash := md5.New()
		hash.Write([]byte(sandi))
		hashedPassword := hex.EncodeToString(hash.Sum(nil))

		result, err := db.Exec("INSERT INTO pengguna (email, sandi, nama, jenis_kelamin, tanggal_lahir, negara) VALUES (?, ?, ?, ?, ?, ?)",
			email, hashedPassword, nama, jenisKelamin, tanggalLahir, negara)

		if err != nil {
			panic(err.Error())
		}

		id, err := result.LastInsertId()

		if err != nil {
			panic(err.Error())
		}

		session := sessions.Default(c)
		session.Set("id", id)
		session.Save()

		c.JSON(200, gin.H{
			"status":  200,
			"message": "Sukses membuat akun baru",
			"data":    nil,
		})
	})

	router.POST("/masuk", SudahMasuk(), func(c *gin.Context) {
		email := c.PostForm("email")
		sandi := c.PostForm("sandi")

		hash := md5.New()
		hash.Write([]byte(sandi))
		hashedPassword := hex.EncodeToString(hash.Sum(nil))

		var id int
		err = db.QueryRow("SELECT id FROM pengguna WHERE email = ? AND sandi = ?", email, hashedPassword).Scan(&id)

		if err != nil {
			c.JSON(401, gin.H{
				"status":  401,
				"message": "Email atau sandi salah",
				"data":    nil,
			})
			return
		}

		session := sessions.Default(c)
		session.Set("id", id)
		session.Save()

		c.JSON(200, gin.H{
			"status":  200,
			"message": "Sukses masuk akun",
			"data":    nil,
		})
	})

	router.POST("/keluar", BelumMasuk(), func(c *gin.Context) {
		session := sessions.Default(c)
		session.Clear()
		session.Save()

		c.JSON(200, gin.H{
			"status":  200,
			"message": "Sukses keluar akun",
			"data":    nil,
		})
	})

	router.GET("/info-data-diri", BelumMasuk(), func(c *gin.Context) {
		session := sessions.Default(c)
		id := session.Get("id")

		var pengguna Pengguna
		err = db.QueryRow("SELECT email, nama, jenis_kelamin, tanggal_lahir, negara FROM pengguna WHERE id = ?", id).Scan(
			&pengguna.Email,
			&pengguna.Nama,
			&pengguna.JenisKelamin,
			&pengguna.TanggalLahir,
			&pengguna.Negara,
		)
		if err != nil {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Data tidak ditemukan",
				"data":    nil,
			})
		} else {
			c.JSON(200, gin.H{
				"status":  200,
				"message": "Sukses mengambil data akun",
				"data":    pengguna,
			})
		}
	})

	router.PATCH("/perbaharui-data-diri", BelumMasuk(), func(c *gin.Context) {
		session := sessions.Default(c)
		id := session.Get("id")

		email := c.PostForm("email")
		nama := c.PostForm("nama")
		jenisKelamin := c.PostForm("jenis_kelamin")
		tanggalLahir := c.PostForm("tanggal_lahir")
		negara := c.PostForm("negara")

		_, err = db.Exec("UPDATE pengguna SET email=?, nama=?, jenis_kelamin=?, tanggal_lahir=?, negara=? WHERE id=?", email, nama, jenisKelamin, tanggalLahir, negara, id)
		if err != nil {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Gagal memperbaharui data",
				"data":    nil,
			})
		} else {
			c.JSON(200, gin.H{
				"status":  200,
				"message": "Sukses memperbaharui data",
				"data":    nil,
			})
		}
	})

	router.GET("/daftar-riwayat", BelumMasuk(), func(c *gin.Context) {
		session := sessions.Default(c)
		id := session.Get("id")

		rows, err := db.Query("SELECT riwayat.foto, kucing.jenis, riwayat.waktu FROM riwayat INNER JOIN dna ON riwayat.id = dna.riwayat_id INNER JOIN kucing ON dna.kucing_id = kucing.id WHERE riwayat.pengguna_id = ? ORDER BY riwayat.waktu DESC LIMIT 5", id)

		if err != nil {
			var emptyArray []interface{}

			c.JSON(200, gin.H{
				"status":  200,
				"message": "Riwayat kosong",
				"data":    emptyArray,
			})
			return
		}

		defer rows.Close()

		var data []map[string]interface{}
		for rows.Next() {
			var foto string
			var jenis string
			var waktu string

			if err := rows.Scan(&foto, &jenis, &waktu); err != nil {
				panic(err.Error())
			}

			item := map[string]interface{}{
				"foto":  foto,
				"jenis": jenis,
				"waktu": waktu,
			}

			data = append(data, item)
		}

		c.JSON(200, gin.H{
			"status":  200,
			"message": "Sukses mengambil daftar riwayat",
			"data":    data,
		})
	})

	router.GET("/info-kucing", BelumMasuk(), func(c *gin.Context) {
		jenisKucing := c.Query("jenis")

		var kucingData Kucing

		err := db.QueryRow("SELECT kucing.jenis, umur.min, umur.max, harga.min, harga.max, tubuh.berat_min, tubuh.berat_max, tubuh.panjang_min, tubuh.panjang_max, deskripsi.teks "+
			"FROM kucing "+
			"INNER JOIN umur ON umur.kucing_id = kucing.id "+
			"INNER JOIN harga ON harga.kucing_id = kucing.id "+
			"INNER JOIN tubuh ON tubuh.kucing_id = kucing.id "+
			"INNER JOIN deskripsi ON deskripsi.kucing_id = kucing.id "+
			"WHERE kucing.jenis = ?", jenisKucing).Scan(
			&kucingData.Jenis,
			&kucingData.UmurMin,
			&kucingData.UmurMax,
			&kucingData.HargaMin,
			&kucingData.HargaMax,
			&kucingData.BeratMin,
			&kucingData.BeratMax,
			&kucingData.PanjangMin,
			&kucingData.PanjangMax,
			&kucingData.Deskripsi,
		)

		if err != nil {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Gagal mengambil data kucing",
				"data":    nil,
			})
		} else {
			c.JSON(200, gin.H{
				"status":  200,
				"message": "Sukses mengambil data kucing",
				"data":    kucingData,
			})
		}
	})

	router.POST("/klasifikasi", BelumMasuk(), func(c *gin.Context) {
		session := sessions.Default(c)
		id := session.Get("id")

		file, header, err := c.Request.FormFile("gambar")
		if err != nil {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Data tidak valid",
				"data":    nil,
			})
			return
		}
		defer file.Close()

		currentTime := time.Now()
		currentTimeString := currentTime.Format("2006-01-02 15:04:05")

		hash := md5.New()
		hash.Write([]byte(currentTimeString))
		filename := hex.EncodeToString(hash.Sum(nil))
		fileExt := filepath.Ext(header.Filename)

		lokasi := filepath.Join("Images", filename+fileExt)

		tempFile, err := os.Create(lokasi)

		if err != nil {
			panic(err.Error())
		}

		defer tempFile.Close()

		_, err = io.Copy(tempFile, file)

		if err != nil {
			panic(err.Error())
		}

		url := "http://127.0.0.1:9696/klasifikasi?lokasi=" + filename + fileExt

		response, err := http.Get(url)
		if err != nil {
			panic(err.Error())
		}
		defer response.Body.Close()

		body, err := io.ReadAll(response.Body)
		if err != nil {
			panic(err.Error())
		}

		if bytes.Contains(body, []byte("gagal")) {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Data tidak valid",
				"data":    nil,
			})
			return
		}

		if bytes.Contains(body, []byte("lain")) {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Tidak dapat menemukan kucing dalam gambarmu",
				"data":    nil,
			})
			return
		}

		result, err_riwayat := db.Exec("INSERT INTO riwayat (pengguna_id, foto) VALUES (?, ?)", id, filename+fileExt)

		if err_riwayat != nil {
			panic(err_riwayat.Error())
		}

		riwayat_id, err := result.LastInsertId()
		jenis_kucing := string(body)

		if err != nil {
			panic(err.Error())
		}
		_, err_dna := db.Exec("INSERT INTO dna (riwayat_id, kucing_id) VALUES (?, (SELECT id FROM kucing WHERE jenis = ?))", riwayat_id, jenis_kucing)

		if err_dna != nil {
			panic(err_dna.Error())
		}

		var kucingData Kucing

		err_kucing := db.QueryRow("SELECT kucing.jenis, umur.min, umur.max, harga.min, harga.max, tubuh.berat_min, tubuh.berat_max, tubuh.panjang_min, tubuh.panjang_max, deskripsi.teks "+
			"FROM kucing "+
			"INNER JOIN umur ON umur.kucing_id = kucing.id "+
			"INNER JOIN harga ON harga.kucing_id = kucing.id "+
			"INNER JOIN tubuh ON tubuh.kucing_id = kucing.id "+
			"INNER JOIN deskripsi ON deskripsi.kucing_id = kucing.id "+
			"WHERE kucing.jenis = ?", jenis_kucing).Scan(
			&kucingData.Jenis,
			&kucingData.UmurMin,
			&kucingData.UmurMax,
			&kucingData.HargaMin,
			&kucingData.HargaMax,
			&kucingData.BeratMin,
			&kucingData.BeratMax,
			&kucingData.PanjangMin,
			&kucingData.PanjangMax,
			&kucingData.Deskripsi,
		)

		if err_kucing != nil {
			c.JSON(400, gin.H{
				"status":  400,
				"message": "Gagal mengambil data kucing",
				"data":    nil,
			})
		} else {
			c.JSON(200, gin.H{
				"status":  200,
				"message": "Sukses mengklasifikasikan",
				"data": map[string]interface{}{
					"foto": filename + fileExt,
					"info": kucingData,
				},
			})
		}
	})

	router.Run(":6969")
}
