function Kn = DW_Kn(neighborhoodData, directionNum, rawFlag, needChannal)
% DW_Kn.m    get rawData from HiRawImage
%   Input:
%       neighborhoodData    the data of neighborhood range
%       directionNum        the num of direction
%       rawFlag             1: the data is Raw
%                           0: the data is not Raw
%       needChannal         1: R is in Raw, need to add B
%                           0: B is in Raw, need to add R
%   Output:
%       Wn                  The weignt of each direction
%   Instructions:
%       author:     wtzhu
%       e-mail:     wtzhu_13@163.com
% Last Modified by wtzhu v1.0 2022-01-23
% Note: 
Kn = zeros(directionNum, 1);
[h, w, c] = size(neighborhoodData);
centerH = round(h/2);
centerW = round(w/2);
if rawFlag
    Kn(1) = neighborhoodData(centerH, centerW-1) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH, centerW-2)) / 2;
    Kn(2) = neighborhoodData(centerH-1, centerW) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH-2, centerW)) / 2;
    Kn(3) = neighborhoodData(centerH, centerW+1) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH, centerW+2)) / 2;
    Kn(4) = neighborhoodData(centerH+1, centerW) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH+2, centerW)) / 2;

    Kn(5) = neighborhoodData(centerH-1, centerW-2) - (neighborhoodData(centerH-2, centerW-2) + neighborhoodData(centerH, centerW-2)) / 2;
    Kn(6) = neighborhoodData(centerH-2, centerW-1) - (neighborhoodData(centerH-2, centerW-2) + neighborhoodData(centerH-2, centerW)) / 2;
    Kn(7) = neighborhoodData(centerH-2, centerW+1) - (neighborhoodData(centerH-2, centerW) + neighborhoodData(centerH-2, centerW+2)) / 2;
    Kn(8) = neighborhoodData(centerH-1, centerW+2) - (neighborhoodData(centerH-2, centerW+2) + neighborhoodData(centerH, centerW+2)) / 2;
    Kn(9) = neighborhoodData(centerH+1, centerW+2) - (neighborhoodData(centerH+2, centerW+2) + neighborhoodData(centerH, centerW+2)) / 2;
    Kn(10) = neighborhoodData(centerH+2, centerW+1) - (neighborhoodData(centerH+2, centerW+2) + neighborhoodData(centerH+2, centerW)) / 2;
    Kn(11) = neighborhoodData(centerH+2, centerW-1) - (neighborhoodData(centerH+2, centerW-2) + neighborhoodData(centerH+2, centerW)) / 2;
    Kn(12) = neighborhoodData(centerH+1, centerW-2) - (neighborhoodData(centerH+2, centerW-2) + neighborhoodData(centerH, centerW-2)) / 2;
else
    switch directionNum
    case 12
        Kn(1) = neighborhoodData(centerH, centerW-1) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH, centerW-2)) / 2;
        Kn(2) = neighborhoodData(centerH-1, centerW) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH-2, centerW)) / 2;
        Kn(3) = neighborhoodData(centerH, centerW+1) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH, centerW+2)) / 2;
        Kn(4) = neighborhoodData(centerH+1, centerW) - (neighborhoodData(centerH, centerW) + neighborhoodData(centerH+2, centerW)) / 2;
        
        Kn(5) = neighborhoodData(centerH-1, centerW-2) - (neighborhoodData(centerH-2, centerW-2) + neighborhoodData(centerH, centerW-2)) / 2;
        Kn(6) = neighborhoodData(centerH-2, centerW-1) - (neighborhoodData(centerH-2, centerW-2) + neighborhoodData(centerH-2, centerW)) / 2;
        Kn(7) = neighborhoodData(centerH-2, centerW+1) - (neighborhoodData(centerH-2, centerW) + neighborhoodData(centerH-2, centerW+2)) / 2;
        Kn(8) = neighborhoodData(centerH-1, centerW+2) - (neighborhoodData(centerH-2, centerW+2) + neighborhoodData(centerH, centerW+2)) / 2;
        Kn(9) = neighborhoodData(centerH+1, centerW+2) - (neighborhoodData(centerH+2, centerW+2) + neighborhoodData(centerH, centerW+2)) / 2;
        Kn(10) = neighborhoodData(centerH+2, centerW+1) - (neighborhoodData(centerH+2, centerW+2) + neighborhoodData(centerH+2, centerW)) / 2;
        Kn(11) = neighborhoodData(centerH+2, centerW-1) - (neighborhoodData(centerH+2, centerW-2) + neighborhoodData(centerH+2, centerW)) / 2;
        Kn(12) = neighborhoodData(centerH+1, centerW-2) - (neighborhoodData(centerH+2, centerW-2) + neighborhoodData(centerH, centerW-2)) / 2;
    case 4
        if needChannal
            Kn(1) = neighborhoodData(centerH-1, centerW-1, 2) - neighborhoodData(centerH-1, centerW-1, 3);
            Kn(2) = neighborhoodData(centerH-1, centerW+1, 2) - neighborhoodData(centerH-1, centerW+1, 3);
            Kn(3) = neighborhoodData(centerH+1, centerW+1, 2) - neighborhoodData(centerH+1, centerW+1, 3);
            Kn(4) = neighborhoodData(centerH+1, centerW-1, 2) - neighborhoodData(centerH+1, centerW-1, 3);
        else
            Kn(1) = neighborhoodData(centerH-1, centerW-1, 2) - neighborhoodData(centerH-1, centerW-1, 1);
            Kn(2) = neighborhoodData(centerH-1, centerW+1, 2) - neighborhoodData(centerH-1, centerW+1, 1);
            Kn(3) = neighborhoodData(centerH+1, centerW+1, 2) - neighborhoodData(centerH+1, centerW+1, 1);
            Kn(4) = neighborhoodData(centerH+1, centerW-1, 2) - neighborhoodData(centerH+1, centerW-1, 1);
        end
    end
end


