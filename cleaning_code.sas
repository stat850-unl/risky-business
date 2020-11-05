/* Please use relative file paths, and reference only files that are actually in the initial data */
/* You can e.g. provide a dropbox link to the big data and code to download it to the local computer */

libname stat850 'C:\Users\kglue\Desktop\My SAS Files\9.4\STATS850\';
filename Youthrs 'C:\Users\kglue\Desktop\My SAS Files\9.4\STATS850\Youthrs.csv';

proc import datafile = 'C:\Users\kglue\Desktop\My SAS Files\9.4\STATS850\Youthrs.csv'
out=stat850.yrs
dbms = csv
replace;
getnames = yes;
PROC PRINT data = stat850.yrs (obs = 10);
RUN;

*/Delete all variables that begin with qn as they were only given in 2019 or are dichotomized versions of other variables/*
data stat850.yrs1; set stat850.yrs;
drop qn8 qn9 qn10 qn11 qn12 qn13 qn14 qn15 qn16 qn17 qn18 qn19 qn20;
run;
proc print data = stat850.yrs1 (obs = 10);
run;

*/It worked for one qn8, now trying to get it to work for rest of qn data/*
data stat850.yrs2; set stat850.yrs1;
drop qn9 qn10 qn11 qn12 qn13 qn14 qn15 qn16 qn17 qn18 qn19 qn20;
run;
proc print data = stat850.yrs2 (obs = 10);
run;

*/Okay, piece by piece I will remove qn21 - qn30 data/*
data stat850.yrs3; set stat850.yrs2;
drop qn21 qn22 qn23 qn24 qn25 qn26 qn27 qn28 qn29 qn30;
run;
proc print data = stat850.yrs3 (obs = 10);
run;
data stat850.yrs4; set stat850.yrs3;
drop qn31 qn32 qn33 qn34 qn35 qn36 qn37 qn38 qn39 qn40;
run;
proc print data = stat850.yrs4 (obs = 10);
run;
data stat850.yrs5; set stat850.yrs4;
drop qn41 qn42 qn43 qn44 qn45 qn46 qn47 qn48 qn49 qn0;
run;
proc print data = stat850.yrs5 (obs = 10);
run;
data stat850.yrs6; set stat850.yrs5;
drop qn51 qn52 qn53 qn54 qn55 qn56 qn57 qn58 qn59 qn60;
run;
proc print data = stat850.yrs6 (obs = 10);
run;
*/There is no qn65 and qn66/*
data stat850.yrs7; set stat850.yrs6;
drop qn61 qn62 qn63 qn64 qn67 qn68 qn69 qn70;
run;
proc print data = stat850.yrs7 (obs = 10);
run;
data stat850.yrs8; set stat850.yrs7;
drop qn71 qn72 qn73 qn74 qn75 qn76 qn77 qn78 qn79 qn80;
run;
proc print data = stat850.yrs8 (obs = 10);
run;
data stat850.yrs9; set stat850.yrs8;
drop qn81 qn82 qn83 qn84 qn85 qn86 qn87 qn88 qn89;
run;
proc print data = stat850.yrs9 (obs = 10);
run;

*/Now getting rid of every column that begins with qn followed by a word as those were only administered in 2019?8
data stat850.yrs10; set stat850.yrs9;
drop qnfrcig qndaycig qnfrevp qndayevp qnfrcgr qndaycgr;
run;
proc print data = stat850.yrs10 (obs = 10);
run;
data stat850.yrs11; set stat850.yrs10;
drop qntb2 qntb3 qntb4 qntb5 qniudimp qnothhpl;
run;
proc print data = stat850.yrs11 (obs = 10);
run;
data stat850.yrs12; set stat850.yrs11;
drop qndualbc qnbcnone qnobese qnowt qnfr0 qnfr1 qnfr2;
run;
proc print data = stat850.yrs12 (obs = 10);
run;
data stat850.yrs13; set stat850.yrs12;
drop qnveg0 qnveg1 qnveg2 qnveg3 qnsoda1 qnsoda2 qnfr2;
run;
proc print data = stat850.yrs13 (obs = 10);
run;
data stat850.yrs14; set stat850.yrs13;
drop qnmilk1 qnmilk3 qnbk7day qnpa0day qnpa7day qndlype qnnodnt;
run;
proc print data = stat850.yrs14 (obs = 10);
run;

*/There are still more qn categories that need removed/*
*/These are dichotomized answers which we already have without dichotomization/*
data stat850.yrs15; set stat850.yrs14;
drop qnbikehelmet qndrivemarijuana qncelldriving qnpropertydamage qnbullyweight qnbullygender qnbullygay;
run;
proc print data = stat850.yrs15 (obs = 10);
run;
data stat850.yrs16; set stat850.yrs15;
drop qnchokeself qncigschool qnchewtobschool qnalcoholschool qntypealcohol2 qnhowmarijuana qnmarijuanaschool;
run;
proc print data = stat850.yrs16 (obs = 10);
run;
data stat850.yrs17; set stat850.yrs16;
drop qncurrentopioid qncurrentcocaine qncurrentheroin qncurrentmeth qnhallucdrug qnprescription30d qnillict;
run;
proc print data = stat850.yrs17 (obs = 10);
run;
data stat850.yrs18; set stat850.yrs17;
drop qngenderexp qntaughtHIV qntaughtsexed qntaughtstd qntaughtcondom qntaughtbc qndietpop;
run;
proc print data = stat850.yrs18 (obs = 10);
run;
data stat850.yrs19; set stat850.yrs18;
drop qncoffeetea qnsportsdrink qnspdrk1 qnspdrk2 qnenergydrink qnsugardrink qnwater;
run;
proc print data = stat850.yrs19 (obs = 10);
run;
data stat850.yrs20; set stat850.yrs19;
drop qnwater1 qnwater2 qnwater3 qnfastfood qnfoodallergy qnwenthungry qnmusclestrength;
run;
proc print data = stat850.yrs20 (obs = 10);
run;
data stat850.yrs21; set stat850.yrs20;
drop qnsunscreenuse qnindoortanning qnsunburn qnconcentrating qncurrentasthma qnwheresleep qnspeakenglish;
run;
proc print data = stat850.yrs21 (obs = 10);
run;
data stat850.yrs22; set stat850.yrs21;
drop qntransgender;
run;
proc print data = stat850.yrs22 (obs = 10);
run;

*/First several columns are meaningless, they all state the same thing./*
*/That this study was in the US and this is national level data/*
*/Removing it to lower size of file./*
data stat850.yrs23; set stat850.yrs22;
drop sitecode sitename sitetypenum;
run;
proc print data = stat850.yrs23 (obs = 10);
run;

*/Export yrs23 to a csv file/*
proc export data = stat850.yrs23
	outfile = "C:\Users\kglue\Desktop\My SAS Files\9.4\STATS850\yrs24.csv"
	dbms = csv replace;
run;