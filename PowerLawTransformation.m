imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
img=imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
imshow(img)
imgD=im2double(img);
[m,n]=size(imgD);

%şimdi güç yasası dönüşümünü uyguluyoruz
gamma=1.7; %gama değeri, görüntünün daha parlak veya daha koyu olmasına bağlıdır
out = abs((1*imgD).^gamma);
%şimdi bu çıktıyı [0.255] yoğunluk ölçeğinde normalleştirmemiz gerekiyor

maxm=max(out(:));
minm=min(out(:));
for i=1:m
    for j=1:n
        out(i,j)=(255*out(i,j))/(maxm-minm);
    end
end

out=uint8(out);

%şimdi orijinal ve çıktı resimleri göreim
figure(1);
set(gcf,'Position',get(0,'screensize'));
subplot(121),imshow(img),title('orijinal resim');
subplot(122),imshow(out),title('dönüşüm gücünün çıktısı');

