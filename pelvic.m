function p = pelvic()
    clear; clc;
    [~,txt,~] = xlsread('Anatomy_Lab_Midterm.xlsx', 'Pelvic');
    for i = 1:length(txt)
        a(i) = struct('image', txt(i,1), 'name', txt(i,2));
    end
    r = randperm(length(a));
    for i = 1:length(r)
%         if a(r(i)).region ~= "pelvic"
%             continue
%         end
        imshow(imread(a(r(i)).image))
        pause
        a(r(i)).name
        pause;
    end
    'END'
    close all;
end