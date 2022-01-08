       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 WS-OUT PIC X(80) VALUE SPACES.
       01 WS-N PIC 9(2) VALUE 0. 
       01 WS-CENTER PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.

           PERFORM VARYING WS-N FROM 1 BY 2 UNTIL WS-N > 26
           MOVE ALL '*' TO WS-OUT(WS-CENTER:WS-N)
           COMPUTE WS-CENTER = WS-CENTER - 1
           DISPLAY WS-OUT
           END-PERFORM.

           STOP RUN.
           