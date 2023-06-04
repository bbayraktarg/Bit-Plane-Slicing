imread('C:\Users\ASUS\Desktop\Matlab\heart.jpg');
img=imread('C:\Users\ASUS\Desktop\Matlab\heart.jpg');
imshow(img)
imgJ=double(img);
imgK=double(img);
%2'liğe çevirdik
[row,col]=size(imgJ);
%görüntünün boyutunu değişkenlere atıyoruz
T1=input('En düşük eşik değerini girin:');
T2=input('En yüksek eşik değerini girin:');
%tarafımızca test edebilmek için değerleri istiyoruz
for x=1:row
    for y=1:col
        if((imgJ(x,y)>T1)&&(imgJ(x,y)<T2))
            imgJ(x,y)=img(x,y);
            imgK(x,y)=255;
        else
            imgJ(x,y)=0;
            imgK(x,y)=0;
        end
    end
end
%döngü yardımıyla işlevi yerine getirdik

subplot(311), imshow(img), title('orijinal resim')
subplot(312), imshow(uint8(imgJ)), title('Arka plan ile Yoğunluk Düzeyi Dilimleme')
subplot(313), imshow(uint8(imgK)), title('Arka plan olmadan Yoğunluk Seviyesi Dilimleme')

