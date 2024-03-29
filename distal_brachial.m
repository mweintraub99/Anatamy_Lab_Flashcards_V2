function db = distal_brachial()
    clear; clc;
    [~,txt,~] = xlsread('Anatomy_Lab_Midterm.xlsx', 'distal_brachial');
    for i = 1:length(txt)
        a(i) = struct('image', txt(i,1), 'name', txt(i,2));
    end
    r = randperm(length(a));
    for i = 1:length(r)
        imshow(imread(a(r(i)).image))
        pause
        a(r(i)).name
        pause;
        clc
    end
    'END'
    close all;
end
