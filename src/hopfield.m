#
# Self-organizing map
#
# Sergio Garcia Prado
# garciparedes.me
#
clear all


x = [
     -1, -1,  1;
    #   1, -1, -1;
    #  1,  1,  1;
    # -1,  1,  1;
    # -1, -1, -1;
    #  1,  1, -1;
]

x_p = [
     1, -1,  1;
    -1,  1, -1;
];

w = zeros(size(x,2),size(x,2));

for i = 1:size(w,1);
    for j = 1:size(w,2);
        if( i == j);
            w(i,j) = 0;
        else;
            sum1 = 0;
            for p = 1: size(x_p,1);
                sum1 =+  x_p(p,i) * x_p(p,j);
            endfor;
            w(i,j) = sum1;
        endif;
    endfor;
endfor;
w


s = x;
for i = 1:size(w,1);
    do;
        s_copy = s;

        temp = sum(w(i,:) .* s_copy);
        if (temp > 0);
            s(i) = 1;
        elseif(temp < 0);
            s(i) = -1;
        endif;
    until(s_copy == s);
endfor;
s
