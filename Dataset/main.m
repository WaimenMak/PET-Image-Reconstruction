for i = 1:181
    image = init_image('t1_icbm_normal_1mm_pn0_rf20.rawb',i);
    filename = [num2str(i) '_layer_noise_9.png'];
    imwrite(image,['./train&test/' filename])
end