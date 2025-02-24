clc;
close all;

L(1) = Link([0 40 18 pi/2]);
L(2) = Link([0 0 60 0]);
L(3) = Link([0 0 12 pi/2]);
L(4) = Link([0  60 0 pi/2]);
L(5) = Link([0 0 0 pi/2]);
L(6) = Link([0 12 0 0]);


Mipie = SerialLink(L,'name','Mipie');

shape = 10;
while shape ~= 0
    clc;
    disp("Choose a shape");
    disp("1. Line");
    disp("2. Square");
    disp("3. Circle");
    disp("4. Rectangle");
    disp("5. Spot Welding");

    shape = input("Enter your choice: ");

    switch shape
        case 1 
            a1=input("Enter coordinate 1 of point 1: ");
            b1=input("Enter coordinate 2 of point 1: ");
            c1=input("Enter coordinate 3 of point 1: ");
            a2=input("Enter coordinate 1 of point 2: ");
            b2=input("Enter coordinate 2 of point 2: ");
            c2=input("Enter coordinate 3 of point 1: ");
            draw_line1(a1,b1,c1,a2,b2,c2,Mipie);

        case 2
            a=input("Enter square side: ");
            xs=input("Enter coordinate 1: ");
            ys=input("Enter coordinate 2: ");
            draw_square(xs,ys,a,Mipie);

        case 3
            r=input("Enter radius: ");
            cx=input("Enter coordinate 1: ");
            cy=input("Enter coordinate 2: ");
            draw_circle(r,cx,cy,Mipie);

        case 4 
            lr=input("Enter length of rectangle: ");
            br=input("Enter breadth of rectangle: ");
            xr=input("Enter coordinate 1: ");
            yr=input("Enter coordinate 2: ");
            draw_rectangle(xr,yr,lr,br,Mipie);
   
        case 5
            a1=input("Enter coordinate 1 of point 1: ");
            b1=input("Enter coordinate 2 of point 1: ");
            c1=input("Enter coordinate 3 of point 1: ");
            a2=input("Enter coordinate 1 of point 2: ");
            b2=input("Enter coordinate 2 of point 2: ");
            c2=input("Enter coordinate 3 of point 1: ");
            draw_spot(a1,b1,c1,a2,b2,c2,Mipie);
            
        case 0 
            return
        otherwise
            disp("Invalid choice. Try again.");
            pause(2)
    end
end