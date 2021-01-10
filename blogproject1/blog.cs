using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;

namespace blogproject1
{
    public class blog
    {

        public static bool Email_Format_Kontrol(string email)
        {
            try
            {
                MailAddress m = new MailAddress(email);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static string sayiMi(string sayikontrol)
        {
            string message = "";
            if (sayikontrol.Length < 1)
            {
                message += "BOŞ GEÇİLMEZ.<br/>";
            }
            else if (sayikontrol.Length < 10)
            {
                foreach (char sayi in sayikontrol)
                {
                    if (sayi == 32)
                    {
                        message += sayi + " BOŞLUK KARAKTERİNİ GİREMEZSİN.<br/>";
                    }
                    else
                    {
                        if (!(sayi >= 47 && sayi <= 58))
                        {
                            message += sayi + " KARAKTERİNİ GİREMEZSİN.<br/>";
                        }
                    }
                }

                if (sayikontrol.Length != 1)
                {
                    if (sayikontrol.Substring(0, 1) == "0")
                    {
                        message += "BAŞA SIFIR KARAKTERİNİ GİREMEZSİN.<br/>";
                    }
                }
            }
            else
            {
                message += "10 KARAKTERDEN FAZLA GİRİLMEZ.<br/>";
            }
            return message;
        }

        public static string parolaKontrol(string parola)
        {
            string hataKontrol = "";
            if (parola.Length >= 8)
            {
                foreach (char girilenParola in parola)
                {
                    if (girilenParola == 32)
                    {
                        hataKontrol += "Boşluk Karakterini Kullanamazsınız.";
                    }
                    else
                    {
                        if (!((girilenParola >= 65 && girilenParola <= 90) || (girilenParola >= 97 && girilenParola <= 120) || girilenParola == 148 || girilenParola == 231 || girilenParola == 305 || girilenParola == 287 || girilenParola == 246 || girilenParola == 351 || girilenParola == 252 || girilenParola == 199 || girilenParola == 304 || girilenParola == 208 || girilenParola == 214 || girilenParola == 350 || girilenParola == 220))
                        {
                            if (!(girilenParola >= 47 && girilenParola <= 58))
                            {
                                if (!((girilenParola >= 33 && girilenParola <= 47) || (girilenParola >= 58 && girilenParola <= 64) || (girilenParola >= 91 && girilenParola <= 96) || (girilenParola >= 123 && girilenParola <= 126)))
                                {
                                    hataKontrol = "gel bide burdan bak";
                                }
                                else
                                {
                                    hataKontrol = "Parolaların en az bir harf veya rakam olmayan karakteri olmalıdır. Parolaların en az bir küçük harfi olmalıdır ('a' - 'z'). Parolaların en az bir büyük harfi olmalıdır ('A' - 'Z').";
                                }
                            }
                        }

                    }
                }
            }
            else
            {
                hataKontrol += "Parolanız En Az 8 Karakter Olmalıdır.";
            }
            return hataKontrol;

        }

        public static string kesirlisayimi(string girilensayi)
        {
            string message = "";
            if (girilensayi.Length < 1)
            {
                message = "Boş geçilmez.<br/>";
            }
            else if (girilensayi.Length < 10)
            {
                foreach (char sayi in girilensayi)
                {
                    if (sayi == 32)
                    {
                        message += sayi + " boşluk  karakterini giremezsiniz.<br/>";
                    }
                    else
                    {
                        if (!(sayi >= 47 && sayi <= 58 && !(sayi == 44) && !(sayi == 46)))
                        {
                            message += sayi + " karakterini giremezsiniz.<br/>";
                        }
                    }
                }
                if (girilensayi.Length != 1)
                {
                    if (girilensayi.Substring(0, 1) == "0")
                    {
                        message = "başa sıfır karakterini girmezsiniz.<br/>";
                    }
                }
            }
            return message;
        }

        public static string uygunyaskontrolumu(string verilenyas, int altlimit, int üstlimit)
        {
            string sonuc = "";
            if (verilenyas.Length < 1)
            {
                sonuc = "Boş geçilmez.<br/> ";
            }
            if (sayiMi(verilenyas) == "")
            {
                if (!(Convert.ToUInt32(verilenyas) > altlimit))
                {
                    sonuc += altlimit + " yaşından küçükler giremez.";
                }
                if (!(Convert.ToUInt32(verilenyas) < üstlimit))
                {
                    sonuc += üstlimit + " yaşından büyükler giremez.";
                }
            }
            else
            {
                sonuc = blog.sayiMi(verilenyas);
            }
            return sonuc;
        }

        public static string arfmethodu(string yazi)
        {
            string sonuc = "";
            if (yazi.Length != 0)
            {
                if (sayiMi(yazi) == "")
                {
                    sonuc = (((Convert.ToUInt32(yazi) + (Convert.ToUInt32(yazi)) + 1) + 2).ToString());
                }
                else
                {
                    sonuc = blog.sayiMi(yazi);
                }
            }
            else
            {
                sonuc = "boş geçemezsiniz.";
            }
            return sonuc;


        }

        public static string kadimethodu(string girilenrakam)
        {
            string sonuc = "";
            if (girilenrakam.Length != 0)
            {
                if (sayiMi(girilenrakam) == "")
                {
                    sonuc = (((Convert.ToUInt32(girilenrakam) * (Convert.ToUInt32(girilenrakam) * (Convert.ToUInt32(girilenrakam)) + 5))).ToString());
                }
                else
                {
                    sonuc = blog.sayiMi(girilenrakam);
                }
            }
            else
            {
                sonuc = "lütfen rakam giriniz.";
            }
            return sonuc;
        }

        public static string yedikatımethodu(string girilendeger)
        {
            string sonuc = "";
            if (girilendeger.Length != 0)
            {
                if (sayiMi(girilendeger) == "")
                {
                    sonuc = (Convert.ToInt32(girilendeger) * 7).ToString();
                }
                else
                {
                    sonuc = blog.sayiMi(girilendeger);
                }
            }
            else
            {
                sonuc = "lütfen bir sayı değeri girniz.";
            }
            return sonuc;

        }

        public static string TcDogrula(string tcKimlikNo)
        {
            string tckontrol = "";
            bool returnvalue = false;
            if (tcKimlikNo.Length == 11)
            {
                Int64 ATCNO, BTCNO, TcNo;
                long C1, C2, C3, C4, C5, C6, C7, C8, C9, Q1, Q2;

                TcNo = Int64.Parse(tcKimlikNo);

                ATCNO = TcNo / 100;
                BTCNO = TcNo / 100;

                C1 = ATCNO % 10; ATCNO = ATCNO / 10;
                C2 = ATCNO % 10; ATCNO = ATCNO / 10;
                C3 = ATCNO % 10; ATCNO = ATCNO / 10;
                C4 = ATCNO % 10; ATCNO = ATCNO / 10;
                C5 = ATCNO % 10; ATCNO = ATCNO / 10;
                C6 = ATCNO % 10; ATCNO = ATCNO / 10;
                C7 = ATCNO % 10; ATCNO = ATCNO / 10;
                C8 = ATCNO % 10; ATCNO = ATCNO / 10;
                C9 = ATCNO % 10; ATCNO = ATCNO / 10;
                Q1 = ((10 - ((((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10)) % 10);
                Q2 = ((10 - (((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10)) % 10);
                returnvalue = ((BTCNO * 100) + (Q1 * 10) + Q2 == TcNo);
                if (returnvalue == true)
                {
                    tckontrol = "tebrikler";
                }
                else
                {
                    tckontrol = "hatalı girdiniz";
                }
            }
            else
            {
                tckontrol = "lütfen 11 hane giriniz";
            }
            return tckontrol;
        }

        public static string harfMi(string girilenharf)
        {
            string mesaj = "";
            if (girilenharf.Length < 1)
            {
                mesaj += "BOŞ GEÇEMEZSİN.<br/>";
            }
            else if (girilenharf.Length < 20)
            {
                foreach (char yazi in girilenharf)
                {
                    if (yazi == 32)
                    {
                        mesaj += "BOŞLUK KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                    }
                    else
                    {
                        if (!((yazi >= 65 && yazi <= 90) || (yazi >= 97 && yazi <= 120) || yazi == 148 || yazi == 231 || yazi == 305 || yazi == 287 || yazi == 246 || yazi == 351 || yazi == 252 || yazi == 199 || yazi == 304 || yazi == 208 || yazi == 214 || yazi == 350 || yazi == 220))
                        {
                            mesaj += yazi + " KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                        }
                    }

                }

            }
            else
            {
                mesaj += "20 KARATERDEN FAZLA GİREMEZSİNİZ.<br/>";
            }
            return mesaj;
        }

        public static string blogharfMi(string girilenharf)
        {
            string mesaj = "";
            if (girilenharf.Length < 1)
            {
                mesaj += "BOŞ GEÇEMEZSİN.<br/>";
            }
            else if (girilenharf.Length < 50)
            {
                foreach (char yazi in girilenharf)
                {
                    if (yazi == 32)
                    {
                        mesaj += "BOŞLUK KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                    }
                    else
                    {
                        if (!((yazi >= 65 && yazi <= 90) || (yazi >= 97 && yazi <= 120) || yazi == 148 || yazi == 231 || yazi == 305 || yazi == 287 || yazi == 246 || yazi == 351 || yazi == 252 || yazi == 199 || yazi == 304 || yazi == 208 || yazi == 214 || yazi == 350 || yazi == 220))
                        {
                            mesaj += yazi + " KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                        }
                    }

                }

            }
            else
            {
                mesaj += "50 KARATERDEN FAZLA GİREMEZSİNİZ.<br/>";
            }
            return mesaj;
        }

        public static string blogharfMiKİ(string girilenharf)
        {
            string mesaj = "";
            if (girilenharf.Length < 1)
            {
                mesaj += "BOŞ GEÇEMEZSİN.<br/>";
            }
            else if (girilenharf.Length < 50)
            {
                foreach (char yazi in girilenharf)
                {

                    if (!((yazi >= 65 && yazi <= 90) || (yazi >= 97 && yazi <= 120) || yazi == 148 || yazi == 231 || yazi == 305 || yazi == 287 || yazi == 246 || yazi == 351 || yazi == 252 || yazi == 199 || yazi == 304 || yazi == 208 || yazi == 214 || yazi == 350 || yazi == 220))
                    {
                        mesaj += yazi + " KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                    }


                }

            }
            else
            {
                mesaj += "50 KARATERDEN FAZLA GİREMEZSİNİZ.<br/>";
            }
            return mesaj;
        }

        public static string harfMiKi(string girilenharf)
        {
            string mesaj = "";

            if (girilenharf.Length < 20)
            {
                foreach (char yazi in girilenharf)
                {
                    if (yazi == 32)
                    {
                        mesaj += "BOŞLUK KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                    }
                    else
                    {
                        if (!((yazi >= 65 && yazi <= 90) || (yazi >= 97 && yazi <= 120) || yazi == 148 || yazi == 231 || yazi == 305 || yazi == 287 || yazi == 246 || yazi == 351 || yazi == 252 || yazi == 199 || yazi == 304 || yazi == 208 || yazi == 214 || yazi == 350 || yazi == 220))
                        {
                            mesaj += yazi + " KARAKTERİNİ GİREMEZSİNİZ.<br/>";
                        }
                    }

                }

            }
            else
            {
                mesaj += "20 KARAKTERDEN FAZLA GİREMEZSİNİZ.<br/>";
            }
            return mesaj;
        }

        public static string dörtkatımethodu(string sayi)
        {
            string sonuc = "";
            if (sayi.Length != 0)
            {
                if (sayiMi(sayi) == "")
                {
                    sonuc = (Convert.ToUInt32(sayi) * 4).ToString();
                }
                else
                {
                    sonuc = blog.sayiMi(sayi);
                }

            }
            else
            {
                sonuc = "lütfen bir sayı giriniz.";
            }

            return sonuc;
        }

        public static string noktalamaişaretiMi(string yazi)
        {
            string sonmesaj = "";
            if (yazi.Length < 1)
            {
                sonmesaj += "boş geçilmez.<br/>";
            }
            else
            {
                foreach (char noktalama in yazi)
                {
                    if (noktalama == 32)
                    {
                        sonmesaj += "boşluk karaterini kullanazmasınız.<br />";
                    }
                    else
                    {
                        if ((noktalama >= 33 && noktalama <= 47) || (noktalama >= 58 && noktalama <= 64) || (noktalama >= 91 && noktalama <= 96) || (noktalama >= 123 && noktalama <= 126))
                        {
                            sonmesaj += noktalama + " karakterini giremezsiniz.<br />";
                        }
                    }
                }
            }
            return sonmesaj;

        }

        public static string terscevirme(string kelime)
        {
            string terskelime = "";
            for (int i = kelime.Length - 1; i >= 0; i--)
            {
                terskelime += kelime.Substring(i, 1);
            }
            return terskelime;
        }

        public static int aranankelimeilknerede(string kelime, string aranankarakter)
        {
            int aranankelimeilnerede = 15000;
            for (int i = 0; i < kelime.Length; i++)
            {
                if (kelime[i].ToString() == aranankarakter)
                {
                    aranankelimeilnerede = i;
                    break;
                }
            }
            return aranankelimeilnerede;

        }

        public static int birersay(string kelime, string aranankelime)
        {
            int sayac = 0;
            for (int i = 0; i < kelime.Length; i++)
            {
                if (kelime[i].ToString() == aranankelime)
                {
                    sayac++;
                }
            }
            return sayac;
        }

        public static int modAlma(int ilkDeger, int ikinciDeger, int bolen)
        {
            int sonuc = 0;
            for (int i = ilkDeger; i < ikinciDeger; i++)
            {
                if (i % bolen == 0)
                {
                    sonuc += i;
                }

            }
            return sonuc;
        }

        public static string modAlmaHerBirisayısı(int ilkDeger, int ikinciDeger, int bolen)
        {
            int sira = 0;
            string sonuc = "";
            for (int i = ilkDeger; i < ikinciDeger; i++)
            {
                if (i % bolen == 0)
                {
                    sira++;
                    sonuc += sira + ".Sıradaki = " + i + "<br />";
                }
            }
            return sonuc;

        }

        public static string ModununHerbirininKatı(int sayi1, int sayi2, int Bolen)
        {
            string hatt = "";
            int sira = 0;
            int karesi = 0;
            for (int i = sayi1; i < sayi2; i++)
            {
                if (i % Bolen == 0)
                {
                    sira++;
                    karesi = (int)Math.Pow(i, 2);//karesi = i * i;
                    hatt += sira + " .Sıradaki = " + i + " Sayısını Karesi = " + karesi + "<br />";

                }
            }
            return hatt;
        }

        public static string telefonMu(string numara, bool ev)
        {
            string hata = "";
            if (!(numara.Length == 10))
            {
                hata += "Kesinlikle 10 Karakter Girmelisin.<br />";
            }
            if (sayiMi(numara) == "")
            {
                if (ev == true)
                {
                    if (!(numara.Substring(0, 1) == "2"))
                    {
                        hata += "Lütfen Ev Telefonu Numarası Giriniz.<br />";
                    }
                }
                else
                {
                    if (!(numara.Substring(0, 1) == "5"))
                    {
                        hata += "Lütfen Telefon Numarası Giriniz.<br />";
                    }

                }
            }
            else
            {
                hata += sayiMi(numara);
            }
            return hata;
        }

        public static string gunEkleme(string gun, int eklenecekgun)
        {
            int gunSayisi = 1;
            switch (gun)
            {
                case "Pazartesi":
                    gunSayisi = 1;
                    break;
                case "Salı":
                    gunSayisi = 2;
                    break;
                case "Çarşamba":
                    gunSayisi = 3;
                    break;
                case "Perşembe":
                    gunSayisi = 4;
                    break;
                case "Cuma":
                    gunSayisi = 5;
                    break;
                case "Cumartesi":
                    gunSayisi = 6;
                    break;
                case "Pazar":
                    gunSayisi = 7;
                    break;
                default:
                    break;
            }
            string sonucyazisi = "";
            int sonuc = (gunSayisi + eklenecekgun) % 7;
            switch (sonuc)
            {
                case 0:
                    sonucyazisi = "Pazartesi";
                    break;
                case 1:
                    sonucyazisi = "Salı";
                    break;
                case 2:
                    sonucyazisi = "Çarşamba";
                    break;
                case 3:
                    sonucyazisi = "Perşembe";
                    break;
                case 4:
                    sonucyazisi = "Cuma";
                    break;
                case 5:
                    sonucyazisi = "Cumartesi";
                    break;
                case 6:
                    sonucyazisi = "Pazar";
                    break;
                default:
                    break;
            }
            return sonucyazisi;
        }

        


    }
}