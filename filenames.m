function [names, names_with_ext, indices] = filenames(dir, prefix, N)
    indices = string(linspace(1, N, N)');
    names = [];
    names_with_ext = [];

    for i = 1 : N
        name = strcat(dir, prefix, indices(i));
        name_with_ext = strcat(name, '.jpg');
        
        names = [names string(name)];
        names_with_ext = [names_with_ext string(name_with_ext)];
    end
end