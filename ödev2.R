### 1. Veri Olu??turma ve Yap??land??rma
# c(), seq(), rep() fonksiyonlar?? ile vekt??r olu??turma
yas <- c(25, 30, 22, 45, 28, 35, 40)
isimler <- c("Ali", "Ay??e", "Mehmet", "Fatma", "Can", "Ece", "Mert")
puan <- seq(from = 70, to = 100, length.out = 7)

# data.frame() ile veri seti olu??turma
veri <- data.frame(Isim = isimler, Yas = yas, Puan = puan)

### 2. Veriyi Tan??ma ve ??nceleme
# head(), str(), summary() ve dim() kullan??m??
print("--- Verinin ??lk Sat??rlar?? ---")
head(veri, n = 3) # ??lk 3 sat??r?? g??sterir

print("--- Veri Yap??s?? ---")
str(veri) # De??i??ken tiplerini ve yap??y?? g??sterir

print("--- ??statistiksel ??zet ---")
summary(veri) # Min, Max, Medyan ve ??eyreklik de??erleri verir

### 3. Temel ??statistiksel Hesaplamalar
# mean(), median(), sd(), sum() kullan??m??
ortalama_yas <- mean(veri$Yas)
standart_sapma <- sd(veri$Puan)
toplam_puan <- sum(veri$Puan)

cat("Ya?? Ortalamas??:", ortalama_yas, "\n")
cat("Puan Standart Sapmas??:", standart_sapma, "\n")


### 4. Veri Manip??lasyonu ve Filtreleme
# subset() ve mant??ksal operat??rlerin kullan??m??
# Ya???? 30'dan b??y??k olanlar?? filtreleyelim
olgun_grup <- subset(veri, Yas > 30)

# sort() ve order() ile s??ralama
sirali_veri <- veri[order(veri$Puan, decreasing = TRUE), ]

### 5. Ko??ullu Yap??lar ve D??ng??ler
# if-else ve for d??ng??s?? kullan??m??
print("--- Puan Durumu Kontrolu ---")

for(p in veri$Puan) {
  if(p >= 85) {
    print(paste("Yuksek Puan:", round(p, 2)))
  } else {
    print(paste("Standart Puan:", round(p, 2)))
  }
}

### 6. Temel G??rselle??tirme
# plot() ve hist() kullan??m??
# Ya?? ve Puan aras??ndaki ili??kiyi ??izelim
plot(veri$Yas, veri$Puan, 
     main = "Ya?? vs Puan Grafi??i", 
     xlab = "Ya??", 
     ylab = "Puan", 
     col = "blue", 
     pch = 19)

# Puan da????l??m?? histogram??
hist(veri$Puan, 
     main = "Puan Da????l??m??", 
     col = "lightgreen", 
     xlab = "Puanlar")
