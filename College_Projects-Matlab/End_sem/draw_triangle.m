function draw_triangle(stx,sty,s,Mipie)

    xlim([-100 100]);
    ylim([-100 100]);
    

    start=[stx sty 0];
    points=[start(1,1)+s start(1,2) 0;start(1,1)+s/2 start(1,2)+s/2 0;start];
    point0=transl(start);
    q00=Mipie.ikine(point0,'q0',[0 pi/2 0 0 0  0],'mask',[1 1 1 1 1 1]);
    plot(Mipie,q00)

    for i =1:size(points)
        if i==1
            p1=start;
        else
            p1=[points(i-1,1),points(i-1,2),0];
        end

        p2=[points(i,1),points(i,2),0];
        T1=transl(p1);
        T2=transl(p2);
        CT=ctraj(T1,T2,5);
        q=Mipie.ikine(CT,'q0',q00,'mask',[1 1 1 1 1 1]);
        q00=q(5,:);
        plot(Mipie,q)
        title('Triangle');

        hold on 
        x=[p1(1); p2(1)];
        y=[p1(2);p2(2)];
        plot(x,y,'LineWidth',2,'Color','r')

    end
    
end