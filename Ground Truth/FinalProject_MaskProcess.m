%% Image Pre-Processing
clear

% Get names of all images in folder
imdir = [pwd,'\Image Masks'];
imlist = dir(imdir);
imlist = imlist(~ismember({imlist.name},{'.','..'}));

countfile = 'MaskCounts.xlsx';
outpath = [pwd,'\Outputs\'];

for im_idx = 1:length(imlist)
    imname = imlist(im_idx).name;
    bw = imread([imdir,'\',imname]);
    CC = bwconncomp(bw);

    % New Table Row
    newRow = table(string(imname),CC.NumObjects,'VariableNames', {'ImName', 'NumCells'});
    if im_idx == 1
        numCells = newRow;
    else
        numCells = [numCells; newRow];
    end
end

writetable(numCells,[outpath,countfile],'Writemode','overwrite')
