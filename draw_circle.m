function draw_circle(r,cx,cy,Mipie)
     xlim([-100 100]);
     ylim([-100 100]);
        t= (0:0.2:10)'; 
        center = [cx cy 0];
       
        theta = t*(2*pi/t(end));
        points = center +[r*cos(theta) r*sin(theta) r*zeros(size(theta))];
        
        point0 = transl(center);
        q00 = Mipie.ikine (point0, 'q0', [0 pi/2 0 0 0 0], 'mask', [1 1 1 1 1 1]);
        plot(Mipie, q00)
        title('Circle');
        
        for i=1: size (points)
            if i==1
                p1 = center;
                p2 = [points(i, 1), points(i, 2), 0];
                T1= transl(p1);
                T2 =transl(p2);
                CT  = ctraj(T1,T2,5);
                q = Mipie.ikine (CT, 'q0', q00, 'mask', [1 1 1 1 1 1]);
                q00 = q(5,:);
                plot (Mipie, q)
            else
                p1=[points(i-1,1),points(i-1,2),0];           
                p2 = [points(i, 1), points(i, 2), 0];
                T1= transl(p1);
                T2 =transl(p2);
                CT  = ctraj(T1,T2,5);
                q = Mipie.ikine (CT, 'q0', q00, 'mask', [1 1 1 1 1 1]);
                q00 = q(5,:);
                plot (Mipie, q)
            end
            hold on 
            x=[p1(1); p2(1)];
            y=[p1(2);p2(2)];
            plot(x,y,'LineWidth',2,'Color','r')
        end
end  
    
          
           
