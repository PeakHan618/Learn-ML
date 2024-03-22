        EXTERNAL F,JACOBI
        DIMENSION Y(3,8)S(3,10),YM(3),D(3)P(3.3),Z(3,   30)    DIMENSION S02(3),ER(3),T(30),IS(3),JJS(3)
        DOUBLE PRECISION Y'S,YM,D,P,Z,SO2,ER,T,A,B,H,   HMIN,  HMAXDATA Y/1.0,0.0,-1.0,21*0.0/
        A=0.0
        B-1.0
        WRITE(*,#)WRITE(*10)
        FORMAT(1X,'H,HMIN,HMAX,EPS-?')READ(*,*)H,HMIN,  HMAX, EPSWRITE(*,*)
        N=30
        M=3
        CALL GGEAR(A,B,H,HMIN,HMAX,EPS,M,N,Y,T,Z,KF.F,  JACOBI,   D,P'S,SO2,YM,ER,IIS,JJS)WRITE(*,20) KFFORMAT(1X,'KF-',  I4)
        WRIIE(*,*)
        WRITE(*,30)
        FORMAT(7X,'T ,14X,'Y(1)',11x,'Y(2)',11X''Y(3)')
        DO 401=1,N
        WRITE(*50)T()Z(1,I),Z(2,1),Z(3,I)CONTINUE
        FORMAT(IX,F10.6,5X,3D15.6)WRITE(*，*)
        END
        SUBROUTINE F(T,Y,M,D)DIMENSION Y(M),D(M)
            DOUBLE PRECISION Y,D,TD(1)=-21.0xY(1)+19.0*Y    (2) -20.0*Y(3)D(2)-19.0#Y(1)-21,0*Y(2)+20.0#Y   (3)D(3) =40.0*Y(1)-40.0#Y(2)-40.0*Y(3)RETURN
        END
        SUBROUTINE JACOBI(T,YP,M)DIMENSION Y(M)P(M,MM)  DOUBLE    PRECISION Y,P,T
        P(1,1)=-21.0
        P(1,2)=19.0
        P(1,3)=-20.0
        P(2.1)=19.0
        P(2,2)=-21.0
        P(2,3)=-20.0
        P(3,1)=40.0
        P(3,2)--40.0
        P(3,3)--40.0
        RETURN
        END