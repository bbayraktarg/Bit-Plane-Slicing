imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
img=imread('C:\Users\ASUS\Desktop\Matlab\photone.tif');
imshow(img)
imgD=im2double(img);
x=imgD;
[r,c]=size(imgD);

%%
factor=3;
for i =1:r
    for j=1:c
      x(i,j)=factor*log(1+imgD(i,j));
    end
end
subplot(1,2,1); imshow(imgD);title('önce');
subplot(1,2,2); imshow(x); title('sonra');
%aydınlık sonuç
%%
%karanlık sonuç
factor=1;
for i =1:r
    for j=1:c
      x(i,j)=factor*log(1+imgD(i,j));
      y(i,j)=factor*imgD(i,j) ^20;
    end
end
subplot(1,2,1); imshow(imgD);title('önce');
subplot(1,2,2); imshow(x); title('sonra');
figure, imshow(y)
