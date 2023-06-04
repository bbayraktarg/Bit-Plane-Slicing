imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
img=imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
imshow(img)
%bilgisayarda bulunan görüntüyü taradık değere atadık ve gösterdik

[m,n]=size(img);
%mxn boyutunda matris şeklinde dijital görüntü elde ettik

imgneg=zeros(m,n);
%sıfıra çok yakın negatif değerleri elde ettik

max_value=max(max(img));
%dizideki tüm öğeler üzerindeki maksimum değeri bulduk

for i =1:m
   for j=1:n
      imgneg(i,j)=max_value-img(i,j);
   end
end
%döngü yardımıyla maksimum değerleri tersine çevirdik

subplot(1,2,1);
imshow(img);
title('orijinal resim');
%Döşenmiş pozisyonlarda eksenler oluşturduk title atadık orijinal resim sol tarafta bulunacak

subplot(1,2,2);
imshow(uint8(imgneg));
title('Resmin Negatifi');
%resmin negatifi sağ tarafta bulunacak