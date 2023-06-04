imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
img=imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
imshow(img)
%%matlab görüntünün yolunu tanıttık ve gösterdik
imgD = double(img);
%bazı hesaplamalar yapmamız gerektiğinde ikiye katlarız, typecasting komutunu kullanabiliriz
imshow(imgD)
imshow(imgD/255)
%eğer görüntülemek istersem 255 e bölerim ki bana 0 ile 1 arasında değerler versin
imgD1 = im2double(img);
%resmi ikiye katlayıp figüre ekleriz
figure, imshow(imgD1)
imgA = img>120; 
%120'lik eşik uyguladık pikseller ne olursa olsun 120'den büyükleri saklar geri kalanını sıfır olarak görebiliriz
%impixelinfo toolbox sahipsek ikilik bir  görüntü olduğunu test edebiliriz  Pixel info:(103,117) 0 gibi
%10011001 gibi 8 tane ikili düzlem seçip her düzlemde PIA, sıfır düzleminde her piksel için bit sıfıra sahiptir
%birinin bit sahipliği her bir görüntü ve benzeri için geçerlidir, yedinci düzlem en yüksek olana sahip olur ve bu 
%bu görüntünün tüm ara piksellerinin MSB en önemli bitleridir elbette bunları elde etmek için dönüştürmeliyiz
%LSB'nin çıkarıldığını görebileceğimiz bir model,%1%0011001% , %1% böylece bu fon için bir kullanabiliriz. 
img0 = mod(imgD,2);
img1 = mod(floor(imgD/2),2);
figure, imshow(img1)
%sağa kaydırıp 2'ye böldük
%pikseller kaymış oldu.
img10 = mod(floor(imgD/4),2);
img11 = mod(floor(imgD/8),2);
img9 = mod(floor(imgD/2),2);
img12 = mod(floor(imgD/16),2);
img13 = mod(floor(imgD/32),2);
img14 = mod(floor(imgD/64),2);
img15 = mod(floor(imgD/128),2);
figure, imshow(img9);
figure, imshow(img10);
figure, imshow(img11);
figure, imshow(img12);
figure, imshow(img13);
figure, imshow(img14);
figure, imshow(img15);
%10011001(örnektir) son rakamın bize en önemli kısmı gösterdiğini görebiliriz. son görüntünün maksimum değerine
%katkıda bulunan en önemli kısım daha sonra katkıda bulunur. görüntüyü sıkıştırmak veya başka bir görüntüyü depolamak
%için düzlemler filigranları resimler ile karıştırırız. yani resmi yeniden oluşturabiliriz yani birleşitiririz.
imgM= 2*(2*(2*(2*(2*(2*img15+img14)+img13)+img12)+img11)+img10)+img9;
imshow(imgM)
imgM= 2*(2*(2*(2*(2*(2*img15+img14)+img13)+img12)+img11)+img10)+img9;
figure,imshow(imgM)
%beyaz bir görüntü geldi elde ettiğimiz değerler 8'lik değil görüntü göstermek için dönüştürmek gerekiyor
imshow(uint8(imgM))
%görüntüleri karıştırdık (üst üste koyduk) ve görseli elde ettik.


