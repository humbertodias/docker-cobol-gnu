       IDENTIFICATION DIVISION.
       PROGRAM-ID. AAA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AA.
           02 A PIC 9(2).
       PROCEDURE DIVISION.
       P1.
           DISPLAY "ENTER ONE NUMBER".
           ACCEPT A.
           IF A IS > 0
           DISPLAY "POSITIVE NUMBER"
          ELSE
           DISPLAY "NEGATIVE NUMBER".
           STOP RUN.
