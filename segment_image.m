function [ segments ] = segment_image( image )
%segment_img Performs segmentation on an image using the SLIC algorithm
%   image: The image to be segmented
%   segmetns: The produced segments by the SLIC algorithm

% Calculate region size
regionSize = max(size(image)) * 0.2;

% Calculate regularizer
regularizer = 0.5;

% Convert input image to L*a*b
imlab = vl_xyz2lab(vl_rgb2xyz(image));

% Compute the segmentation
segments = vl_slic(single(imlab), regionSize, regularizer) ;

end

