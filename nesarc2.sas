libname mydata "/courses/d1406ae5ba27fe300 " access=readonly;

data new; set mydata.nesarc_pds;
keep IDNUM S1Q9A S3CD3Q13B AGE opioidabuselife;

/*create did not work for pay industry category*/
if S1Q9A = . then S1Q9A = 15;

/*define opioid abusers based on those with at least 1 opioid abuse event*/
if S3CD3Q13B NE . then opioidabuselife = 1;
if S3CD3Q13B = . then opioidabuselife = 0;

/*change industry numbers to characters*/
S1Q9A = STRIP(PUT(S1Q9A, 8.));

/*subset the data to only adults*/
if AGE GE 18;
run;

/*run frequency tables on opioid episodes and industry*/
proc freq; tables S1Q9A opioidabuselife;
run;

/*run Chi Square test*/
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

/*post hoc analysis*/
DATA COMPARISON1; SET NEW;
IF S1Q9A=1 OR S1Q9A=2;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON2; SET NEW;
IF S1Q9A=1 OR S1Q9A=3;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON3; SET NEW;
IF S1Q9A=1 OR S1Q9A=4;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON4; SET NEW;
IF S1Q9A=1 OR S1Q9A=5;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON5; SET NEW;
IF S1Q9A=1 OR S1Q9A=6;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON6; SET NEW;
IF S1Q9A=1 OR S1Q9A=7;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON7; SET NEW;
IF S1Q9A=1 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON8; SET NEW;
IF S1Q9A=1 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON9; SET NEW;
IF S1Q9A=1 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON10; SET NEW;
IF S1Q9A=1 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;


DATA COMPARISON11; SET NEW;
IF S1Q9A=1 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON12; SET NEW;
IF S1Q9A=1 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON13; SET NEW;
IF S1Q9A=1 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON14; SET NEW;
IF S1Q9A=1 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON15; SET NEW;
IF S1Q9A=2 OR S1Q9A=3;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON16; SET NEW;
IF S1Q9A=2 OR S1Q9A=4;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON17; SET NEW;
IF S1Q9A=2 OR S1Q9A=5;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON18; SET NEW;
IF S1Q9A=2 OR S1Q9A=6;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON19; SET NEW;
IF S1Q9A=2 OR S1Q9A=7;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON20; SET NEW;
IF S1Q9A=2 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON21; SET NEW;
IF S1Q9A=2 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON22; SET NEW;
IF S1Q9A=2 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON23; SET NEW;
IF S1Q9A=2 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON24; SET NEW;
IF S1Q9A=2 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON25; SET NEW;
IF S1Q9A=2 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON26; SET NEW;
IF S1Q9A=2 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON27; SET NEW;
IF S1Q9A=2 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON28; SET NEW;
IF S1Q9A=3 OR S1Q9A=4;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON29; SET NEW;
IF S1Q9A=3 OR S1Q9A=5;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON30; SET NEW;
IF S1Q9A=3 OR S1Q9A=6;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON31; SET NEW;
IF S1Q9A=3 OR S1Q9A=7;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON32; SET NEW;
IF S1Q9A=3 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISO33; SET NEW;
IF S1Q9A=3 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON34; SET NEW;
IF S1Q9A=3 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON35; SET NEW;
IF S1Q9A=3 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON36; SET NEW;
IF S1Q9A=3 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON37; SET NEW;
IF S1Q9A=3 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON38; SET NEW;
IF S1Q9A=3 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON39; SET NEW;
IF S1Q9A=3 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON40; SET NEW;
IF S1Q9A=4 OR S1Q9A=5;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON41; SET NEW;
IF S1Q9A=4 OR S1Q9A=6;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON42; SET NEW;
IF S1Q9A=4 OR S1Q9A=7;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON43; SET NEW;
IF S1Q9A=4 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON44; SET NEW;
IF S1Q9A=4 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON45; SET NEW;
IF S1Q9A=4 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON46; SET NEW;
IF S1Q9A=4 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON47; SET NEW;
IF S1Q9A=4 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON48; SET NEW;
IF S1Q9A=4 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON49; SET NEW;
IF S1Q9A=4 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON50; SET NEW;
IF S1Q9A=4 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON51; SET NEW;
IF S1Q9A=5 OR S1Q9A=6;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON52; SET NEW;
IF S1Q9A=5 OR S1Q9A=7;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON53; SET NEW;
IF S1Q9A=5 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON54; SET NEW;
IF S1Q9A=5 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON55; SET NEW;
IF S1Q9A=5 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON56; SET NEW;
IF S1Q9A=5 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON57; SET NEW;
IF S1Q9A=5 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON58; SET NEW;
IF S1Q9A=5 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON59; SET NEW;
IF S1Q9A=5 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON60; SET NEW;
IF S1Q9A=5 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON61; SET NEW;
IF S1Q9A=6 OR S1Q9A=7;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON62; SET NEW;
IF S1Q9A=6 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON63; SET NEW;
IF S1Q9A=6 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON64; SET NEW;
IF S1Q9A=6 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON65; SET NEW;
IF S1Q9A=6 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON66; SET NEW;
IF S1Q9A=6 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON67; SET NEW;
IF S1Q9A=6 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON68; SET NEW;
IF S1Q9A=6 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON69; SET NEW;
IF S1Q9A=6 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON70; SET NEW;
IF S1Q9A=7 OR S1Q9A=8;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON71; SET NEW;
IF S1Q9A=7 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON72; SET NEW;
IF S1Q9A=7 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON73; SET NEW;
IF S1Q9A=7 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON74; SET NEW;
IF S1Q9A=7 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON75; SET NEW;
IF S1Q9A=7 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON76; SET NEW;
IF S1Q9A=7 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON77; SET NEW;
IF S1Q9A=7 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON78; SET NEW;
IF S1Q9A=8 OR S1Q9A=9;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON79; SET NEW;
IF S1Q9A=8 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON80; SET NEW;
IF S1Q9A=8 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON81; SET NEW;
IF S1Q9A=8 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON82; SET NEW;
IF S1Q9A=8 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON83; SET NEW;
IF S1Q9A=8 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON84; SET NEW;
IF S1Q9A=8 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON85; SET NEW;
IF S1Q9A=9 OR S1Q9A=10;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON86; SET NEW;
IF S1Q9A=9 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON87; SET NEW;
IF S1Q9A=9 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON88; SET NEW;
IF S1Q9A=9 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON89; SET NEW;
IF S1Q9A=9 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON90; SET NEW;
IF S1Q9A=9 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON91; SET NEW;
IF S1Q9A=10 OR S1Q9A=11;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON92; SET NEW;
IF S1Q9A=10 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON93; SET NEW;
IF S1Q9A=10 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON94; SET NEW;
IF S1Q9A=10 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON95; SET NEW;
IF S1Q9A=10 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON96; SET NEW;
IF S1Q9A=11 OR S1Q9A=12;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON97; SET NEW;
IF S1Q9A=11 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON98; SET NEW;
IF S1Q9A=11 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON99; SET NEW;
IF S1Q9A=11 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON100; SET NEW;
IF S1Q9A=12 OR S1Q9A=13;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON101; SET NEW;
IF S1Q9A=12 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON102; SET NEW;
IF S1Q9A=12 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON103; SET NEW;
IF S1Q9A=13 OR S1Q9A=14;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON104; SET NEW;
IF S1Q9A=13 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

DATA COMPARISON105; SET NEW;
IF S1Q9A=14 OR S1Q9A=15;
PROC SORT; BY IDNUM;
PROC FREQ; TABLES opioidabuselife*S1Q9A/CHISQ;
RUN;

























































