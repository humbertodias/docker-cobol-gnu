       IDENTIFICATION DIVISION.
       PROGRAM-ID. AAA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AA.
            02 A PIC 9(2).
            02 B PIC 9(2).
            02 C PIC 9(4).
       PROCEDURE DIVISION.
            DISPLAY "ENTER THE TWO NUMBER".
            ACCEPT A.
            ACCEPT B.
            COMPUTE C = A + B.
            DISPLAY "SUM=", C.
            STOP RUN.
