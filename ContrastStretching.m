imread('C:\Users\ASUS\Desktop\Matlab\moon.tif');
img=imread('C:\Users\ASUS\Desktop\Matlab\moon.tif');
imgS = imadjust(img,stretchlim(img,[0.05 0.95]),[]);
%kontrastı uzatmak için işlevi ayarladık
%fonksiyonun ilk argümanı kaynak görüntüdür, bir sonraki argüman uzatılmış
%sınır 0.05 ila 0.95'tir.

subplot(2,2,1), imshow(img), title('Orijinal');
subplot(2,2,2), imshow(imgS), title('Uzatılmış görüntü');
subplot(2,2,3), imhist(img), title('Orijinal görüntünün histogramı');
subplot(2,2,4), imhist(imgS), title('uzatılmış görüntünün histogramı');

