function draw_spot(a,b,c,d,e,f,Mipie)
    xlim([-100 100]);
    ylim([-100 100]);
    zlim([-150 150]);
    X0 = [a;b;c];
    X1 = [d;e;f];
    
    T0 = transl(X0);
    T1 = transl(X1);
    T_trj = ctraj(T0,T1,10);
    q_trj = Mipie.ikine(T_trj,'q0',[pi/2 pi/2 -pi/2 0 0 0],'mask',[1 1 1 1 1 1]);
    title('Spot Welding');
    hold on
    for i = 1:1:10
        Mipie.plot(q_trj(i,:))
        pause(0.001)    
    end
    for lamda = 0:0.05:1
        x=(1-lamda)*X0+lamda*X1;
        plot3(x(1,1),x(2,1),x(3,1),'b.','MarkerSize',14);
        pause(0.1)
    end

end