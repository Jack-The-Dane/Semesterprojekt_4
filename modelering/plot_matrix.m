function out = plot_matrix(M, rows, cols, step)
    
    points = [];
    for x = 0:step:2*pi
        r = M(x);
        points = [points [
            x;
            r(1, :)';
            r(2, :)';
        ]];
    end

    x = points(1, :);

    t = tiledlayout(rows, cols);

    for i = 2:(rows*cols+1)
        y = points(i, :);
        nexttile
        plot(x, vpa(y, 3));
        xlim([0 2*pi]);
    end
   
    out = points;

end
