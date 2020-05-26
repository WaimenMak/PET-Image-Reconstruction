function image = init_image(filename,num)
% 函数init_image(filename,num)中的第一个参数filename是欲读取的rawb文件的文件名，第二个参数num就是第多少张。输出为原始图像，未处理
%例如：init_image('t1_icbm_normal_1mm_pn0_rf0.rawb',90)， init_image('phantom_1.0mm_normal_csf.rawb',90)
read=readrawb(filename, num);
% 旋转90°并显示出来
read=imrotate(read, 90);                                        
% imshow(uint8(read));
image = uint8(read);
end