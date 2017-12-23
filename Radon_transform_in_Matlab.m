close all;

%Conversion of a gray scale image to a binary one
original_image = imread('findAngle10.png');
Binary_image = im2bw(original_image, 0.99);
figure(1);
subplot(1,2,1), imshow(original_image), title('Original image');
subplot(1,2,2), imshow(Binary_image), title('Binary image');

%Calculating the Radon transformation
theta = 0:180;
[R,xp] = radon(Binary_image,theta);

%Display the transformation
figure(2);
iptsetpref('ImshowAxesVisible','on');
subplot(1,2,1), imshow(Binary_image), title('Binary image');
subplot(1,2,2), imshow(R,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit'), title('Radon Transformation');
xlabel('\theta (degrees)')
ylabel('x''')
colormap(gca,hot), colorbar

%Radon Transformation with Rectangels
rectangel_image = imread('findRect10.png');

Binary_rectangel = im2bw(rectangel_image, 0.99);
figure(3);
subplot(1,2,1), imshow(rectangel_image), title('Original rectangel');
subplot(1,2,2), imshow(Binary_rectangel), title('Binary image');

%Calculating the Radon transformation
theta = 0:180;
[R,xp] = radon(Binary_rectangel,theta);

%Display the transformation
figure(4);
iptsetpref('ImshowAxesVisible','on');
subplot(1,2,1), imshow(Binary_rectangel), title('Binary image');
subplot(1,2,2), imshow(R,[],'Xdata',theta,'Ydata',xp,'InitialMagnification','fit'), title('Radon Transformation');
xlabel('\theta (degrees)')
ylabel('x''')
colormap(gca,hot), colorbar