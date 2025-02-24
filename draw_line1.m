function draw_line1(a,b,c,d,e,f,Mipie)
    xlim([-100 100]);
    ylim([-100 100]);
    zlim([-150 150]);
    
    T0 = transl(a,b,c);
    T1 = transl(d,e,f);
    T_trj = ctraj(T0,T1,10);
    q_trj = Mipie.ikine(T_trj,'q0',[pi/2 pi/2 -pi/2 0 0 0],'mask',[1 1 1 1 1 1]);
    p0 = transl(T0);
    p1 = transl(T1);
    x = [p0(1),p1(1)];
    y = [p0(2),p1(2)];
    z = [p0(3),p1(3)];
    title('Line');
    hold on
    for i = 1:1:10
        Mipie.plot(q_trj(i,:))
    end
    plot3(x,y,z,'LineWidth',3)
end