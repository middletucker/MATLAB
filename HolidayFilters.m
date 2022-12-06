

% read in the image
im = imread("ELF.jpg");

red = im(:, :, 1);
green = im(:, :, 2);
blue = im(:, :, 3);

%% plot the original image
figure(1)
subplot(2,2,1)
imshow(im);
title('Original Image')
sgtitle({'The best way to spread christmas cheer is singing loud ', ...
    'singing loud for all to hear. -Buddy'}, 'Color', 'red', 'FontSize', 12)

%% get rid of all the blue
deleteColor = blue*0;
im_noBlue = im;
im_noBlue(:,:,3) = deleteColor;

figure(1)
subplot(2,2,2)
imshow(im_noBlue);
title('Delete Blue')

%% Holiday Filter
ThresholdRed = 100;
ThresholdGreen = 75;

im_GR = im_noBlue;
im_GR(:,:,1) = (red > ThresholdRed) *255;
im_GR(:,:,2) = (green > ThresholdGreen) *255;

figure(1)
subplot(2,2,3)
imshow(im_GR);
title('Max out Green and Red')

% Get rid of yellow
for m = 1:length(im_GR(:,1,1))
    for n = 1:length(im_GR(1,:,1))
        if im_GR(m,n,1) > 0 && im_GR(m,n,2) > 0
            im_GR(:,:,3) = 255;
        end
    end
end

figure(1)
subplot(2,2,4)
imshow(im_GR);
title('Red and Green Filter')

%% Plot histogram
redAfter = im_GR(:, :, 1);
greenAfter = im_GR(:, :, 2);
blueAfter = im_GR(:, :, 3);

%plot original
figure(3)
subplot(3,3,1)
h1 = histogram(red, 'FaceColor', 'r');
title('Red Pixels at Start')
figure(3)
subplot(3,3,2)
h2 = histogram(green, 'FaceColor', 'g');
title('Green Pixels at Start')
figure(3)
subplot(3,3,3)
h3 = histogram(blue, 'FaceColor', 'b');
title('Blue Pixels at Start')

% plot final
figure(3)
subplot(3,3,4)
h4 = histogram(redAfter, 'FaceColor', 'r');
title('Red Pixels After')
figure(3)
subplot(3,3,5)
h5 = histogram(greenAfter, 'FaceColor', 'g');
title('Green Pixels After')
figure(3)
subplot(3,3,6)
h6 = histogram(blueAfter, 'FaceColor', 'b');
title('Blue Pixels After')


%% A Christmas Story
im2 = imread("A_Christmas_Story.jpg");

red2 = im2(:, :, 1);
green2 = im2(:, :, 2);
blue2 = im2(:, :, 3);
%% plot the original image
figure(2)
subplot(2,2,1)
imshow(im2);
title('Original Image')
sgtitle({'Youll shoot your eye out kid. - Santa'}, 'Color', 'red', 'FontSize', 12)

%% get rid of all the blue
deleteColor2 = blue2*0;
im_noBlue2 = im2;
im_noBlue2(:,:,3) = deleteColor2;

figure(2)
subplot(2,2,2)
imshow(im_noBlue2);
title('Delete Blue')

%% Holiday Filter
ThresholdRed2 = 100;
ThresholdGreen2 = 75;

im_GR2 = im_noBlue2;
im_GR2(:,:,1) = (red2 > ThresholdRed2) *255;
im_GR2(:,:,2) = (green2 > ThresholdGreen2) *255;

figure(2)
subplot(2,2,3)
imshow(im_GR2);
title('Max out Green and Red')

% Get rid of yellow
for m = 1:length(im_GR2(:,1,1))
    for n = 1:length(im_GR2(1,:,1))
        if im_GR2(m,n,1) > 0 && im_GR2(m,n,2) > 0
            im_GR2(:,:,3) = 255;
        end
    end
end

figure(2)
subplot(2,2,4)
imshow(im_GR2);
title('Red and Green Filter')

% Plot histogram
redAfter2 = im_GR2(:, :, 1);
greenAfter2 = im_GR2(:, :, 2);
blueAfter2 = im_GR2(:, :, 3);

% plot original
figure(4)
subplot(3,3,1)
h12 = histogram(red2, 'FaceColor', 'r');
title('Red Pixels at Start')
figure(4)
subplot(3,3,2)
h22 = histogram(green2, 'FaceColor', 'g');
title('Green Pixels at Start')
figure(4)
subplot(3,3,3)
h32 = histogram(blue2, 'FaceColor', 'b');
title('Blue Pixels at Start')

%plot final
figure(4)
subplot(3,3,4)
h42 = histogram(redAfter2, 'FaceColor', 'r');
title('Red Pixels After')
figure(4)
subplot(3,3,5)
h52 = histogram(greenAfter2, 'FaceColor', 'g');
title('Green Pixels After')
figure(4)
subplot(3,3,6)
h62 = histogram(blueAfter2, 'FaceColor', 'b');
title('Blue Pixels After')

%% Save figures
saveas(figure(1), 'Elf', 'jpg');
saveas(figure(2), 'ChristmasStory', 'jpg');
saveas(figure(3), 'ElfHist', 'jpg');
saveas(figure(4), 'ChristmasStoryHist', 'jpg');