function g = readrawb(filename, num)
% 函数readrawb(filename, num)中的第一个参数filename是欲读取的rawb文件的文件名，第二个参数num就是第多少张。
fid = fopen(filename);
% 连续读取181*217*181个数据，这时候temp是一个长度为181*217*181的向量。
% 先将rawb中的所有数据传递给temp数组，然后将tempreshape成图片集。
temp = fread(fid, 181 * 217 * 181);
% 所以把它变成了一个181*217行，181列的数组，按照它的代码，这就是181张图片的数据，每一列对应一张图。
% 生成图片集数组。图片集images数组中每一列表示一张图片。
images = reshape(temp, 181 * 217, 181);   
% 读取数组中的第num行，得到数组再reshape成图片原来的行数和列数：181*217。
image = images(:, num);
image = reshape(image, 181, 217);
g = image;
fclose(fid);
end

% 
% function init_image(filename,num)
% % 函数init_image(filename,num)中的第一个参数filename是欲读取的rawb文件的文件名，第二个参数num就是第多少张。输出为原始图像，未处理
% %例如：init_image('t1_icbm_normal_1mm_pn0_rf0.rawb',90)， init_image('phantom_1.0mm_normal_csf.rawb',90)
% read=readrawb(filename, num);
% % 旋转90°并显示出来
% read=imrotate(read, 90);                                        
% imshow(uint8(read));
% end