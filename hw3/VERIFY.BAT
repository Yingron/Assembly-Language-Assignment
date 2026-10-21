@echo off
call BUILD.BAT
SUMREG > TESTS\O000.TXT
if errorlevel 1 echo ERROR>>TESTS\S000.TXT
if not errorlevel 1 echo OK>>TESTS\S000.TXT
SUMMEM > TESTS\O001.TXT
if errorlevel 1 echo ERROR>>TESTS\S001.TXT
if not errorlevel 1 echo OK>>TESTS\S001.TXT
SUMSTK > TESTS\O002.TXT
if errorlevel 1 echo ERROR>>TESTS\S002.TXT
if not errorlevel 1 echo OK>>TESTS\S002.TXT
H2D < TESTS\I003.TXT > TESTS\O003.TXT
if errorlevel 1 echo ERROR>>TESTS\S003.TXT
if not errorlevel 1 echo OK>>TESTS\S003.TXT
D2H < TESTS\I004.TXT > TESTS\O004.TXT
if errorlevel 1 echo ERROR>>TESTS\S004.TXT
if not errorlevel 1 echo OK>>TESTS\S004.TXT
H2D < TESTS\I005.TXT > TESTS\O005.TXT
if errorlevel 1 echo ERROR>>TESTS\S005.TXT
if not errorlevel 1 echo OK>>TESTS\S005.TXT
D2H < TESTS\I006.TXT > TESTS\O006.TXT
if errorlevel 1 echo ERROR>>TESTS\S006.TXT
if not errorlevel 1 echo OK>>TESTS\S006.TXT
H2D < TESTS\I007.TXT > TESTS\O007.TXT
if errorlevel 1 echo ERROR>>TESTS\S007.TXT
if not errorlevel 1 echo OK>>TESTS\S007.TXT
D2H < TESTS\I008.TXT > TESTS\O008.TXT
if errorlevel 1 echo ERROR>>TESTS\S008.TXT
if not errorlevel 1 echo OK>>TESTS\S008.TXT
H2D < TESTS\I009.TXT > TESTS\O009.TXT
if errorlevel 1 echo ERROR>>TESTS\S009.TXT
if not errorlevel 1 echo OK>>TESTS\S009.TXT
D2H < TESTS\I010.TXT > TESTS\O010.TXT
if errorlevel 1 echo ERROR>>TESTS\S010.TXT
if not errorlevel 1 echo OK>>TESTS\S010.TXT
H2D < TESTS\I011.TXT > TESTS\O011.TXT
if errorlevel 1 echo ERROR>>TESTS\S011.TXT
if not errorlevel 1 echo OK>>TESTS\S011.TXT
D2H < TESTS\I012.TXT > TESTS\O012.TXT
if errorlevel 1 echo ERROR>>TESTS\S012.TXT
if not errorlevel 1 echo OK>>TESTS\S012.TXT
H2D < TESTS\I013.TXT > TESTS\O013.TXT
if errorlevel 1 echo ERROR>>TESTS\S013.TXT
if not errorlevel 1 echo OK>>TESTS\S013.TXT
D2H < TESTS\I014.TXT > TESTS\O014.TXT
if errorlevel 1 echo ERROR>>TESTS\S014.TXT
if not errorlevel 1 echo OK>>TESTS\S014.TXT
H2D < TESTS\I015.TXT > TESTS\O015.TXT
if errorlevel 1 echo ERROR>>TESTS\S015.TXT
if not errorlevel 1 echo OK>>TESTS\S015.TXT
D2H < TESTS\I016.TXT > TESTS\O016.TXT
if errorlevel 1 echo ERROR>>TESTS\S016.TXT
if not errorlevel 1 echo OK>>TESTS\S016.TXT
H2D < TESTS\I017.TXT > TESTS\O017.TXT
if errorlevel 1 echo ERROR>>TESTS\S017.TXT
if not errorlevel 1 echo OK>>TESTS\S017.TXT
D2H < TESTS\I018.TXT > TESTS\O018.TXT
if errorlevel 1 echo ERROR>>TESTS\S018.TXT
if not errorlevel 1 echo OK>>TESTS\S018.TXT
H2D < TESTS\I019.TXT > TESTS\O019.TXT
if errorlevel 1 echo ERROR>>TESTS\S019.TXT
if not errorlevel 1 echo OK>>TESTS\S019.TXT
D2H < TESTS\I020.TXT > TESTS\O020.TXT
if errorlevel 1 echo ERROR>>TESTS\S020.TXT
if not errorlevel 1 echo OK>>TESTS\S020.TXT
H2D < TESTS\I021.TXT > TESTS\O021.TXT
if errorlevel 1 echo ERROR>>TESTS\S021.TXT
if not errorlevel 1 echo OK>>TESTS\S021.TXT
D2H < TESTS\I022.TXT > TESTS\O022.TXT
if errorlevel 1 echo ERROR>>TESTS\S022.TXT
if not errorlevel 1 echo OK>>TESTS\S022.TXT
H2D < TESTS\I023.TXT > TESTS\O023.TXT
if errorlevel 1 echo ERROR>>TESTS\S023.TXT
if not errorlevel 1 echo OK>>TESTS\S023.TXT
D2H < TESTS\I024.TXT > TESTS\O024.TXT
if errorlevel 1 echo ERROR>>TESTS\S024.TXT
if not errorlevel 1 echo OK>>TESTS\S024.TXT
H2D < TESTS\I025.TXT > TESTS\O025.TXT
if errorlevel 1 echo ERROR>>TESTS\S025.TXT
if not errorlevel 1 echo OK>>TESTS\S025.TXT
D2H < TESTS\I026.TXT > TESTS\O026.TXT
if errorlevel 1 echo ERROR>>TESTS\S026.TXT
if not errorlevel 1 echo OK>>TESTS\S026.TXT
H2D < TESTS\I027.TXT > TESTS\O027.TXT
if errorlevel 1 echo ERROR>>TESTS\S027.TXT
if not errorlevel 1 echo OK>>TESTS\S027.TXT
D2H < TESTS\I028.TXT > TESTS\O028.TXT
if errorlevel 1 echo ERROR>>TESTS\S028.TXT
if not errorlevel 1 echo OK>>TESTS\S028.TXT
H2D < TESTS\I029.TXT > TESTS\O029.TXT
if errorlevel 1 echo ERROR>>TESTS\S029.TXT
if not errorlevel 1 echo OK>>TESTS\S029.TXT
D2H < TESTS\I030.TXT > TESTS\O030.TXT
if errorlevel 1 echo ERROR>>TESTS\S030.TXT
if not errorlevel 1 echo OK>>TESTS\S030.TXT
H2D < TESTS\I031.TXT > TESTS\O031.TXT
if errorlevel 1 echo ERROR>>TESTS\S031.TXT
if not errorlevel 1 echo OK>>TESTS\S031.TXT
D2H < TESTS\I032.TXT > TESTS\O032.TXT
if errorlevel 1 echo ERROR>>TESTS\S032.TXT
if not errorlevel 1 echo OK>>TESTS\S032.TXT
H2D < TESTS\I033.TXT > TESTS\O033.TXT
if errorlevel 1 echo ERROR>>TESTS\S033.TXT
if not errorlevel 1 echo OK>>TESTS\S033.TXT
D2H < TESTS\I034.TXT > TESTS\O034.TXT
if errorlevel 1 echo ERROR>>TESTS\S034.TXT
if not errorlevel 1 echo OK>>TESTS\S034.TXT
H2D < TESTS\I035.TXT > TESTS\O035.TXT
if errorlevel 1 echo ERROR>>TESTS\S035.TXT
if not errorlevel 1 echo OK>>TESTS\S035.TXT
D2H < TESTS\I036.TXT > TESTS\O036.TXT
if errorlevel 1 echo ERROR>>TESTS\S036.TXT
if not errorlevel 1 echo OK>>TESTS\S036.TXT
H2D < TESTS\I037.TXT > TESTS\O037.TXT
if errorlevel 1 echo ERROR>>TESTS\S037.TXT
if not errorlevel 1 echo OK>>TESTS\S037.TXT
D2H < TESTS\I038.TXT > TESTS\O038.TXT
if errorlevel 1 echo ERROR>>TESTS\S038.TXT
if not errorlevel 1 echo OK>>TESTS\S038.TXT
H2D < TESTS\I039.TXT > TESTS\O039.TXT
if errorlevel 1 echo ERROR>>TESTS\S039.TXT
if not errorlevel 1 echo OK>>TESTS\S039.TXT
D2H < TESTS\I040.TXT > TESTS\O040.TXT
if errorlevel 1 echo ERROR>>TESTS\S040.TXT
if not errorlevel 1 echo OK>>TESTS\S040.TXT
H2D < TESTS\I041.TXT > TESTS\O041.TXT
if errorlevel 1 echo ERROR>>TESTS\S041.TXT
if not errorlevel 1 echo OK>>TESTS\S041.TXT
D2H < TESTS\I042.TXT > TESTS\O042.TXT
if errorlevel 1 echo ERROR>>TESTS\S042.TXT
if not errorlevel 1 echo OK>>TESTS\S042.TXT
H2D < TESTS\I043.TXT > TESTS\O043.TXT
if errorlevel 1 echo ERROR>>TESTS\S043.TXT
if not errorlevel 1 echo OK>>TESTS\S043.TXT
D2H < TESTS\I044.TXT > TESTS\O044.TXT
if errorlevel 1 echo ERROR>>TESTS\S044.TXT
if not errorlevel 1 echo OK>>TESTS\S044.TXT
H2D < TESTS\I045.TXT > TESTS\O045.TXT
if errorlevel 1 echo ERROR>>TESTS\S045.TXT
if not errorlevel 1 echo OK>>TESTS\S045.TXT
D2H < TESTS\I046.TXT > TESTS\O046.TXT
if errorlevel 1 echo ERROR>>TESTS\S046.TXT
if not errorlevel 1 echo OK>>TESTS\S046.TXT
H2D < TESTS\I047.TXT > TESTS\O047.TXT
if errorlevel 1 echo ERROR>>TESTS\S047.TXT
if not errorlevel 1 echo OK>>TESTS\S047.TXT
D2H < TESTS\I048.TXT > TESTS\O048.TXT
if errorlevel 1 echo ERROR>>TESTS\S048.TXT
if not errorlevel 1 echo OK>>TESTS\S048.TXT
H2D < TESTS\I049.TXT > TESTS\O049.TXT
if errorlevel 1 echo ERROR>>TESTS\S049.TXT
if not errorlevel 1 echo OK>>TESTS\S049.TXT
D2H < TESTS\I050.TXT > TESTS\O050.TXT
if errorlevel 1 echo ERROR>>TESTS\S050.TXT
if not errorlevel 1 echo OK>>TESTS\S050.TXT
H2D < TESTS\I051.TXT > TESTS\O051.TXT
if errorlevel 1 echo ERROR>>TESTS\S051.TXT
if not errorlevel 1 echo OK>>TESTS\S051.TXT
D2H < TESTS\I052.TXT > TESTS\O052.TXT
if errorlevel 1 echo ERROR>>TESTS\S052.TXT
if not errorlevel 1 echo OK>>TESTS\S052.TXT
H2D < TESTS\I053.TXT > TESTS\O053.TXT
if errorlevel 1 echo ERROR>>TESTS\S053.TXT
if not errorlevel 1 echo OK>>TESTS\S053.TXT
D2H < TESTS\I054.TXT > TESTS\O054.TXT
if errorlevel 1 echo ERROR>>TESTS\S054.TXT
if not errorlevel 1 echo OK>>TESTS\S054.TXT
H2D < TESTS\I055.TXT > TESTS\O055.TXT
if errorlevel 1 echo ERROR>>TESTS\S055.TXT
if not errorlevel 1 echo OK>>TESTS\S055.TXT
D2H < TESTS\I056.TXT > TESTS\O056.TXT
if errorlevel 1 echo ERROR>>TESTS\S056.TXT
if not errorlevel 1 echo OK>>TESTS\S056.TXT
H2D < TESTS\I057.TXT > TESTS\O057.TXT
if errorlevel 1 echo ERROR>>TESTS\S057.TXT
if not errorlevel 1 echo OK>>TESTS\S057.TXT
D2H < TESTS\I058.TXT > TESTS\O058.TXT
if errorlevel 1 echo ERROR>>TESTS\S058.TXT
if not errorlevel 1 echo OK>>TESTS\S058.TXT
H2D < TESTS\I059.TXT > TESTS\O059.TXT
if errorlevel 1 echo ERROR>>TESTS\S059.TXT
if not errorlevel 1 echo OK>>TESTS\S059.TXT
D2H < TESTS\I060.TXT > TESTS\O060.TXT
if errorlevel 1 echo ERROR>>TESTS\S060.TXT
if not errorlevel 1 echo OK>>TESTS\S060.TXT
H2D < TESTS\I061.TXT > TESTS\O061.TXT
if errorlevel 1 echo ERROR>>TESTS\S061.TXT
if not errorlevel 1 echo OK>>TESTS\S061.TXT
D2H < TESTS\I062.TXT > TESTS\O062.TXT
if errorlevel 1 echo ERROR>>TESTS\S062.TXT
if not errorlevel 1 echo OK>>TESTS\S062.TXT
H2D < TESTS\I063.TXT > TESTS\O063.TXT
if errorlevel 1 echo ERROR>>TESTS\S063.TXT
if not errorlevel 1 echo OK>>TESTS\S063.TXT
D2H < TESTS\I064.TXT > TESTS\O064.TXT
if errorlevel 1 echo ERROR>>TESTS\S064.TXT
if not errorlevel 1 echo OK>>TESTS\S064.TXT
H2D < TESTS\I065.TXT > TESTS\O065.TXT
if errorlevel 1 echo ERROR>>TESTS\S065.TXT
if not errorlevel 1 echo OK>>TESTS\S065.TXT
D2H < TESTS\I066.TXT > TESTS\O066.TXT
if errorlevel 1 echo ERROR>>TESTS\S066.TXT
if not errorlevel 1 echo OK>>TESTS\S066.TXT
H2D < TESTS\I067.TXT > TESTS\O067.TXT
if errorlevel 1 echo ERROR>>TESTS\S067.TXT
if not errorlevel 1 echo OK>>TESTS\S067.TXT
D2H < TESTS\I068.TXT > TESTS\O068.TXT
if errorlevel 1 echo ERROR>>TESTS\S068.TXT
if not errorlevel 1 echo OK>>TESTS\S068.TXT
H2D < TESTS\I069.TXT > TESTS\O069.TXT
if errorlevel 1 echo ERROR>>TESTS\S069.TXT
if not errorlevel 1 echo OK>>TESTS\S069.TXT
D2H < TESTS\I070.TXT > TESTS\O070.TXT
if errorlevel 1 echo ERROR>>TESTS\S070.TXT
if not errorlevel 1 echo OK>>TESTS\S070.TXT
H2D < TESTS\I071.TXT > TESTS\O071.TXT
if errorlevel 1 echo ERROR>>TESTS\S071.TXT
if not errorlevel 1 echo OK>>TESTS\S071.TXT
D2H < TESTS\I072.TXT > TESTS\O072.TXT
if errorlevel 1 echo ERROR>>TESTS\S072.TXT
if not errorlevel 1 echo OK>>TESTS\S072.TXT
H2D < TESTS\I073.TXT > TESTS\O073.TXT
if errorlevel 1 echo ERROR>>TESTS\S073.TXT
if not errorlevel 1 echo OK>>TESTS\S073.TXT
D2H < TESTS\I074.TXT > TESTS\O074.TXT
if errorlevel 1 echo ERROR>>TESTS\S074.TXT
if not errorlevel 1 echo OK>>TESTS\S074.TXT
H2D < TESTS\I075.TXT > TESTS\O075.TXT
if errorlevel 1 echo ERROR>>TESTS\S075.TXT
if not errorlevel 1 echo OK>>TESTS\S075.TXT
D2H < TESTS\I076.TXT > TESTS\O076.TXT
if errorlevel 1 echo ERROR>>TESTS\S076.TXT
if not errorlevel 1 echo OK>>TESTS\S076.TXT
H2D < TESTS\I077.TXT > TESTS\O077.TXT
if errorlevel 1 echo ERROR>>TESTS\S077.TXT
if not errorlevel 1 echo OK>>TESTS\S077.TXT
D2H < TESTS\I078.TXT > TESTS\O078.TXT
if errorlevel 1 echo ERROR>>TESTS\S078.TXT
if not errorlevel 1 echo OK>>TESTS\S078.TXT
H2D < TESTS\I079.TXT > TESTS\O079.TXT
if errorlevel 1 echo ERROR>>TESTS\S079.TXT
if not errorlevel 1 echo OK>>TESTS\S079.TXT
D2H < TESTS\I080.TXT > TESTS\O080.TXT
if errorlevel 1 echo ERROR>>TESTS\S080.TXT
if not errorlevel 1 echo OK>>TESTS\S080.TXT
H2D < TESTS\I081.TXT > TESTS\O081.TXT
if errorlevel 1 echo ERROR>>TESTS\S081.TXT
if not errorlevel 1 echo OK>>TESTS\S081.TXT
D2H < TESTS\I082.TXT > TESTS\O082.TXT
if errorlevel 1 echo ERROR>>TESTS\S082.TXT
if not errorlevel 1 echo OK>>TESTS\S082.TXT
H2D < TESTS\I083.TXT > TESTS\O083.TXT
if errorlevel 1 echo ERROR>>TESTS\S083.TXT
if not errorlevel 1 echo OK>>TESTS\S083.TXT
D2H < TESTS\I084.TXT > TESTS\O084.TXT
if errorlevel 1 echo ERROR>>TESTS\S084.TXT
if not errorlevel 1 echo OK>>TESTS\S084.TXT
H2D < TESTS\I085.TXT > TESTS\O085.TXT
if errorlevel 1 echo ERROR>>TESTS\S085.TXT
if not errorlevel 1 echo OK>>TESTS\S085.TXT
D2H < TESTS\I086.TXT > TESTS\O086.TXT
if errorlevel 1 echo ERROR>>TESTS\S086.TXT
if not errorlevel 1 echo OK>>TESTS\S086.TXT
H2D < TESTS\I087.TXT > TESTS\O087.TXT
if errorlevel 1 echo ERROR>>TESTS\S087.TXT
if not errorlevel 1 echo OK>>TESTS\S087.TXT
D2H < TESTS\I088.TXT > TESTS\O088.TXT
if errorlevel 1 echo ERROR>>TESTS\S088.TXT
if not errorlevel 1 echo OK>>TESTS\S088.TXT
H2D < TESTS\I089.TXT > TESTS\O089.TXT
if errorlevel 1 echo ERROR>>TESTS\S089.TXT
if not errorlevel 1 echo OK>>TESTS\S089.TXT
D2H < TESTS\I090.TXT > TESTS\O090.TXT
if errorlevel 1 echo ERROR>>TESTS\S090.TXT
if not errorlevel 1 echo OK>>TESTS\S090.TXT
H2D < TESTS\I091.TXT > TESTS\O091.TXT
if errorlevel 1 echo ERROR>>TESTS\S091.TXT
if not errorlevel 1 echo OK>>TESTS\S091.TXT
D2H < TESTS\I092.TXT > TESTS\O092.TXT
if errorlevel 1 echo ERROR>>TESTS\S092.TXT
if not errorlevel 1 echo OK>>TESTS\S092.TXT
H2D < TESTS\I093.TXT > TESTS\O093.TXT
if errorlevel 1 echo ERROR>>TESTS\S093.TXT
if not errorlevel 1 echo OK>>TESTS\S093.TXT
D2H < TESTS\I094.TXT > TESTS\O094.TXT
if errorlevel 1 echo ERROR>>TESTS\S094.TXT
if not errorlevel 1 echo OK>>TESTS\S094.TXT
H2D < TESTS\I095.TXT > TESTS\O095.TXT
if errorlevel 1 echo ERROR>>TESTS\S095.TXT
if not errorlevel 1 echo OK>>TESTS\S095.TXT
D2H < TESTS\I096.TXT > TESTS\O096.TXT
if errorlevel 1 echo ERROR>>TESTS\S096.TXT
if not errorlevel 1 echo OK>>TESTS\S096.TXT
H2D < TESTS\I097.TXT > TESTS\O097.TXT
if errorlevel 1 echo ERROR>>TESTS\S097.TXT
if not errorlevel 1 echo OK>>TESTS\S097.TXT
D2H < TESTS\I098.TXT > TESTS\O098.TXT
if errorlevel 1 echo ERROR>>TESTS\S098.TXT
if not errorlevel 1 echo OK>>TESTS\S098.TXT
H2D < TESTS\I099.TXT > TESTS\O099.TXT
if errorlevel 1 echo ERROR>>TESTS\S099.TXT
if not errorlevel 1 echo OK>>TESTS\S099.TXT
D2H < TESTS\I100.TXT > TESTS\O100.TXT
if errorlevel 1 echo ERROR>>TESTS\S100.TXT
if not errorlevel 1 echo OK>>TESTS\S100.TXT
H2D < TESTS\I101.TXT > TESTS\O101.TXT
if errorlevel 1 echo ERROR>>TESTS\S101.TXT
if not errorlevel 1 echo OK>>TESTS\S101.TXT
D2H < TESTS\I102.TXT > TESTS\O102.TXT
if errorlevel 1 echo ERROR>>TESTS\S102.TXT
if not errorlevel 1 echo OK>>TESTS\S102.TXT
H2D < TESTS\I103.TXT > TESTS\O103.TXT
if errorlevel 1 echo ERROR>>TESTS\S103.TXT
if not errorlevel 1 echo OK>>TESTS\S103.TXT
D2H < TESTS\I104.TXT > TESTS\O104.TXT
if errorlevel 1 echo ERROR>>TESTS\S104.TXT
if not errorlevel 1 echo OK>>TESTS\S104.TXT
H2D < TESTS\I105.TXT > TESTS\O105.TXT
if errorlevel 1 echo ERROR>>TESTS\S105.TXT
if not errorlevel 1 echo OK>>TESTS\S105.TXT
D2H < TESTS\I106.TXT > TESTS\O106.TXT
if errorlevel 1 echo ERROR>>TESTS\S106.TXT
if not errorlevel 1 echo OK>>TESTS\S106.TXT
H2D < TESTS\I107.TXT > TESTS\O107.TXT
if errorlevel 1 echo ERROR>>TESTS\S107.TXT
if not errorlevel 1 echo OK>>TESTS\S107.TXT
D2H < TESTS\I108.TXT > TESTS\O108.TXT
if errorlevel 1 echo ERROR>>TESTS\S108.TXT
if not errorlevel 1 echo OK>>TESTS\S108.TXT
H2D < TESTS\I109.TXT > TESTS\O109.TXT
if errorlevel 1 echo ERROR>>TESTS\S109.TXT
if not errorlevel 1 echo OK>>TESTS\S109.TXT
D2H < TESTS\I110.TXT > TESTS\O110.TXT
if errorlevel 1 echo ERROR>>TESTS\S110.TXT
if not errorlevel 1 echo OK>>TESTS\S110.TXT
H2D < TESTS\I111.TXT > TESTS\O111.TXT
if errorlevel 1 echo ERROR>>TESTS\S111.TXT
if not errorlevel 1 echo OK>>TESTS\S111.TXT
D2H < TESTS\I112.TXT > TESTS\O112.TXT
if errorlevel 1 echo ERROR>>TESTS\S112.TXT
if not errorlevel 1 echo OK>>TESTS\S112.TXT
H2D < TESTS\I113.TXT > TESTS\O113.TXT
if errorlevel 1 echo ERROR>>TESTS\S113.TXT
if not errorlevel 1 echo OK>>TESTS\S113.TXT
D2H < TESTS\I114.TXT > TESTS\O114.TXT
if errorlevel 1 echo ERROR>>TESTS\S114.TXT
if not errorlevel 1 echo OK>>TESTS\S114.TXT
H2D < TESTS\I115.TXT > TESTS\O115.TXT
if errorlevel 1 echo ERROR>>TESTS\S115.TXT
if not errorlevel 1 echo OK>>TESTS\S115.TXT
D2H < TESTS\I116.TXT > TESTS\O116.TXT
if errorlevel 1 echo ERROR>>TESTS\S116.TXT
if not errorlevel 1 echo OK>>TESTS\S116.TXT
H2D < TESTS\I117.TXT > TESTS\O117.TXT
if errorlevel 1 echo ERROR>>TESTS\S117.TXT
if not errorlevel 1 echo OK>>TESTS\S117.TXT
D2H < TESTS\I118.TXT > TESTS\O118.TXT
if errorlevel 1 echo ERROR>>TESTS\S118.TXT
if not errorlevel 1 echo OK>>TESTS\S118.TXT
H2D < TESTS\I119.TXT > TESTS\O119.TXT
if errorlevel 1 echo ERROR>>TESTS\S119.TXT
if not errorlevel 1 echo OK>>TESTS\S119.TXT
D2H < TESTS\I120.TXT > TESTS\O120.TXT
if errorlevel 1 echo ERROR>>TESTS\S120.TXT
if not errorlevel 1 echo OK>>TESTS\S120.TXT
H2D < TESTS\I121.TXT > TESTS\O121.TXT
if errorlevel 1 echo ERROR>>TESTS\S121.TXT
if not errorlevel 1 echo OK>>TESTS\S121.TXT
D2H < TESTS\I122.TXT > TESTS\O122.TXT
if errorlevel 1 echo ERROR>>TESTS\S122.TXT
if not errorlevel 1 echo OK>>TESTS\S122.TXT
H2D < TESTS\I123.TXT > TESTS\O123.TXT
if errorlevel 1 echo ERROR>>TESTS\S123.TXT
if not errorlevel 1 echo OK>>TESTS\S123.TXT
D2H < TESTS\I124.TXT > TESTS\O124.TXT
if errorlevel 1 echo ERROR>>TESTS\S124.TXT
if not errorlevel 1 echo OK>>TESTS\S124.TXT
H2D < TESTS\I125.TXT > TESTS\O125.TXT
if errorlevel 1 echo ERROR>>TESTS\S125.TXT
if not errorlevel 1 echo OK>>TESTS\S125.TXT
D2H < TESTS\I126.TXT > TESTS\O126.TXT
if errorlevel 1 echo ERROR>>TESTS\S126.TXT
if not errorlevel 1 echo OK>>TESTS\S126.TXT
H2D < TESTS\I127.TXT > TESTS\O127.TXT
if errorlevel 1 echo ERROR>>TESTS\S127.TXT
if not errorlevel 1 echo OK>>TESTS\S127.TXT
D2H < TESTS\I128.TXT > TESTS\O128.TXT
if errorlevel 1 echo ERROR>>TESTS\S128.TXT
if not errorlevel 1 echo OK>>TESTS\S128.TXT
H2D < TESTS\I129.TXT > TESTS\O129.TXT
if errorlevel 1 echo ERROR>>TESTS\S129.TXT
if not errorlevel 1 echo OK>>TESTS\S129.TXT
D2H < TESTS\I130.TXT > TESTS\O130.TXT
if errorlevel 1 echo ERROR>>TESTS\S130.TXT
if not errorlevel 1 echo OK>>TESTS\S130.TXT
H2D < TESTS\I131.TXT > TESTS\O131.TXT
if errorlevel 1 echo ERROR>>TESTS\S131.TXT
if not errorlevel 1 echo OK>>TESTS\S131.TXT
D2H < TESTS\I132.TXT > TESTS\O132.TXT
if errorlevel 1 echo ERROR>>TESTS\S132.TXT
if not errorlevel 1 echo OK>>TESTS\S132.TXT
H2D < TESTS\I133.TXT > TESTS\O133.TXT
if errorlevel 1 echo ERROR>>TESTS\S133.TXT
if not errorlevel 1 echo OK>>TESTS\S133.TXT
D2H < TESTS\I134.TXT > TESTS\O134.TXT
if errorlevel 1 echo ERROR>>TESTS\S134.TXT
if not errorlevel 1 echo OK>>TESTS\S134.TXT
H2D < TESTS\I135.TXT > TESTS\O135.TXT
if errorlevel 1 echo ERROR>>TESTS\S135.TXT
if not errorlevel 1 echo OK>>TESTS\S135.TXT
D2H < TESTS\I136.TXT > TESTS\O136.TXT
if errorlevel 1 echo ERROR>>TESTS\S136.TXT
if not errorlevel 1 echo OK>>TESTS\S136.TXT
H2D < TESTS\I137.TXT > TESTS\O137.TXT
if errorlevel 1 echo ERROR>>TESTS\S137.TXT
if not errorlevel 1 echo OK>>TESTS\S137.TXT
D2H < TESTS\I138.TXT > TESTS\O138.TXT
if errorlevel 1 echo ERROR>>TESTS\S138.TXT
if not errorlevel 1 echo OK>>TESTS\S138.TXT
H2D < TESTS\I139.TXT > TESTS\O139.TXT
if errorlevel 1 echo ERROR>>TESTS\S139.TXT
if not errorlevel 1 echo OK>>TESTS\S139.TXT
D2H < TESTS\I140.TXT > TESTS\O140.TXT
if errorlevel 1 echo ERROR>>TESTS\S140.TXT
if not errorlevel 1 echo OK>>TESTS\S140.TXT
H2D < TESTS\I141.TXT > TESTS\O141.TXT
if errorlevel 1 echo ERROR>>TESTS\S141.TXT
if not errorlevel 1 echo OK>>TESTS\S141.TXT
D2H < TESTS\I142.TXT > TESTS\O142.TXT
if errorlevel 1 echo ERROR>>TESTS\S142.TXT
if not errorlevel 1 echo OK>>TESTS\S142.TXT
H2D < TESTS\I143.TXT > TESTS\O143.TXT
if errorlevel 1 echo ERROR>>TESTS\S143.TXT
if not errorlevel 1 echo OK>>TESTS\S143.TXT
D2H < TESTS\I144.TXT > TESTS\O144.TXT
if errorlevel 1 echo ERROR>>TESTS\S144.TXT
if not errorlevel 1 echo OK>>TESTS\S144.TXT
H2D < TESTS\I145.TXT > TESTS\O145.TXT
if errorlevel 1 echo ERROR>>TESTS\S145.TXT
if not errorlevel 1 echo OK>>TESTS\S145.TXT
D2H < TESTS\I146.TXT > TESTS\O146.TXT
if errorlevel 1 echo ERROR>>TESTS\S146.TXT
if not errorlevel 1 echo OK>>TESTS\S146.TXT
H2D < TESTS\I147.TXT > TESTS\O147.TXT
if errorlevel 1 echo ERROR>>TESTS\S147.TXT
if not errorlevel 1 echo OK>>TESTS\S147.TXT
D2H < TESTS\I148.TXT > TESTS\O148.TXT
if errorlevel 1 echo ERROR>>TESTS\S148.TXT
if not errorlevel 1 echo OK>>TESTS\S148.TXT
H2D < TESTS\I149.TXT > TESTS\O149.TXT
if errorlevel 1 echo ERROR>>TESTS\S149.TXT
if not errorlevel 1 echo OK>>TESTS\S149.TXT
D2H < TESTS\I150.TXT > TESTS\O150.TXT
if errorlevel 1 echo ERROR>>TESTS\S150.TXT
if not errorlevel 1 echo OK>>TESTS\S150.TXT
H2D < TESTS\I151.TXT > TESTS\O151.TXT
if errorlevel 1 echo ERROR>>TESTS\S151.TXT
if not errorlevel 1 echo OK>>TESTS\S151.TXT
D2H < TESTS\I152.TXT > TESTS\O152.TXT
if errorlevel 1 echo ERROR>>TESTS\S152.TXT
if not errorlevel 1 echo OK>>TESTS\S152.TXT
H2D < TESTS\I153.TXT > TESTS\O153.TXT
if errorlevel 1 echo ERROR>>TESTS\S153.TXT
if not errorlevel 1 echo OK>>TESTS\S153.TXT
D2H < TESTS\I154.TXT > TESTS\O154.TXT
if errorlevel 1 echo ERROR>>TESTS\S154.TXT
if not errorlevel 1 echo OK>>TESTS\S154.TXT
H2D < TESTS\I155.TXT > TESTS\O155.TXT
if errorlevel 1 echo ERROR>>TESTS\S155.TXT
if not errorlevel 1 echo OK>>TESTS\S155.TXT
D2H < TESTS\I156.TXT > TESTS\O156.TXT
if errorlevel 1 echo ERROR>>TESTS\S156.TXT
if not errorlevel 1 echo OK>>TESTS\S156.TXT
H2D < TESTS\I157.TXT > TESTS\O157.TXT
if errorlevel 1 echo ERROR>>TESTS\S157.TXT
if not errorlevel 1 echo OK>>TESTS\S157.TXT
D2H < TESTS\I158.TXT > TESTS\O158.TXT
if errorlevel 1 echo ERROR>>TESTS\S158.TXT
if not errorlevel 1 echo OK>>TESTS\S158.TXT
H2D < TESTS\I159.TXT > TESTS\O159.TXT
if errorlevel 1 echo ERROR>>TESTS\S159.TXT
if not errorlevel 1 echo OK>>TESTS\S159.TXT
D2H < TESTS\I160.TXT > TESTS\O160.TXT
if errorlevel 1 echo ERROR>>TESTS\S160.TXT
if not errorlevel 1 echo OK>>TESTS\S160.TXT
H2D < TESTS\I161.TXT > TESTS\O161.TXT
if errorlevel 1 echo ERROR>>TESTS\S161.TXT
if not errorlevel 1 echo OK>>TESTS\S161.TXT
D2H < TESTS\I162.TXT > TESTS\O162.TXT
if errorlevel 1 echo ERROR>>TESTS\S162.TXT
if not errorlevel 1 echo OK>>TESTS\S162.TXT
H2D < TESTS\I163.TXT > TESTS\O163.TXT
if errorlevel 1 echo ERROR>>TESTS\S163.TXT
if not errorlevel 1 echo OK>>TESTS\S163.TXT
D2H < TESTS\I164.TXT > TESTS\O164.TXT
if errorlevel 1 echo ERROR>>TESTS\S164.TXT
if not errorlevel 1 echo OK>>TESTS\S164.TXT
H2D < TESTS\I165.TXT > TESTS\O165.TXT
if errorlevel 1 echo ERROR>>TESTS\S165.TXT
if not errorlevel 1 echo OK>>TESTS\S165.TXT
D2H < TESTS\I166.TXT > TESTS\O166.TXT
if errorlevel 1 echo ERROR>>TESTS\S166.TXT
if not errorlevel 1 echo OK>>TESTS\S166.TXT
H2D < TESTS\I167.TXT > TESTS\O167.TXT
if errorlevel 1 echo ERROR>>TESTS\S167.TXT
if not errorlevel 1 echo OK>>TESTS\S167.TXT
D2H < TESTS\I168.TXT > TESTS\O168.TXT
if errorlevel 1 echo ERROR>>TESTS\S168.TXT
if not errorlevel 1 echo OK>>TESTS\S168.TXT
H2D < TESTS\I169.TXT > TESTS\O169.TXT
if errorlevel 1 echo ERROR>>TESTS\S169.TXT
if not errorlevel 1 echo OK>>TESTS\S169.TXT
D2H < TESTS\I170.TXT > TESTS\O170.TXT
if errorlevel 1 echo ERROR>>TESTS\S170.TXT
if not errorlevel 1 echo OK>>TESTS\S170.TXT
H2D < TESTS\I171.TXT > TESTS\O171.TXT
if errorlevel 1 echo ERROR>>TESTS\S171.TXT
if not errorlevel 1 echo OK>>TESTS\S171.TXT
D2H < TESTS\I172.TXT > TESTS\O172.TXT
if errorlevel 1 echo ERROR>>TESTS\S172.TXT
if not errorlevel 1 echo OK>>TESTS\S172.TXT
H2D < TESTS\I173.TXT > TESTS\O173.TXT
if errorlevel 1 echo ERROR>>TESTS\S173.TXT
if not errorlevel 1 echo OK>>TESTS\S173.TXT
D2H < TESTS\I174.TXT > TESTS\O174.TXT
if errorlevel 1 echo ERROR>>TESTS\S174.TXT
if not errorlevel 1 echo OK>>TESTS\S174.TXT
H2D < TESTS\I175.TXT > TESTS\O175.TXT
if errorlevel 1 echo ERROR>>TESTS\S175.TXT
if not errorlevel 1 echo OK>>TESTS\S175.TXT
D2H < TESTS\I176.TXT > TESTS\O176.TXT
if errorlevel 1 echo ERROR>>TESTS\S176.TXT
if not errorlevel 1 echo OK>>TESTS\S176.TXT
H2D < TESTS\I177.TXT > TESTS\O177.TXT
if errorlevel 1 echo ERROR>>TESTS\S177.TXT
if not errorlevel 1 echo OK>>TESTS\S177.TXT
D2H < TESTS\I178.TXT > TESTS\O178.TXT
if errorlevel 1 echo ERROR>>TESTS\S178.TXT
if not errorlevel 1 echo OK>>TESTS\S178.TXT
H2D < TESTS\I179.TXT > TESTS\O179.TXT
if errorlevel 1 echo ERROR>>TESTS\S179.TXT
if not errorlevel 1 echo OK>>TESTS\S179.TXT
D2H < TESTS\I180.TXT > TESTS\O180.TXT
if errorlevel 1 echo ERROR>>TESTS\S180.TXT
if not errorlevel 1 echo OK>>TESTS\S180.TXT
H2D < TESTS\I181.TXT > TESTS\O181.TXT
if errorlevel 1 echo ERROR>>TESTS\S181.TXT
if not errorlevel 1 echo OK>>TESTS\S181.TXT
D2H < TESTS\I182.TXT > TESTS\O182.TXT
if errorlevel 1 echo ERROR>>TESTS\S182.TXT
if not errorlevel 1 echo OK>>TESTS\S182.TXT
H2D < TESTS\I183.TXT > TESTS\O183.TXT
if errorlevel 1 echo ERROR>>TESTS\S183.TXT
if not errorlevel 1 echo OK>>TESTS\S183.TXT
D2H < TESTS\I184.TXT > TESTS\O184.TXT
if errorlevel 1 echo ERROR>>TESTS\S184.TXT
if not errorlevel 1 echo OK>>TESTS\S184.TXT
H2D < TESTS\I185.TXT > TESTS\O185.TXT
if errorlevel 1 echo ERROR>>TESTS\S185.TXT
if not errorlevel 1 echo OK>>TESTS\S185.TXT
D2H < TESTS\I186.TXT > TESTS\O186.TXT
if errorlevel 1 echo ERROR>>TESTS\S186.TXT
if not errorlevel 1 echo OK>>TESTS\S186.TXT
H2D < TESTS\I187.TXT > TESTS\O187.TXT
if errorlevel 1 echo ERROR>>TESTS\S187.TXT
if not errorlevel 1 echo OK>>TESTS\S187.TXT
D2H < TESTS\I188.TXT > TESTS\O188.TXT
if errorlevel 1 echo ERROR>>TESTS\S188.TXT
if not errorlevel 1 echo OK>>TESTS\S188.TXT
H2D < TESTS\I189.TXT > TESTS\O189.TXT
if errorlevel 1 echo ERROR>>TESTS\S189.TXT
if not errorlevel 1 echo OK>>TESTS\S189.TXT
D2H < TESTS\I190.TXT > TESTS\O190.TXT
if errorlevel 1 echo ERROR>>TESTS\S190.TXT
if not errorlevel 1 echo OK>>TESTS\S190.TXT
H2D < TESTS\I191.TXT > TESTS\O191.TXT
if errorlevel 1 echo ERROR>>TESTS\S191.TXT
if not errorlevel 1 echo OK>>TESTS\S191.TXT
D2H < TESTS\I192.TXT > TESTS\O192.TXT
if errorlevel 1 echo ERROR>>TESTS\S192.TXT
if not errorlevel 1 echo OK>>TESTS\S192.TXT
H2D < TESTS\I193.TXT > TESTS\O193.TXT
if errorlevel 1 echo ERROR>>TESTS\S193.TXT
if not errorlevel 1 echo OK>>TESTS\S193.TXT
D2H < TESTS\I194.TXT > TESTS\O194.TXT
if errorlevel 1 echo ERROR>>TESTS\S194.TXT
if not errorlevel 1 echo OK>>TESTS\S194.TXT
H2D < TESTS\I195.TXT > TESTS\O195.TXT
if errorlevel 1 echo ERROR>>TESTS\S195.TXT
if not errorlevel 1 echo OK>>TESTS\S195.TXT
D2H < TESTS\I196.TXT > TESTS\O196.TXT
if errorlevel 1 echo ERROR>>TESTS\S196.TXT
if not errorlevel 1 echo OK>>TESTS\S196.TXT
H2D < TESTS\I197.TXT > TESTS\O197.TXT
if errorlevel 1 echo ERROR>>TESTS\S197.TXT
if not errorlevel 1 echo OK>>TESTS\S197.TXT
D2H < TESTS\I198.TXT > TESTS\O198.TXT
if errorlevel 1 echo ERROR>>TESTS\S198.TXT
if not errorlevel 1 echo OK>>TESTS\S198.TXT
H2D < TESTS\I199.TXT > TESTS\O199.TXT
if errorlevel 1 echo ERROR>>TESTS\S199.TXT
if not errorlevel 1 echo OK>>TESTS\S199.TXT
D2H < TESTS\I200.TXT > TESTS\O200.TXT
if errorlevel 1 echo ERROR>>TESTS\S200.TXT
if not errorlevel 1 echo OK>>TESTS\S200.TXT
H2D < TESTS\I201.TXT > TESTS\O201.TXT
if errorlevel 1 echo ERROR>>TESTS\S201.TXT
if not errorlevel 1 echo OK>>TESTS\S201.TXT
D2H < TESTS\I202.TXT > TESTS\O202.TXT
if errorlevel 1 echo ERROR>>TESTS\S202.TXT
if not errorlevel 1 echo OK>>TESTS\S202.TXT
H2D < TESTS\I203.TXT > TESTS\O203.TXT
if errorlevel 1 echo ERROR>>TESTS\S203.TXT
if not errorlevel 1 echo OK>>TESTS\S203.TXT
D2H < TESTS\I204.TXT > TESTS\O204.TXT
if errorlevel 1 echo ERROR>>TESTS\S204.TXT
if not errorlevel 1 echo OK>>TESTS\S204.TXT
H2D < TESTS\I205.TXT > TESTS\O205.TXT
if errorlevel 1 echo ERROR>>TESTS\S205.TXT
if not errorlevel 1 echo OK>>TESTS\S205.TXT
D2H < TESTS\I206.TXT > TESTS\O206.TXT
if errorlevel 1 echo ERROR>>TESTS\S206.TXT
if not errorlevel 1 echo OK>>TESTS\S206.TXT
H2D < TESTS\I207.TXT > TESTS\O207.TXT
if errorlevel 1 echo ERROR>>TESTS\S207.TXT
if not errorlevel 1 echo OK>>TESTS\S207.TXT
D2H < TESTS\I208.TXT > TESTS\O208.TXT
if errorlevel 1 echo ERROR>>TESTS\S208.TXT
if not errorlevel 1 echo OK>>TESTS\S208.TXT
H2D < TESTS\I209.TXT > TESTS\O209.TXT
if errorlevel 1 echo ERROR>>TESTS\S209.TXT
if not errorlevel 1 echo OK>>TESTS\S209.TXT
D2H < TESTS\I210.TXT > TESTS\O210.TXT
if errorlevel 1 echo ERROR>>TESTS\S210.TXT
if not errorlevel 1 echo OK>>TESTS\S210.TXT
H2D < TESTS\I211.TXT > TESTS\O211.TXT
if errorlevel 1 echo ERROR>>TESTS\S211.TXT
if not errorlevel 1 echo OK>>TESTS\S211.TXT
D2H < TESTS\I212.TXT > TESTS\O212.TXT
if errorlevel 1 echo ERROR>>TESTS\S212.TXT
if not errorlevel 1 echo OK>>TESTS\S212.TXT
H2D < TESTS\I213.TXT > TESTS\O213.TXT
if errorlevel 1 echo ERROR>>TESTS\S213.TXT
if not errorlevel 1 echo OK>>TESTS\S213.TXT
D2H < TESTS\I214.TXT > TESTS\O214.TXT
if errorlevel 1 echo ERROR>>TESTS\S214.TXT
if not errorlevel 1 echo OK>>TESTS\S214.TXT
H2D < TESTS\I215.TXT > TESTS\O215.TXT
if errorlevel 1 echo ERROR>>TESTS\S215.TXT
if not errorlevel 1 echo OK>>TESTS\S215.TXT
D2H < TESTS\I216.TXT > TESTS\O216.TXT
if errorlevel 1 echo ERROR>>TESTS\S216.TXT
if not errorlevel 1 echo OK>>TESTS\S216.TXT
H2D < TESTS\I217.TXT > TESTS\O217.TXT
if errorlevel 1 echo ERROR>>TESTS\S217.TXT
if not errorlevel 1 echo OK>>TESTS\S217.TXT
D2H < TESTS\I218.TXT > TESTS\O218.TXT
if errorlevel 1 echo ERROR>>TESTS\S218.TXT
if not errorlevel 1 echo OK>>TESTS\S218.TXT
H2D < TESTS\I219.TXT > TESTS\O219.TXT
if errorlevel 1 echo ERROR>>TESTS\S219.TXT
if not errorlevel 1 echo OK>>TESTS\S219.TXT
D2H < TESTS\I220.TXT > TESTS\O220.TXT
if errorlevel 1 echo ERROR>>TESTS\S220.TXT
if not errorlevel 1 echo OK>>TESTS\S220.TXT
H2D < TESTS\I221.TXT > TESTS\O221.TXT
if errorlevel 1 echo ERROR>>TESTS\S221.TXT
if not errorlevel 1 echo OK>>TESTS\S221.TXT
D2H < TESTS\I222.TXT > TESTS\O222.TXT
if errorlevel 1 echo ERROR>>TESTS\S222.TXT
if not errorlevel 1 echo OK>>TESTS\S222.TXT
H2D < TESTS\I223.TXT > TESTS\O223.TXT
if errorlevel 1 echo ERROR>>TESTS\S223.TXT
if not errorlevel 1 echo OK>>TESTS\S223.TXT
D2H < TESTS\I224.TXT > TESTS\O224.TXT
if errorlevel 1 echo ERROR>>TESTS\S224.TXT
if not errorlevel 1 echo OK>>TESTS\S224.TXT
H2D < TESTS\I225.TXT > TESTS\O225.TXT
if errorlevel 1 echo ERROR>>TESTS\S225.TXT
if not errorlevel 1 echo OK>>TESTS\S225.TXT
D2H < TESTS\I226.TXT > TESTS\O226.TXT
if errorlevel 1 echo ERROR>>TESTS\S226.TXT
if not errorlevel 1 echo OK>>TESTS\S226.TXT
H2D < TESTS\I227.TXT > TESTS\O227.TXT
if errorlevel 1 echo ERROR>>TESTS\S227.TXT
if not errorlevel 1 echo OK>>TESTS\S227.TXT
D2H < TESTS\I228.TXT > TESTS\O228.TXT
if errorlevel 1 echo ERROR>>TESTS\S228.TXT
if not errorlevel 1 echo OK>>TESTS\S228.TXT
H2D < TESTS\I229.TXT > TESTS\O229.TXT
if errorlevel 1 echo ERROR>>TESTS\S229.TXT
if not errorlevel 1 echo OK>>TESTS\S229.TXT
D2H < TESTS\I230.TXT > TESTS\O230.TXT
if errorlevel 1 echo ERROR>>TESTS\S230.TXT
if not errorlevel 1 echo OK>>TESTS\S230.TXT
H2D < TESTS\I231.TXT > TESTS\O231.TXT
if errorlevel 1 echo ERROR>>TESTS\S231.TXT
if not errorlevel 1 echo OK>>TESTS\S231.TXT
D2H < TESTS\I232.TXT > TESTS\O232.TXT
if errorlevel 1 echo ERROR>>TESTS\S232.TXT
if not errorlevel 1 echo OK>>TESTS\S232.TXT
H2D < TESTS\I233.TXT > TESTS\O233.TXT
if errorlevel 1 echo ERROR>>TESTS\S233.TXT
if not errorlevel 1 echo OK>>TESTS\S233.TXT
D2H < TESTS\I234.TXT > TESTS\O234.TXT
if errorlevel 1 echo ERROR>>TESTS\S234.TXT
if not errorlevel 1 echo OK>>TESTS\S234.TXT
H2D < TESTS\I235.TXT > TESTS\O235.TXT
if errorlevel 1 echo ERROR>>TESTS\S235.TXT
if not errorlevel 1 echo OK>>TESTS\S235.TXT
D2H < TESTS\I236.TXT > TESTS\O236.TXT
if errorlevel 1 echo ERROR>>TESTS\S236.TXT
if not errorlevel 1 echo OK>>TESTS\S236.TXT
H2D < TESTS\I237.TXT > TESTS\O237.TXT
if errorlevel 1 echo ERROR>>TESTS\S237.TXT
if not errorlevel 1 echo OK>>TESTS\S237.TXT
D2H < TESTS\I238.TXT > TESTS\O238.TXT
if errorlevel 1 echo ERROR>>TESTS\S238.TXT
if not errorlevel 1 echo OK>>TESTS\S238.TXT
H2D < TESTS\I239.TXT > TESTS\O239.TXT
if errorlevel 1 echo ERROR>>TESTS\S239.TXT
if not errorlevel 1 echo OK>>TESTS\S239.TXT
D2H < TESTS\I240.TXT > TESTS\O240.TXT
if errorlevel 1 echo ERROR>>TESTS\S240.TXT
if not errorlevel 1 echo OK>>TESTS\S240.TXT
H2D < TESTS\I241.TXT > TESTS\O241.TXT
if errorlevel 1 echo ERROR>>TESTS\S241.TXT
if not errorlevel 1 echo OK>>TESTS\S241.TXT
D2H < TESTS\I242.TXT > TESTS\O242.TXT
if errorlevel 1 echo ERROR>>TESTS\S242.TXT
if not errorlevel 1 echo OK>>TESTS\S242.TXT
H2D < TESTS\I243.TXT > TESTS\O243.TXT
if errorlevel 1 echo ERROR>>TESTS\S243.TXT
if not errorlevel 1 echo OK>>TESTS\S243.TXT
D2H < TESTS\I244.TXT > TESTS\O244.TXT
if errorlevel 1 echo ERROR>>TESTS\S244.TXT
if not errorlevel 1 echo OK>>TESTS\S244.TXT
H2D < TESTS\I245.TXT > TESTS\O245.TXT
if errorlevel 1 echo ERROR>>TESTS\S245.TXT
if not errorlevel 1 echo OK>>TESTS\S245.TXT
D2H < TESTS\I246.TXT > TESTS\O246.TXT
if errorlevel 1 echo ERROR>>TESTS\S246.TXT
if not errorlevel 1 echo OK>>TESTS\S246.TXT
H2D < TESTS\I247.TXT > TESTS\O247.TXT
if errorlevel 1 echo ERROR>>TESTS\S247.TXT
if not errorlevel 1 echo OK>>TESTS\S247.TXT
D2H < TESTS\I248.TXT > TESTS\O248.TXT
if errorlevel 1 echo ERROR>>TESTS\S248.TXT
if not errorlevel 1 echo OK>>TESTS\S248.TXT
H2D < TESTS\I249.TXT > TESTS\O249.TXT
if errorlevel 1 echo ERROR>>TESTS\S249.TXT
if not errorlevel 1 echo OK>>TESTS\S249.TXT
D2H < TESTS\I250.TXT > TESTS\O250.TXT
if errorlevel 1 echo ERROR>>TESTS\S250.TXT
if not errorlevel 1 echo OK>>TESTS\S250.TXT
H2D < TESTS\I251.TXT > TESTS\O251.TXT
if errorlevel 1 echo ERROR>>TESTS\S251.TXT
if not errorlevel 1 echo OK>>TESTS\S251.TXT
D2H < TESTS\I252.TXT > TESTS\O252.TXT
if errorlevel 1 echo ERROR>>TESTS\S252.TXT
if not errorlevel 1 echo OK>>TESTS\S252.TXT
H2D < TESTS\I253.TXT > TESTS\O253.TXT
if errorlevel 1 echo ERROR>>TESTS\S253.TXT
if not errorlevel 1 echo OK>>TESTS\S253.TXT
D2H < TESTS\I254.TXT > TESTS\O254.TXT
if errorlevel 1 echo ERROR>>TESTS\S254.TXT
if not errorlevel 1 echo OK>>TESTS\S254.TXT
H2D < TESTS\I255.TXT > TESTS\O255.TXT
if errorlevel 1 echo ERROR>>TESTS\S255.TXT
if not errorlevel 1 echo OK>>TESTS\S255.TXT
D2H < TESTS\I256.TXT > TESTS\O256.TXT
if errorlevel 1 echo ERROR>>TESTS\S256.TXT
if not errorlevel 1 echo OK>>TESTS\S256.TXT
H2D < TESTS\I257.TXT > TESTS\O257.TXT
if errorlevel 1 echo ERROR>>TESTS\S257.TXT
if not errorlevel 1 echo OK>>TESTS\S257.TXT
D2H < TESTS\I258.TXT > TESTS\O258.TXT
if errorlevel 1 echo ERROR>>TESTS\S258.TXT
if not errorlevel 1 echo OK>>TESTS\S258.TXT
H2D < TESTS\I259.TXT > TESTS\O259.TXT
if errorlevel 1 echo ERROR>>TESTS\S259.TXT
if not errorlevel 1 echo OK>>TESTS\S259.TXT
D2H < TESTS\I260.TXT > TESTS\O260.TXT
if errorlevel 1 echo ERROR>>TESTS\S260.TXT
if not errorlevel 1 echo OK>>TESTS\S260.TXT
H2D < TESTS\I261.TXT > TESTS\O261.TXT
if errorlevel 1 echo ERROR>>TESTS\S261.TXT
if not errorlevel 1 echo OK>>TESTS\S261.TXT
D2H < TESTS\I262.TXT > TESTS\O262.TXT
if errorlevel 1 echo ERROR>>TESTS\S262.TXT
if not errorlevel 1 echo OK>>TESTS\S262.TXT
H2D < TESTS\I263.TXT > TESTS\O263.TXT
if errorlevel 1 echo ERROR>>TESTS\S263.TXT
if not errorlevel 1 echo OK>>TESTS\S263.TXT
D2H < TESTS\I264.TXT > TESTS\O264.TXT
if errorlevel 1 echo ERROR>>TESTS\S264.TXT
if not errorlevel 1 echo OK>>TESTS\S264.TXT
H2D < TESTS\I265.TXT > TESTS\O265.TXT
if errorlevel 1 echo ERROR>>TESTS\S265.TXT
if not errorlevel 1 echo OK>>TESTS\S265.TXT
D2H < TESTS\I266.TXT > TESTS\O266.TXT
if errorlevel 1 echo ERROR>>TESTS\S266.TXT
if not errorlevel 1 echo OK>>TESTS\S266.TXT
H2D < TESTS\I267.TXT > TESTS\O267.TXT
if errorlevel 1 echo ERROR>>TESTS\S267.TXT
if not errorlevel 1 echo OK>>TESTS\S267.TXT
D2H < TESTS\I268.TXT > TESTS\O268.TXT
if errorlevel 1 echo ERROR>>TESTS\S268.TXT
if not errorlevel 1 echo OK>>TESTS\S268.TXT
H2D < TESTS\I269.TXT > TESTS\O269.TXT
if errorlevel 1 echo ERROR>>TESTS\S269.TXT
if not errorlevel 1 echo OK>>TESTS\S269.TXT
D2H < TESTS\I270.TXT > TESTS\O270.TXT
if errorlevel 1 echo ERROR>>TESTS\S270.TXT
if not errorlevel 1 echo OK>>TESTS\S270.TXT
H2D < TESTS\I271.TXT > TESTS\O271.TXT
if errorlevel 1 echo ERROR>>TESTS\S271.TXT
if not errorlevel 1 echo OK>>TESTS\S271.TXT
D2H < TESTS\I272.TXT > TESTS\O272.TXT
if errorlevel 1 echo ERROR>>TESTS\S272.TXT
if not errorlevel 1 echo OK>>TESTS\S272.TXT
H2D < TESTS\I273.TXT > TESTS\O273.TXT
if errorlevel 1 echo ERROR>>TESTS\S273.TXT
if not errorlevel 1 echo OK>>TESTS\S273.TXT
D2H < TESTS\I274.TXT > TESTS\O274.TXT
if errorlevel 1 echo ERROR>>TESTS\S274.TXT
if not errorlevel 1 echo OK>>TESTS\S274.TXT
H2D < TESTS\I275.TXT > TESTS\O275.TXT
if errorlevel 1 echo ERROR>>TESTS\S275.TXT
if not errorlevel 1 echo OK>>TESTS\S275.TXT
D2H < TESTS\I276.TXT > TESTS\O276.TXT
if errorlevel 1 echo ERROR>>TESTS\S276.TXT
if not errorlevel 1 echo OK>>TESTS\S276.TXT
H2D < TESTS\I277.TXT > TESTS\O277.TXT
if errorlevel 1 echo ERROR>>TESTS\S277.TXT
if not errorlevel 1 echo OK>>TESTS\S277.TXT
D2H < TESTS\I278.TXT > TESTS\O278.TXT
if errorlevel 1 echo ERROR>>TESTS\S278.TXT
if not errorlevel 1 echo OK>>TESTS\S278.TXT
H2D < TESTS\I279.TXT > TESTS\O279.TXT
if errorlevel 1 echo ERROR>>TESTS\S279.TXT
if not errorlevel 1 echo OK>>TESTS\S279.TXT
D2H < TESTS\I280.TXT > TESTS\O280.TXT
if errorlevel 1 echo ERROR>>TESTS\S280.TXT
if not errorlevel 1 echo OK>>TESTS\S280.TXT
H2D < TESTS\I281.TXT > TESTS\O281.TXT
if errorlevel 1 echo ERROR>>TESTS\S281.TXT
if not errorlevel 1 echo OK>>TESTS\S281.TXT
D2H < TESTS\I282.TXT > TESTS\O282.TXT
if errorlevel 1 echo ERROR>>TESTS\S282.TXT
if not errorlevel 1 echo OK>>TESTS\S282.TXT
H2D < TESTS\I283.TXT > TESTS\O283.TXT
if errorlevel 1 echo ERROR>>TESTS\S283.TXT
if not errorlevel 1 echo OK>>TESTS\S283.TXT
D2H < TESTS\I284.TXT > TESTS\O284.TXT
if errorlevel 1 echo ERROR>>TESTS\S284.TXT
if not errorlevel 1 echo OK>>TESTS\S284.TXT
H2D < TESTS\I285.TXT > TESTS\O285.TXT
if errorlevel 1 echo ERROR>>TESTS\S285.TXT
if not errorlevel 1 echo OK>>TESTS\S285.TXT
D2H < TESTS\I286.TXT > TESTS\O286.TXT
if errorlevel 1 echo ERROR>>TESTS\S286.TXT
if not errorlevel 1 echo OK>>TESTS\S286.TXT
H2D < TESTS\I287.TXT > TESTS\O287.TXT
if errorlevel 1 echo ERROR>>TESTS\S287.TXT
if not errorlevel 1 echo OK>>TESTS\S287.TXT
D2H < TESTS\I288.TXT > TESTS\O288.TXT
if errorlevel 1 echo ERROR>>TESTS\S288.TXT
if not errorlevel 1 echo OK>>TESTS\S288.TXT
H2D < TESTS\I289.TXT > TESTS\O289.TXT
if errorlevel 1 echo ERROR>>TESTS\S289.TXT
if not errorlevel 1 echo OK>>TESTS\S289.TXT
D2H < TESTS\I290.TXT > TESTS\O290.TXT
if errorlevel 1 echo ERROR>>TESTS\S290.TXT
if not errorlevel 1 echo OK>>TESTS\S290.TXT
H2D < TESTS\I291.TXT > TESTS\O291.TXT
if errorlevel 1 echo ERROR>>TESTS\S291.TXT
if not errorlevel 1 echo OK>>TESTS\S291.TXT
D2H < TESTS\I292.TXT > TESTS\O292.TXT
if errorlevel 1 echo ERROR>>TESTS\S292.TXT
if not errorlevel 1 echo OK>>TESTS\S292.TXT
H2D < TESTS\I293.TXT > TESTS\O293.TXT
if errorlevel 1 echo ERROR>>TESTS\S293.TXT
if not errorlevel 1 echo OK>>TESTS\S293.TXT
D2H < TESTS\I294.TXT > TESTS\O294.TXT
if errorlevel 1 echo ERROR>>TESTS\S294.TXT
if not errorlevel 1 echo OK>>TESTS\S294.TXT
H2D < TESTS\I295.TXT > TESTS\O295.TXT
if errorlevel 1 echo ERROR>>TESTS\S295.TXT
if not errorlevel 1 echo OK>>TESTS\S295.TXT
D2H < TESTS\I296.TXT > TESTS\O296.TXT
if errorlevel 1 echo ERROR>>TESTS\S296.TXT
if not errorlevel 1 echo OK>>TESTS\S296.TXT
H2D < TESTS\I297.TXT > TESTS\O297.TXT
if errorlevel 1 echo ERROR>>TESTS\S297.TXT
if not errorlevel 1 echo OK>>TESTS\S297.TXT
D2H < TESTS\I298.TXT > TESTS\O298.TXT
if errorlevel 1 echo ERROR>>TESTS\S298.TXT
if not errorlevel 1 echo OK>>TESTS\S298.TXT
H2D < TESTS\I299.TXT > TESTS\O299.TXT
if errorlevel 1 echo ERROR>>TESTS\S299.TXT
if not errorlevel 1 echo OK>>TESTS\S299.TXT
D2H < TESTS\I300.TXT > TESTS\O300.TXT
if errorlevel 1 echo ERROR>>TESTS\S300.TXT
if not errorlevel 1 echo OK>>TESTS\S300.TXT
H2D < TESTS\I301.TXT > TESTS\O301.TXT
if errorlevel 1 echo ERROR>>TESTS\S301.TXT
if not errorlevel 1 echo OK>>TESTS\S301.TXT
D2H < TESTS\I302.TXT > TESTS\O302.TXT
if errorlevel 1 echo ERROR>>TESTS\S302.TXT
if not errorlevel 1 echo OK>>TESTS\S302.TXT
H2D < TESTS\I303.TXT > TESTS\O303.TXT
if errorlevel 1 echo ERROR>>TESTS\S303.TXT
if not errorlevel 1 echo OK>>TESTS\S303.TXT
D2H < TESTS\I304.TXT > TESTS\O304.TXT
if errorlevel 1 echo ERROR>>TESTS\S304.TXT
if not errorlevel 1 echo OK>>TESTS\S304.TXT
H2D < TESTS\I305.TXT > TESTS\O305.TXT
if errorlevel 1 echo ERROR>>TESTS\S305.TXT
if not errorlevel 1 echo OK>>TESTS\S305.TXT
D2H < TESTS\I306.TXT > TESTS\O306.TXT
if errorlevel 1 echo ERROR>>TESTS\S306.TXT
if not errorlevel 1 echo OK>>TESTS\S306.TXT
H2D < TESTS\I307.TXT > TESTS\O307.TXT
if errorlevel 1 echo ERROR>>TESTS\S307.TXT
if not errorlevel 1 echo OK>>TESTS\S307.TXT
D2H < TESTS\I308.TXT > TESTS\O308.TXT
if errorlevel 1 echo ERROR>>TESTS\S308.TXT
if not errorlevel 1 echo OK>>TESTS\S308.TXT
H2D < TESTS\I309.TXT > TESTS\O309.TXT
if errorlevel 1 echo ERROR>>TESTS\S309.TXT
if not errorlevel 1 echo OK>>TESTS\S309.TXT
D2H < TESTS\I310.TXT > TESTS\O310.TXT
if errorlevel 1 echo ERROR>>TESTS\S310.TXT
if not errorlevel 1 echo OK>>TESTS\S310.TXT
H2D < TESTS\I311.TXT > TESTS\O311.TXT
if errorlevel 1 echo ERROR>>TESTS\S311.TXT
if not errorlevel 1 echo OK>>TESTS\S311.TXT
D2H < TESTS\I312.TXT > TESTS\O312.TXT
if errorlevel 1 echo ERROR>>TESTS\S312.TXT
if not errorlevel 1 echo OK>>TESTS\S312.TXT
H2D < TESTS\I313.TXT > TESTS\O313.TXT
if errorlevel 1 echo ERROR>>TESTS\S313.TXT
if not errorlevel 1 echo OK>>TESTS\S313.TXT
D2H < TESTS\I314.TXT > TESTS\O314.TXT
if errorlevel 1 echo ERROR>>TESTS\S314.TXT
if not errorlevel 1 echo OK>>TESTS\S314.TXT
H2D < TESTS\I315.TXT > TESTS\O315.TXT
if errorlevel 1 echo ERROR>>TESTS\S315.TXT
if not errorlevel 1 echo OK>>TESTS\S315.TXT
D2H < TESTS\I316.TXT > TESTS\O316.TXT
if errorlevel 1 echo ERROR>>TESTS\S316.TXT
if not errorlevel 1 echo OK>>TESTS\S316.TXT
H2D < TESTS\I317.TXT > TESTS\O317.TXT
if errorlevel 1 echo ERROR>>TESTS\S317.TXT
if not errorlevel 1 echo OK>>TESTS\S317.TXT
D2H < TESTS\I318.TXT > TESTS\O318.TXT
if errorlevel 1 echo ERROR>>TESTS\S318.TXT
if not errorlevel 1 echo OK>>TESTS\S318.TXT
H2D < TESTS\I319.TXT > TESTS\O319.TXT
if errorlevel 1 echo ERROR>>TESTS\S319.TXT
if not errorlevel 1 echo OK>>TESTS\S319.TXT
D2H < TESTS\I320.TXT > TESTS\O320.TXT
if errorlevel 1 echo ERROR>>TESTS\S320.TXT
if not errorlevel 1 echo OK>>TESTS\S320.TXT
H2D < TESTS\I321.TXT > TESTS\O321.TXT
if errorlevel 1 echo ERROR>>TESTS\S321.TXT
if not errorlevel 1 echo OK>>TESTS\S321.TXT
D2H < TESTS\I322.TXT > TESTS\O322.TXT
if errorlevel 1 echo ERROR>>TESTS\S322.TXT
if not errorlevel 1 echo OK>>TESTS\S322.TXT
H2D < TESTS\I323.TXT > TESTS\O323.TXT
if errorlevel 1 echo ERROR>>TESTS\S323.TXT
if not errorlevel 1 echo OK>>TESTS\S323.TXT
D2H < TESTS\I324.TXT > TESTS\O324.TXT
if errorlevel 1 echo ERROR>>TESTS\S324.TXT
if not errorlevel 1 echo OK>>TESTS\S324.TXT
H2D < TESTS\I325.TXT > TESTS\O325.TXT
if errorlevel 1 echo ERROR>>TESTS\S325.TXT
if not errorlevel 1 echo OK>>TESTS\S325.TXT
D2H < TESTS\I326.TXT > TESTS\O326.TXT
if errorlevel 1 echo ERROR>>TESTS\S326.TXT
if not errorlevel 1 echo OK>>TESTS\S326.TXT
H2D < TESTS\I327.TXT > TESTS\O327.TXT
if errorlevel 1 echo ERROR>>TESTS\S327.TXT
if not errorlevel 1 echo OK>>TESTS\S327.TXT
D2H < TESTS\I328.TXT > TESTS\O328.TXT
if errorlevel 1 echo ERROR>>TESTS\S328.TXT
if not errorlevel 1 echo OK>>TESTS\S328.TXT
H2D < TESTS\I329.TXT > TESTS\O329.TXT
if errorlevel 1 echo ERROR>>TESTS\S329.TXT
if not errorlevel 1 echo OK>>TESTS\S329.TXT
D2H < TESTS\I330.TXT > TESTS\O330.TXT
if errorlevel 1 echo ERROR>>TESTS\S330.TXT
if not errorlevel 1 echo OK>>TESTS\S330.TXT
H2D < TESTS\I331.TXT > TESTS\O331.TXT
if errorlevel 1 echo ERROR>>TESTS\S331.TXT
if not errorlevel 1 echo OK>>TESTS\S331.TXT
D2H < TESTS\I332.TXT > TESTS\O332.TXT
if errorlevel 1 echo ERROR>>TESTS\S332.TXT
if not errorlevel 1 echo OK>>TESTS\S332.TXT
H2D < TESTS\I333.TXT > TESTS\O333.TXT
if errorlevel 1 echo ERROR>>TESTS\S333.TXT
if not errorlevel 1 echo OK>>TESTS\S333.TXT
D2H < TESTS\I334.TXT > TESTS\O334.TXT
if errorlevel 1 echo ERROR>>TESTS\S334.TXT
if not errorlevel 1 echo OK>>TESTS\S334.TXT
H2D < TESTS\I335.TXT > TESTS\O335.TXT
if errorlevel 1 echo ERROR>>TESTS\S335.TXT
if not errorlevel 1 echo OK>>TESTS\S335.TXT
D2H < TESTS\I336.TXT > TESTS\O336.TXT
if errorlevel 1 echo ERROR>>TESTS\S336.TXT
if not errorlevel 1 echo OK>>TESTS\S336.TXT
H2D < TESTS\I337.TXT > TESTS\O337.TXT
if errorlevel 1 echo ERROR>>TESTS\S337.TXT
if not errorlevel 1 echo OK>>TESTS\S337.TXT
D2H < TESTS\I338.TXT > TESTS\O338.TXT
if errorlevel 1 echo ERROR>>TESTS\S338.TXT
if not errorlevel 1 echo OK>>TESTS\S338.TXT
H2D < TESTS\I339.TXT > TESTS\O339.TXT
if errorlevel 1 echo ERROR>>TESTS\S339.TXT
if not errorlevel 1 echo OK>>TESTS\S339.TXT
D2H < TESTS\I340.TXT > TESTS\O340.TXT
if errorlevel 1 echo ERROR>>TESTS\S340.TXT
if not errorlevel 1 echo OK>>TESTS\S340.TXT
H2D < TESTS\I341.TXT > TESTS\O341.TXT
if errorlevel 1 echo ERROR>>TESTS\S341.TXT
if not errorlevel 1 echo OK>>TESTS\S341.TXT
D2H < TESTS\I342.TXT > TESTS\O342.TXT
if errorlevel 1 echo ERROR>>TESTS\S342.TXT
if not errorlevel 1 echo OK>>TESTS\S342.TXT
H2D < TESTS\I343.TXT > TESTS\O343.TXT
if errorlevel 1 echo ERROR>>TESTS\S343.TXT
if not errorlevel 1 echo OK>>TESTS\S343.TXT
D2H < TESTS\I344.TXT > TESTS\O344.TXT
if errorlevel 1 echo ERROR>>TESTS\S344.TXT
if not errorlevel 1 echo OK>>TESTS\S344.TXT
H2D < TESTS\I345.TXT > TESTS\O345.TXT
if errorlevel 1 echo ERROR>>TESTS\S345.TXT
if not errorlevel 1 echo OK>>TESTS\S345.TXT
D2H < TESTS\I346.TXT > TESTS\O346.TXT
if errorlevel 1 echo ERROR>>TESTS\S346.TXT
if not errorlevel 1 echo OK>>TESTS\S346.TXT
H2D < TESTS\I347.TXT > TESTS\O347.TXT
if errorlevel 1 echo ERROR>>TESTS\S347.TXT
if not errorlevel 1 echo OK>>TESTS\S347.TXT
D2H < TESTS\I348.TXT > TESTS\O348.TXT
if errorlevel 1 echo ERROR>>TESTS\S348.TXT
if not errorlevel 1 echo OK>>TESTS\S348.TXT
H2D < TESTS\I349.TXT > TESTS\O349.TXT
if errorlevel 1 echo ERROR>>TESTS\S349.TXT
if not errorlevel 1 echo OK>>TESTS\S349.TXT
D2H < TESTS\I350.TXT > TESTS\O350.TXT
if errorlevel 1 echo ERROR>>TESTS\S350.TXT
if not errorlevel 1 echo OK>>TESTS\S350.TXT
H2D < TESTS\I351.TXT > TESTS\O351.TXT
if errorlevel 1 echo ERROR>>TESTS\S351.TXT
if not errorlevel 1 echo OK>>TESTS\S351.TXT
D2H < TESTS\I352.TXT > TESTS\O352.TXT
if errorlevel 1 echo ERROR>>TESTS\S352.TXT
if not errorlevel 1 echo OK>>TESTS\S352.TXT
H2D < TESTS\I353.TXT > TESTS\O353.TXT
if errorlevel 1 echo ERROR>>TESTS\S353.TXT
if not errorlevel 1 echo OK>>TESTS\S353.TXT
D2H < TESTS\I354.TXT > TESTS\O354.TXT
if errorlevel 1 echo ERROR>>TESTS\S354.TXT
if not errorlevel 1 echo OK>>TESTS\S354.TXT
H2D < TESTS\I355.TXT > TESTS\O355.TXT
if errorlevel 1 echo ERROR>>TESTS\S355.TXT
if not errorlevel 1 echo OK>>TESTS\S355.TXT
D2H < TESTS\I356.TXT > TESTS\O356.TXT
if errorlevel 1 echo ERROR>>TESTS\S356.TXT
if not errorlevel 1 echo OK>>TESTS\S356.TXT
H2D < TESTS\I357.TXT > TESTS\O357.TXT
if errorlevel 1 echo ERROR>>TESTS\S357.TXT
if not errorlevel 1 echo OK>>TESTS\S357.TXT
D2H < TESTS\I358.TXT > TESTS\O358.TXT
if errorlevel 1 echo ERROR>>TESTS\S358.TXT
if not errorlevel 1 echo OK>>TESTS\S358.TXT
H2D < TESTS\I359.TXT > TESTS\O359.TXT
if errorlevel 1 echo ERROR>>TESTS\S359.TXT
if not errorlevel 1 echo OK>>TESTS\S359.TXT
D2H < TESTS\I360.TXT > TESTS\O360.TXT
if errorlevel 1 echo ERROR>>TESTS\S360.TXT
if not errorlevel 1 echo OK>>TESTS\S360.TXT
H2D < TESTS\I361.TXT > TESTS\O361.TXT
if errorlevel 1 echo ERROR>>TESTS\S361.TXT
if not errorlevel 1 echo OK>>TESTS\S361.TXT
D2H < TESTS\I362.TXT > TESTS\O362.TXT
if errorlevel 1 echo ERROR>>TESTS\S362.TXT
if not errorlevel 1 echo OK>>TESTS\S362.TXT
H2D < TESTS\I363.TXT > TESTS\O363.TXT
if errorlevel 1 echo ERROR>>TESTS\S363.TXT
if not errorlevel 1 echo OK>>TESTS\S363.TXT
D2H < TESTS\I364.TXT > TESTS\O364.TXT
if errorlevel 1 echo ERROR>>TESTS\S364.TXT
if not errorlevel 1 echo OK>>TESTS\S364.TXT
H2D < TESTS\I365.TXT > TESTS\O365.TXT
if errorlevel 1 echo ERROR>>TESTS\S365.TXT
if not errorlevel 1 echo OK>>TESTS\S365.TXT
D2H < TESTS\I366.TXT > TESTS\O366.TXT
if errorlevel 1 echo ERROR>>TESTS\S366.TXT
if not errorlevel 1 echo OK>>TESTS\S366.TXT
H2D < TESTS\I367.TXT > TESTS\O367.TXT
if errorlevel 1 echo ERROR>>TESTS\S367.TXT
if not errorlevel 1 echo OK>>TESTS\S367.TXT
D2H < TESTS\I368.TXT > TESTS\O368.TXT
if errorlevel 1 echo ERROR>>TESTS\S368.TXT
if not errorlevel 1 echo OK>>TESTS\S368.TXT
H2D < TESTS\I369.TXT > TESTS\O369.TXT
if errorlevel 1 echo ERROR>>TESTS\S369.TXT
if not errorlevel 1 echo OK>>TESTS\S369.TXT
D2H < TESTS\I370.TXT > TESTS\O370.TXT
if errorlevel 1 echo ERROR>>TESTS\S370.TXT
if not errorlevel 1 echo OK>>TESTS\S370.TXT
H2D < TESTS\I371.TXT > TESTS\O371.TXT
if errorlevel 1 echo ERROR>>TESTS\S371.TXT
if not errorlevel 1 echo OK>>TESTS\S371.TXT
D2H < TESTS\I372.TXT > TESTS\O372.TXT
if errorlevel 1 echo ERROR>>TESTS\S372.TXT
if not errorlevel 1 echo OK>>TESTS\S372.TXT
H2D < TESTS\I373.TXT > TESTS\O373.TXT
if errorlevel 1 echo ERROR>>TESTS\S373.TXT
if not errorlevel 1 echo OK>>TESTS\S373.TXT
D2H < TESTS\I374.TXT > TESTS\O374.TXT
if errorlevel 1 echo ERROR>>TESTS\S374.TXT
if not errorlevel 1 echo OK>>TESTS\S374.TXT
H2D < TESTS\I375.TXT > TESTS\O375.TXT
if errorlevel 1 echo ERROR>>TESTS\S375.TXT
if not errorlevel 1 echo OK>>TESTS\S375.TXT
D2H < TESTS\I376.TXT > TESTS\O376.TXT
if errorlevel 1 echo ERROR>>TESTS\S376.TXT
if not errorlevel 1 echo OK>>TESTS\S376.TXT
H2D < TESTS\I377.TXT > TESTS\O377.TXT
if errorlevel 1 echo ERROR>>TESTS\S377.TXT
if not errorlevel 1 echo OK>>TESTS\S377.TXT
D2H < TESTS\I378.TXT > TESTS\O378.TXT
if errorlevel 1 echo ERROR>>TESTS\S378.TXT
if not errorlevel 1 echo OK>>TESTS\S378.TXT
H2D < TESTS\I379.TXT > TESTS\O379.TXT
if errorlevel 1 echo ERROR>>TESTS\S379.TXT
if not errorlevel 1 echo OK>>TESTS\S379.TXT
D2H < TESTS\I380.TXT > TESTS\O380.TXT
if errorlevel 1 echo ERROR>>TESTS\S380.TXT
if not errorlevel 1 echo OK>>TESTS\S380.TXT
H2D < TESTS\I381.TXT > TESTS\O381.TXT
if errorlevel 1 echo ERROR>>TESTS\S381.TXT
if not errorlevel 1 echo OK>>TESTS\S381.TXT
D2H < TESTS\I382.TXT > TESTS\O382.TXT
if errorlevel 1 echo ERROR>>TESTS\S382.TXT
if not errorlevel 1 echo OK>>TESTS\S382.TXT
H2D < TESTS\I383.TXT > TESTS\O383.TXT
if errorlevel 1 echo ERROR>>TESTS\S383.TXT
if not errorlevel 1 echo OK>>TESTS\S383.TXT
D2H < TESTS\I384.TXT > TESTS\O384.TXT
if errorlevel 1 echo ERROR>>TESTS\S384.TXT
if not errorlevel 1 echo OK>>TESTS\S384.TXT
H2D < TESTS\I385.TXT > TESTS\O385.TXT
if errorlevel 1 echo ERROR>>TESTS\S385.TXT
if not errorlevel 1 echo OK>>TESTS\S385.TXT
D2H < TESTS\I386.TXT > TESTS\O386.TXT
if errorlevel 1 echo ERROR>>TESTS\S386.TXT
if not errorlevel 1 echo OK>>TESTS\S386.TXT
H2D < TESTS\I387.TXT > TESTS\O387.TXT
if errorlevel 1 echo ERROR>>TESTS\S387.TXT
if not errorlevel 1 echo OK>>TESTS\S387.TXT
D2H < TESTS\I388.TXT > TESTS\O388.TXT
if errorlevel 1 echo ERROR>>TESTS\S388.TXT
if not errorlevel 1 echo OK>>TESTS\S388.TXT
H2D < TESTS\I389.TXT > TESTS\O389.TXT
if errorlevel 1 echo ERROR>>TESTS\S389.TXT
if not errorlevel 1 echo OK>>TESTS\S389.TXT
D2H < TESTS\I390.TXT > TESTS\O390.TXT
if errorlevel 1 echo ERROR>>TESTS\S390.TXT
if not errorlevel 1 echo OK>>TESTS\S390.TXT
H2D < TESTS\I391.TXT > TESTS\O391.TXT
if errorlevel 1 echo ERROR>>TESTS\S391.TXT
if not errorlevel 1 echo OK>>TESTS\S391.TXT
D2H < TESTS\I392.TXT > TESTS\O392.TXT
if errorlevel 1 echo ERROR>>TESTS\S392.TXT
if not errorlevel 1 echo OK>>TESTS\S392.TXT
H2D < TESTS\I393.TXT > TESTS\O393.TXT
if errorlevel 1 echo ERROR>>TESTS\S393.TXT
if not errorlevel 1 echo OK>>TESTS\S393.TXT
D2H < TESTS\I394.TXT > TESTS\O394.TXT
if errorlevel 1 echo ERROR>>TESTS\S394.TXT
if not errorlevel 1 echo OK>>TESTS\S394.TXT
H2D < TESTS\I395.TXT > TESTS\O395.TXT
if errorlevel 1 echo ERROR>>TESTS\S395.TXT
if not errorlevel 1 echo OK>>TESTS\S395.TXT
D2H < TESTS\I396.TXT > TESTS\O396.TXT
if errorlevel 1 echo ERROR>>TESTS\S396.TXT
if not errorlevel 1 echo OK>>TESTS\S396.TXT
H2D < TESTS\I397.TXT > TESTS\O397.TXT
if errorlevel 1 echo ERROR>>TESTS\S397.TXT
if not errorlevel 1 echo OK>>TESTS\S397.TXT
D2H < TESTS\I398.TXT > TESTS\O398.TXT
if errorlevel 1 echo ERROR>>TESTS\S398.TXT
if not errorlevel 1 echo OK>>TESTS\S398.TXT
H2D < TESTS\I399.TXT > TESTS\O399.TXT
if errorlevel 1 echo ERROR>>TESTS\S399.TXT
if not errorlevel 1 echo OK>>TESTS\S399.TXT
D2H < TESTS\I400.TXT > TESTS\O400.TXT
if errorlevel 1 echo ERROR>>TESTS\S400.TXT
if not errorlevel 1 echo OK>>TESTS\S400.TXT
H2D < TESTS\I401.TXT > TESTS\O401.TXT
if errorlevel 1 echo ERROR>>TESTS\S401.TXT
if not errorlevel 1 echo OK>>TESTS\S401.TXT
D2H < TESTS\I402.TXT > TESTS\O402.TXT
if errorlevel 1 echo ERROR>>TESTS\S402.TXT
if not errorlevel 1 echo OK>>TESTS\S402.TXT
H2D < TESTS\I403.TXT > TESTS\O403.TXT
if errorlevel 1 echo ERROR>>TESTS\S403.TXT
if not errorlevel 1 echo OK>>TESTS\S403.TXT
D2H < TESTS\I404.TXT > TESTS\O404.TXT
if errorlevel 1 echo ERROR>>TESTS\S404.TXT
if not errorlevel 1 echo OK>>TESTS\S404.TXT
H2D < TESTS\I405.TXT > TESTS\O405.TXT
if errorlevel 1 echo ERROR>>TESTS\S405.TXT
if not errorlevel 1 echo OK>>TESTS\S405.TXT
D2H < TESTS\I406.TXT > TESTS\O406.TXT
if errorlevel 1 echo ERROR>>TESTS\S406.TXT
if not errorlevel 1 echo OK>>TESTS\S406.TXT
H2D < TESTS\I407.TXT > TESTS\O407.TXT
if errorlevel 1 echo ERROR>>TESTS\S407.TXT
if not errorlevel 1 echo OK>>TESTS\S407.TXT
D2H < TESTS\I408.TXT > TESTS\O408.TXT
if errorlevel 1 echo ERROR>>TESTS\S408.TXT
if not errorlevel 1 echo OK>>TESTS\S408.TXT
H2D < TESTS\I409.TXT > TESTS\O409.TXT
if errorlevel 1 echo ERROR>>TESTS\S409.TXT
if not errorlevel 1 echo OK>>TESTS\S409.TXT
D2H < TESTS\I410.TXT > TESTS\O410.TXT
if errorlevel 1 echo ERROR>>TESTS\S410.TXT
if not errorlevel 1 echo OK>>TESTS\S410.TXT
H2D < TESTS\I411.TXT > TESTS\O411.TXT
if errorlevel 1 echo ERROR>>TESTS\S411.TXT
if not errorlevel 1 echo OK>>TESTS\S411.TXT
D2H < TESTS\I412.TXT > TESTS\O412.TXT
if errorlevel 1 echo ERROR>>TESTS\S412.TXT
if not errorlevel 1 echo OK>>TESTS\S412.TXT
H2D < TESTS\I413.TXT > TESTS\O413.TXT
if errorlevel 1 echo ERROR>>TESTS\S413.TXT
if not errorlevel 1 echo OK>>TESTS\S413.TXT
D2H < TESTS\I414.TXT > TESTS\O414.TXT
if errorlevel 1 echo ERROR>>TESTS\S414.TXT
if not errorlevel 1 echo OK>>TESTS\S414.TXT
H2D < TESTS\I415.TXT > TESTS\O415.TXT
if errorlevel 1 echo ERROR>>TESTS\S415.TXT
if not errorlevel 1 echo OK>>TESTS\S415.TXT
D2H < TESTS\I416.TXT > TESTS\O416.TXT
if errorlevel 1 echo ERROR>>TESTS\S416.TXT
if not errorlevel 1 echo OK>>TESTS\S416.TXT
H2D < TESTS\I417.TXT > TESTS\O417.TXT
if errorlevel 1 echo ERROR>>TESTS\S417.TXT
if not errorlevel 1 echo OK>>TESTS\S417.TXT
D2H < TESTS\I418.TXT > TESTS\O418.TXT
if errorlevel 1 echo ERROR>>TESTS\S418.TXT
if not errorlevel 1 echo OK>>TESTS\S418.TXT
H2D < TESTS\I419.TXT > TESTS\O419.TXT
if errorlevel 1 echo ERROR>>TESTS\S419.TXT
if not errorlevel 1 echo OK>>TESTS\S419.TXT
D2H < TESTS\I420.TXT > TESTS\O420.TXT
if errorlevel 1 echo ERROR>>TESTS\S420.TXT
if not errorlevel 1 echo OK>>TESTS\S420.TXT
H2D < TESTS\I421.TXT > TESTS\O421.TXT
if errorlevel 1 echo ERROR>>TESTS\S421.TXT
if not errorlevel 1 echo OK>>TESTS\S421.TXT
D2H < TESTS\I422.TXT > TESTS\O422.TXT
if errorlevel 1 echo ERROR>>TESTS\S422.TXT
if not errorlevel 1 echo OK>>TESTS\S422.TXT
H2D < TESTS\I423.TXT > TESTS\O423.TXT
if errorlevel 1 echo ERROR>>TESTS\S423.TXT
if not errorlevel 1 echo OK>>TESTS\S423.TXT
D2H < TESTS\I424.TXT > TESTS\O424.TXT
if errorlevel 1 echo ERROR>>TESTS\S424.TXT
if not errorlevel 1 echo OK>>TESTS\S424.TXT
H2D < TESTS\I425.TXT > TESTS\O425.TXT
if errorlevel 1 echo ERROR>>TESTS\S425.TXT
if not errorlevel 1 echo OK>>TESTS\S425.TXT
D2H < TESTS\I426.TXT > TESTS\O426.TXT
if errorlevel 1 echo ERROR>>TESTS\S426.TXT
if not errorlevel 1 echo OK>>TESTS\S426.TXT
H2D < TESTS\I427.TXT > TESTS\O427.TXT
if errorlevel 1 echo ERROR>>TESTS\S427.TXT
if not errorlevel 1 echo OK>>TESTS\S427.TXT
D2H < TESTS\I428.TXT > TESTS\O428.TXT
if errorlevel 1 echo ERROR>>TESTS\S428.TXT
if not errorlevel 1 echo OK>>TESTS\S428.TXT
H2D < TESTS\I429.TXT > TESTS\O429.TXT
if errorlevel 1 echo ERROR>>TESTS\S429.TXT
if not errorlevel 1 echo OK>>TESTS\S429.TXT
D2H < TESTS\I430.TXT > TESTS\O430.TXT
if errorlevel 1 echo ERROR>>TESTS\S430.TXT
if not errorlevel 1 echo OK>>TESTS\S430.TXT
H2D < TESTS\I431.TXT > TESTS\O431.TXT
if errorlevel 1 echo ERROR>>TESTS\S431.TXT
if not errorlevel 1 echo OK>>TESTS\S431.TXT
D2H < TESTS\I432.TXT > TESTS\O432.TXT
if errorlevel 1 echo ERROR>>TESTS\S432.TXT
if not errorlevel 1 echo OK>>TESTS\S432.TXT
H2D < TESTS\I433.TXT > TESTS\O433.TXT
if errorlevel 1 echo ERROR>>TESTS\S433.TXT
if not errorlevel 1 echo OK>>TESTS\S433.TXT
D2H < TESTS\I434.TXT > TESTS\O434.TXT
if errorlevel 1 echo ERROR>>TESTS\S434.TXT
if not errorlevel 1 echo OK>>TESTS\S434.TXT
H2D < TESTS\I435.TXT > TESTS\O435.TXT
if errorlevel 1 echo ERROR>>TESTS\S435.TXT
if not errorlevel 1 echo OK>>TESTS\S435.TXT
D2H < TESTS\I436.TXT > TESTS\O436.TXT
if errorlevel 1 echo ERROR>>TESTS\S436.TXT
if not errorlevel 1 echo OK>>TESTS\S436.TXT
H2D < TESTS\I437.TXT > TESTS\O437.TXT
if errorlevel 1 echo ERROR>>TESTS\S437.TXT
if not errorlevel 1 echo OK>>TESTS\S437.TXT
D2H < TESTS\I438.TXT > TESTS\O438.TXT
if errorlevel 1 echo ERROR>>TESTS\S438.TXT
if not errorlevel 1 echo OK>>TESTS\S438.TXT
H2D < TESTS\I439.TXT > TESTS\O439.TXT
if errorlevel 1 echo ERROR>>TESTS\S439.TXT
if not errorlevel 1 echo OK>>TESTS\S439.TXT
D2H < TESTS\I440.TXT > TESTS\O440.TXT
if errorlevel 1 echo ERROR>>TESTS\S440.TXT
if not errorlevel 1 echo OK>>TESTS\S440.TXT
H2D < TESTS\I441.TXT > TESTS\O441.TXT
if errorlevel 1 echo ERROR>>TESTS\S441.TXT
if not errorlevel 1 echo OK>>TESTS\S441.TXT
D2H < TESTS\I442.TXT > TESTS\O442.TXT
if errorlevel 1 echo ERROR>>TESTS\S442.TXT
if not errorlevel 1 echo OK>>TESTS\S442.TXT
H2D < TESTS\I443.TXT > TESTS\O443.TXT
if errorlevel 1 echo ERROR>>TESTS\S443.TXT
if not errorlevel 1 echo OK>>TESTS\S443.TXT
D2H < TESTS\I444.TXT > TESTS\O444.TXT
if errorlevel 1 echo ERROR>>TESTS\S444.TXT
if not errorlevel 1 echo OK>>TESTS\S444.TXT
H2D < TESTS\I445.TXT > TESTS\O445.TXT
if errorlevel 1 echo ERROR>>TESTS\S445.TXT
if not errorlevel 1 echo OK>>TESTS\S445.TXT
D2H < TESTS\I446.TXT > TESTS\O446.TXT
if errorlevel 1 echo ERROR>>TESTS\S446.TXT
if not errorlevel 1 echo OK>>TESTS\S446.TXT
H2D < TESTS\I447.TXT > TESTS\O447.TXT
if errorlevel 1 echo ERROR>>TESTS\S447.TXT
if not errorlevel 1 echo OK>>TESTS\S447.TXT
D2H < TESTS\I448.TXT > TESTS\O448.TXT
if errorlevel 1 echo ERROR>>TESTS\S448.TXT
if not errorlevel 1 echo OK>>TESTS\S448.TXT
H2D < TESTS\I449.TXT > TESTS\O449.TXT
if errorlevel 1 echo ERROR>>TESTS\S449.TXT
if not errorlevel 1 echo OK>>TESTS\S449.TXT
D2H < TESTS\I450.TXT > TESTS\O450.TXT
if errorlevel 1 echo ERROR>>TESTS\S450.TXT
if not errorlevel 1 echo OK>>TESTS\S450.TXT
H2D < TESTS\I451.TXT > TESTS\O451.TXT
if errorlevel 1 echo ERROR>>TESTS\S451.TXT
if not errorlevel 1 echo OK>>TESTS\S451.TXT
D2H < TESTS\I452.TXT > TESTS\O452.TXT
if errorlevel 1 echo ERROR>>TESTS\S452.TXT
if not errorlevel 1 echo OK>>TESTS\S452.TXT
H2D < TESTS\I453.TXT > TESTS\O453.TXT
if errorlevel 1 echo ERROR>>TESTS\S453.TXT
if not errorlevel 1 echo OK>>TESTS\S453.TXT
D2H < TESTS\I454.TXT > TESTS\O454.TXT
if errorlevel 1 echo ERROR>>TESTS\S454.TXT
if not errorlevel 1 echo OK>>TESTS\S454.TXT
H2D < TESTS\I455.TXT > TESTS\O455.TXT
if errorlevel 1 echo ERROR>>TESTS\S455.TXT
if not errorlevel 1 echo OK>>TESTS\S455.TXT
D2H < TESTS\I456.TXT > TESTS\O456.TXT
if errorlevel 1 echo ERROR>>TESTS\S456.TXT
if not errorlevel 1 echo OK>>TESTS\S456.TXT
H2D < TESTS\I457.TXT > TESTS\O457.TXT
if errorlevel 1 echo ERROR>>TESTS\S457.TXT
if not errorlevel 1 echo OK>>TESTS\S457.TXT
D2H < TESTS\I458.TXT > TESTS\O458.TXT
if errorlevel 1 echo ERROR>>TESTS\S458.TXT
if not errorlevel 1 echo OK>>TESTS\S458.TXT
H2D < TESTS\I459.TXT > TESTS\O459.TXT
if errorlevel 1 echo ERROR>>TESTS\S459.TXT
if not errorlevel 1 echo OK>>TESTS\S459.TXT
D2H < TESTS\I460.TXT > TESTS\O460.TXT
if errorlevel 1 echo ERROR>>TESTS\S460.TXT
if not errorlevel 1 echo OK>>TESTS\S460.TXT
H2D < TESTS\I461.TXT > TESTS\O461.TXT
if errorlevel 1 echo ERROR>>TESTS\S461.TXT
if not errorlevel 1 echo OK>>TESTS\S461.TXT
D2H < TESTS\I462.TXT > TESTS\O462.TXT
if errorlevel 1 echo ERROR>>TESTS\S462.TXT
if not errorlevel 1 echo OK>>TESTS\S462.TXT
H2D < TESTS\I463.TXT > TESTS\O463.TXT
if errorlevel 1 echo ERROR>>TESTS\S463.TXT
if not errorlevel 1 echo OK>>TESTS\S463.TXT
D2H < TESTS\I464.TXT > TESTS\O464.TXT
if errorlevel 1 echo ERROR>>TESTS\S464.TXT
if not errorlevel 1 echo OK>>TESTS\S464.TXT
H2D < TESTS\I465.TXT > TESTS\O465.TXT
if errorlevel 1 echo ERROR>>TESTS\S465.TXT
if not errorlevel 1 echo OK>>TESTS\S465.TXT
D2H < TESTS\I466.TXT > TESTS\O466.TXT
if errorlevel 1 echo ERROR>>TESTS\S466.TXT
if not errorlevel 1 echo OK>>TESTS\S466.TXT
H2D < TESTS\I467.TXT > TESTS\O467.TXT
if errorlevel 1 echo ERROR>>TESTS\S467.TXT
if not errorlevel 1 echo OK>>TESTS\S467.TXT
D2H < TESTS\I468.TXT > TESTS\O468.TXT
if errorlevel 1 echo ERROR>>TESTS\S468.TXT
if not errorlevel 1 echo OK>>TESTS\S468.TXT
H2D < TESTS\I469.TXT > TESTS\O469.TXT
if errorlevel 1 echo ERROR>>TESTS\S469.TXT
if not errorlevel 1 echo OK>>TESTS\S469.TXT
D2H < TESTS\I470.TXT > TESTS\O470.TXT
if errorlevel 1 echo ERROR>>TESTS\S470.TXT
if not errorlevel 1 echo OK>>TESTS\S470.TXT
H2D < TESTS\I471.TXT > TESTS\O471.TXT
if errorlevel 1 echo ERROR>>TESTS\S471.TXT
if not errorlevel 1 echo OK>>TESTS\S471.TXT
D2H < TESTS\I472.TXT > TESTS\O472.TXT
if errorlevel 1 echo ERROR>>TESTS\S472.TXT
if not errorlevel 1 echo OK>>TESTS\S472.TXT
H2D < TESTS\I473.TXT > TESTS\O473.TXT
if errorlevel 1 echo ERROR>>TESTS\S473.TXT
if not errorlevel 1 echo OK>>TESTS\S473.TXT
D2H < TESTS\I474.TXT > TESTS\O474.TXT
if errorlevel 1 echo ERROR>>TESTS\S474.TXT
if not errorlevel 1 echo OK>>TESTS\S474.TXT
H2D < TESTS\I475.TXT > TESTS\O475.TXT
if errorlevel 1 echo ERROR>>TESTS\S475.TXT
if not errorlevel 1 echo OK>>TESTS\S475.TXT
D2H < TESTS\I476.TXT > TESTS\O476.TXT
if errorlevel 1 echo ERROR>>TESTS\S476.TXT
if not errorlevel 1 echo OK>>TESTS\S476.TXT
H2D < TESTS\I477.TXT > TESTS\O477.TXT
if errorlevel 1 echo ERROR>>TESTS\S477.TXT
if not errorlevel 1 echo OK>>TESTS\S477.TXT
D2H < TESTS\I478.TXT > TESTS\O478.TXT
if errorlevel 1 echo ERROR>>TESTS\S478.TXT
if not errorlevel 1 echo OK>>TESTS\S478.TXT
H2D < TESTS\I479.TXT > TESTS\O479.TXT
if errorlevel 1 echo ERROR>>TESTS\S479.TXT
if not errorlevel 1 echo OK>>TESTS\S479.TXT
D2H < TESTS\I480.TXT > TESTS\O480.TXT
if errorlevel 1 echo ERROR>>TESTS\S480.TXT
if not errorlevel 1 echo OK>>TESTS\S480.TXT
H2D < TESTS\I481.TXT > TESTS\O481.TXT
if errorlevel 1 echo ERROR>>TESTS\S481.TXT
if not errorlevel 1 echo OK>>TESTS\S481.TXT
D2H < TESTS\I482.TXT > TESTS\O482.TXT
if errorlevel 1 echo ERROR>>TESTS\S482.TXT
if not errorlevel 1 echo OK>>TESTS\S482.TXT
H2D < TESTS\I483.TXT > TESTS\O483.TXT
if errorlevel 1 echo ERROR>>TESTS\S483.TXT
if not errorlevel 1 echo OK>>TESTS\S483.TXT
D2H < TESTS\I484.TXT > TESTS\O484.TXT
if errorlevel 1 echo ERROR>>TESTS\S484.TXT
if not errorlevel 1 echo OK>>TESTS\S484.TXT
H2D < TESTS\I485.TXT > TESTS\O485.TXT
if errorlevel 1 echo ERROR>>TESTS\S485.TXT
if not errorlevel 1 echo OK>>TESTS\S485.TXT
D2H < TESTS\I486.TXT > TESTS\O486.TXT
if errorlevel 1 echo ERROR>>TESTS\S486.TXT
if not errorlevel 1 echo OK>>TESTS\S486.TXT
H2D < TESTS\I487.TXT > TESTS\O487.TXT
if errorlevel 1 echo ERROR>>TESTS\S487.TXT
if not errorlevel 1 echo OK>>TESTS\S487.TXT
D2H < TESTS\I488.TXT > TESTS\O488.TXT
if errorlevel 1 echo ERROR>>TESTS\S488.TXT
if not errorlevel 1 echo OK>>TESTS\S488.TXT
H2D < TESTS\I489.TXT > TESTS\O489.TXT
if errorlevel 1 echo ERROR>>TESTS\S489.TXT
if not errorlevel 1 echo OK>>TESTS\S489.TXT
D2H < TESTS\I490.TXT > TESTS\O490.TXT
if errorlevel 1 echo ERROR>>TESTS\S490.TXT
if not errorlevel 1 echo OK>>TESTS\S490.TXT
H2D < TESTS\I491.TXT > TESTS\O491.TXT
if errorlevel 1 echo ERROR>>TESTS\S491.TXT
if not errorlevel 1 echo OK>>TESTS\S491.TXT
D2H < TESTS\I492.TXT > TESTS\O492.TXT
if errorlevel 1 echo ERROR>>TESTS\S492.TXT
if not errorlevel 1 echo OK>>TESTS\S492.TXT
H2D < TESTS\I493.TXT > TESTS\O493.TXT
if errorlevel 1 echo ERROR>>TESTS\S493.TXT
if not errorlevel 1 echo OK>>TESTS\S493.TXT
D2H < TESTS\I494.TXT > TESTS\O494.TXT
if errorlevel 1 echo ERROR>>TESTS\S494.TXT
if not errorlevel 1 echo OK>>TESTS\S494.TXT
H2D < TESTS\I495.TXT > TESTS\O495.TXT
if errorlevel 1 echo ERROR>>TESTS\S495.TXT
if not errorlevel 1 echo OK>>TESTS\S495.TXT
D2H < TESTS\I496.TXT > TESTS\O496.TXT
if errorlevel 1 echo ERROR>>TESTS\S496.TXT
if not errorlevel 1 echo OK>>TESTS\S496.TXT
H2D < TESTS\I497.TXT > TESTS\O497.TXT
if errorlevel 1 echo ERROR>>TESTS\S497.TXT
if not errorlevel 1 echo OK>>TESTS\S497.TXT
D2H < TESTS\I498.TXT > TESTS\O498.TXT
if errorlevel 1 echo ERROR>>TESTS\S498.TXT
if not errorlevel 1 echo OK>>TESTS\S498.TXT
H2D < TESTS\I499.TXT > TESTS\O499.TXT
if errorlevel 1 echo ERROR>>TESTS\S499.TXT
if not errorlevel 1 echo OK>>TESTS\S499.TXT
D2H < TESTS\I500.TXT > TESTS\O500.TXT
if errorlevel 1 echo ERROR>>TESTS\S500.TXT
if not errorlevel 1 echo OK>>TESTS\S500.TXT
H2D < TESTS\I501.TXT > TESTS\O501.TXT
if errorlevel 1 echo ERROR>>TESTS\S501.TXT
if not errorlevel 1 echo OK>>TESTS\S501.TXT
D2H < TESTS\I502.TXT > TESTS\O502.TXT
if errorlevel 1 echo ERROR>>TESTS\S502.TXT
if not errorlevel 1 echo OK>>TESTS\S502.TXT
H2D < TESTS\I503.TXT > TESTS\O503.TXT
if errorlevel 1 echo ERROR>>TESTS\S503.TXT
if not errorlevel 1 echo OK>>TESTS\S503.TXT
D2H < TESTS\I504.TXT > TESTS\O504.TXT
if errorlevel 1 echo ERROR>>TESTS\S504.TXT
if not errorlevel 1 echo OK>>TESTS\S504.TXT
H2D < TESTS\I505.TXT > TESTS\O505.TXT
if errorlevel 1 echo ERROR>>TESTS\S505.TXT
if not errorlevel 1 echo OK>>TESTS\S505.TXT
D2H < TESTS\I506.TXT > TESTS\O506.TXT
if errorlevel 1 echo ERROR>>TESTS\S506.TXT
if not errorlevel 1 echo OK>>TESTS\S506.TXT
H2D < TESTS\I507.TXT > TESTS\O507.TXT
if errorlevel 1 echo ERROR>>TESTS\S507.TXT
if not errorlevel 1 echo OK>>TESTS\S507.TXT
D2H < TESTS\I508.TXT > TESTS\O508.TXT
if errorlevel 1 echo ERROR>>TESTS\S508.TXT
if not errorlevel 1 echo OK>>TESTS\S508.TXT
H2D < TESTS\I509.TXT > TESTS\O509.TXT
if errorlevel 1 echo ERROR>>TESTS\S509.TXT
if not errorlevel 1 echo OK>>TESTS\S509.TXT
D2H < TESTS\I510.TXT > TESTS\O510.TXT
if errorlevel 1 echo ERROR>>TESTS\S510.TXT
if not errorlevel 1 echo OK>>TESTS\S510.TXT
H2D < TESTS\I511.TXT > TESTS\O511.TXT
if errorlevel 1 echo ERROR>>TESTS\S511.TXT
if not errorlevel 1 echo OK>>TESTS\S511.TXT
D2H < TESTS\I512.TXT > TESTS\O512.TXT
if errorlevel 1 echo ERROR>>TESTS\S512.TXT
if not errorlevel 1 echo OK>>TESTS\S512.TXT
H2D < TESTS\I513.TXT > TESTS\O513.TXT
if errorlevel 1 echo ERROR>>TESTS\S513.TXT
if not errorlevel 1 echo OK>>TESTS\S513.TXT
D2H < TESTS\I514.TXT > TESTS\O514.TXT
if errorlevel 1 echo ERROR>>TESTS\S514.TXT
if not errorlevel 1 echo OK>>TESTS\S514.TXT
SUMIN < TESTS\I515.TXT > TESTS\O515.TXT
if errorlevel 1 echo ERROR>>TESTS\S515.TXT
if not errorlevel 1 echo OK>>TESTS\S515.TXT
SUMIN < TESTS\I516.TXT > TESTS\O516.TXT
if errorlevel 1 echo ERROR>>TESTS\S516.TXT
if not errorlevel 1 echo OK>>TESTS\S516.TXT
SUMIN < TESTS\I517.TXT > TESTS\O517.TXT
if errorlevel 1 echo ERROR>>TESTS\S517.TXT
if not errorlevel 1 echo OK>>TESTS\S517.TXT
SUMIN < TESTS\I518.TXT > TESTS\O518.TXT
if errorlevel 1 echo ERROR>>TESTS\S518.TXT
if not errorlevel 1 echo OK>>TESTS\S518.TXT
SUMIN < TESTS\I519.TXT > TESTS\O519.TXT
if errorlevel 1 echo ERROR>>TESTS\S519.TXT
if not errorlevel 1 echo OK>>TESTS\S519.TXT
SUMIN < TESTS\I520.TXT > TESTS\O520.TXT
if errorlevel 1 echo ERROR>>TESTS\S520.TXT
if not errorlevel 1 echo OK>>TESTS\S520.TXT
SUMIN < TESTS\I521.TXT > TESTS\O521.TXT
if errorlevel 1 echo ERROR>>TESTS\S521.TXT
if not errorlevel 1 echo OK>>TESTS\S521.TXT
SUMIN < TESTS\I522.TXT > TESTS\O522.TXT
if errorlevel 1 echo ERROR>>TESTS\S522.TXT
if not errorlevel 1 echo OK>>TESTS\S522.TXT
SUMIN < TESTS\I523.TXT > TESTS\O523.TXT
if errorlevel 1 echo ERROR>>TESTS\S523.TXT
if not errorlevel 1 echo OK>>TESTS\S523.TXT
SUMIN < TESTS\I524.TXT > TESTS\O524.TXT
if errorlevel 1 echo ERROR>>TESTS\S524.TXT
if not errorlevel 1 echo OK>>TESTS\S524.TXT
SUMIN < TESTS\I525.TXT > TESTS\O525.TXT
if errorlevel 1 echo ERROR>>TESTS\S525.TXT
if not errorlevel 1 echo OK>>TESTS\S525.TXT
SUMIN < TESTS\I526.TXT > TESTS\O526.TXT
if errorlevel 1 echo ERROR>>TESTS\S526.TXT
if not errorlevel 1 echo OK>>TESTS\S526.TXT
SUMIN < TESTS\I527.TXT > TESTS\O527.TXT
if errorlevel 1 echo ERROR>>TESTS\S527.TXT
if not errorlevel 1 echo OK>>TESTS\S527.TXT
SUMIN < TESTS\I528.TXT > TESTS\O528.TXT
if errorlevel 1 echo ERROR>>TESTS\S528.TXT
if not errorlevel 1 echo OK>>TESTS\S528.TXT
SUMIN < TESTS\I529.TXT > TESTS\O529.TXT
if errorlevel 1 echo ERROR>>TESTS\S529.TXT
if not errorlevel 1 echo OK>>TESTS\S529.TXT
SUMIN < TESTS\I530.TXT > TESTS\O530.TXT
if errorlevel 1 echo ERROR>>TESTS\S530.TXT
if not errorlevel 1 echo OK>>TESTS\S530.TXT
SUMIN < TESTS\I531.TXT > TESTS\O531.TXT
if errorlevel 1 echo ERROR>>TESTS\S531.TXT
if not errorlevel 1 echo OK>>TESTS\S531.TXT
SUMIN < TESTS\I532.TXT > TESTS\O532.TXT
if errorlevel 1 echo ERROR>>TESTS\S532.TXT
if not errorlevel 1 echo OK>>TESTS\S532.TXT
SUMIN < TESTS\I533.TXT > TESTS\O533.TXT
if errorlevel 1 echo ERROR>>TESTS\S533.TXT
if not errorlevel 1 echo OK>>TESTS\S533.TXT
SUMIN < TESTS\I534.TXT > TESTS\O534.TXT
if errorlevel 1 echo ERROR>>TESTS\S534.TXT
if not errorlevel 1 echo OK>>TESTS\S534.TXT
SUMIN < TESTS\I535.TXT > TESTS\O535.TXT
if errorlevel 1 echo ERROR>>TESTS\S535.TXT
if not errorlevel 1 echo OK>>TESTS\S535.TXT
SUMIN < TESTS\I536.TXT > TESTS\O536.TXT
if errorlevel 1 echo ERROR>>TESTS\S536.TXT
if not errorlevel 1 echo OK>>TESTS\S536.TXT
SUMIN < TESTS\I537.TXT > TESTS\O537.TXT
if errorlevel 1 echo ERROR>>TESTS\S537.TXT
if not errorlevel 1 echo OK>>TESTS\S537.TXT
SUMIN < TESTS\I538.TXT > TESTS\O538.TXT
if errorlevel 1 echo ERROR>>TESTS\S538.TXT
if not errorlevel 1 echo OK>>TESTS\S538.TXT
SUMIN < TESTS\I539.TXT > TESTS\O539.TXT
if errorlevel 1 echo ERROR>>TESTS\S539.TXT
if not errorlevel 1 echo OK>>TESTS\S539.TXT
SUMIN < TESTS\I540.TXT > TESTS\O540.TXT
if errorlevel 1 echo ERROR>>TESTS\S540.TXT
if not errorlevel 1 echo OK>>TESTS\S540.TXT
SUMIN < TESTS\I541.TXT > TESTS\O541.TXT
if errorlevel 1 echo ERROR>>TESTS\S541.TXT
if not errorlevel 1 echo OK>>TESTS\S541.TXT
SUMIN < TESTS\I542.TXT > TESTS\O542.TXT
if errorlevel 1 echo ERROR>>TESTS\S542.TXT
if not errorlevel 1 echo OK>>TESTS\S542.TXT
SUMIN < TESTS\I543.TXT > TESTS\O543.TXT
if errorlevel 1 echo ERROR>>TESTS\S543.TXT
if not errorlevel 1 echo OK>>TESTS\S543.TXT
SUMIN < TESTS\I544.TXT > TESTS\O544.TXT
if errorlevel 1 echo ERROR>>TESTS\S544.TXT
if not errorlevel 1 echo OK>>TESTS\S544.TXT
SUMIN < TESTS\I545.TXT > TESTS\O545.TXT
if errorlevel 1 echo ERROR>>TESTS\S545.TXT
if not errorlevel 1 echo OK>>TESTS\S545.TXT
SUMIN < TESTS\I546.TXT > TESTS\O546.TXT
if errorlevel 1 echo ERROR>>TESTS\S546.TXT
if not errorlevel 1 echo OK>>TESTS\S546.TXT
SUMIN < TESTS\I547.TXT > TESTS\O547.TXT
if errorlevel 1 echo ERROR>>TESTS\S547.TXT
if not errorlevel 1 echo OK>>TESTS\S547.TXT
SUMIN < TESTS\I548.TXT > TESTS\O548.TXT
if errorlevel 1 echo ERROR>>TESTS\S548.TXT
if not errorlevel 1 echo OK>>TESTS\S548.TXT
SUMIN < TESTS\I549.TXT > TESTS\O549.TXT
if errorlevel 1 echo ERROR>>TESTS\S549.TXT
if not errorlevel 1 echo OK>>TESTS\S549.TXT
SUMIN < TESTS\I550.TXT > TESTS\O550.TXT
if errorlevel 1 echo ERROR>>TESTS\S550.TXT
if not errorlevel 1 echo OK>>TESTS\S550.TXT
SUMIN < TESTS\I551.TXT > TESTS\O551.TXT
if errorlevel 1 echo ERROR>>TESTS\S551.TXT
if not errorlevel 1 echo OK>>TESTS\S551.TXT
SUMIN < TESTS\I552.TXT > TESTS\O552.TXT
if errorlevel 1 echo ERROR>>TESTS\S552.TXT
if not errorlevel 1 echo OK>>TESTS\S552.TXT
SUMIN < TESTS\I553.TXT > TESTS\O553.TXT
if errorlevel 1 echo ERROR>>TESTS\S553.TXT
if not errorlevel 1 echo OK>>TESTS\S553.TXT
SUMIN < TESTS\I554.TXT > TESTS\O554.TXT
if errorlevel 1 echo ERROR>>TESTS\S554.TXT
if not errorlevel 1 echo OK>>TESTS\S554.TXT
SUMIN < TESTS\I555.TXT > TESTS\O555.TXT
if errorlevel 1 echo ERROR>>TESTS\S555.TXT
if not errorlevel 1 echo OK>>TESTS\S555.TXT
SUMIN < TESTS\I556.TXT > TESTS\O556.TXT
if errorlevel 1 echo ERROR>>TESTS\S556.TXT
if not errorlevel 1 echo OK>>TESTS\S556.TXT
SUMIN < TESTS\I557.TXT > TESTS\O557.TXT
if errorlevel 1 echo ERROR>>TESTS\S557.TXT
if not errorlevel 1 echo OK>>TESTS\S557.TXT
SUMIN < TESTS\I558.TXT > TESTS\O558.TXT
if errorlevel 1 echo ERROR>>TESTS\S558.TXT
if not errorlevel 1 echo OK>>TESTS\S558.TXT
SUMIN < TESTS\I559.TXT > TESTS\O559.TXT
if errorlevel 1 echo ERROR>>TESTS\S559.TXT
if not errorlevel 1 echo OK>>TESTS\S559.TXT
SUMIN < TESTS\I560.TXT > TESTS\O560.TXT
if errorlevel 1 echo ERROR>>TESTS\S560.TXT
if not errorlevel 1 echo OK>>TESTS\S560.TXT
SUMIN < TESTS\I561.TXT > TESTS\O561.TXT
if errorlevel 1 echo ERROR>>TESTS\S561.TXT
if not errorlevel 1 echo OK>>TESTS\S561.TXT
SUMIN < TESTS\I562.TXT > TESTS\O562.TXT
if errorlevel 1 echo ERROR>>TESTS\S562.TXT
if not errorlevel 1 echo OK>>TESTS\S562.TXT
SUMIN < TESTS\I563.TXT > TESTS\O563.TXT
if errorlevel 1 echo ERROR>>TESTS\S563.TXT
if not errorlevel 1 echo OK>>TESTS\S563.TXT
SUMIN < TESTS\I564.TXT > TESTS\O564.TXT
if errorlevel 1 echo ERROR>>TESTS\S564.TXT
if not errorlevel 1 echo OK>>TESTS\S564.TXT
SUMIN < TESTS\I565.TXT > TESTS\O565.TXT
if errorlevel 1 echo ERROR>>TESTS\S565.TXT
if not errorlevel 1 echo OK>>TESTS\S565.TXT
SUMIN < TESTS\I566.TXT > TESTS\O566.TXT
if errorlevel 1 echo ERROR>>TESTS\S566.TXT
if not errorlevel 1 echo OK>>TESTS\S566.TXT
SUMIN < TESTS\I567.TXT > TESTS\O567.TXT
if errorlevel 1 echo ERROR>>TESTS\S567.TXT
if not errorlevel 1 echo OK>>TESTS\S567.TXT
SUMIN < TESTS\I568.TXT > TESTS\O568.TXT
if errorlevel 1 echo ERROR>>TESTS\S568.TXT
if not errorlevel 1 echo OK>>TESTS\S568.TXT
SUMIN < TESTS\I569.TXT > TESTS\O569.TXT
if errorlevel 1 echo ERROR>>TESTS\S569.TXT
if not errorlevel 1 echo OK>>TESTS\S569.TXT
SUMIN < TESTS\I570.TXT > TESTS\O570.TXT
if errorlevel 1 echo ERROR>>TESTS\S570.TXT
if not errorlevel 1 echo OK>>TESTS\S570.TXT
SUMIN < TESTS\I571.TXT > TESTS\O571.TXT
if errorlevel 1 echo ERROR>>TESTS\S571.TXT
if not errorlevel 1 echo OK>>TESTS\S571.TXT
SUMIN < TESTS\I572.TXT > TESTS\O572.TXT
if errorlevel 1 echo ERROR>>TESTS\S572.TXT
if not errorlevel 1 echo OK>>TESTS\S572.TXT
SUMIN < TESTS\I573.TXT > TESTS\O573.TXT
if errorlevel 1 echo ERROR>>TESTS\S573.TXT
if not errorlevel 1 echo OK>>TESTS\S573.TXT
SUMIN < TESTS\I574.TXT > TESTS\O574.TXT
if errorlevel 1 echo ERROR>>TESTS\S574.TXT
if not errorlevel 1 echo OK>>TESTS\S574.TXT
SUMIN < TESTS\I575.TXT > TESTS\O575.TXT
if errorlevel 1 echo ERROR>>TESTS\S575.TXT
if not errorlevel 1 echo OK>>TESTS\S575.TXT
SUMIN < TESTS\I576.TXT > TESTS\O576.TXT
if errorlevel 1 echo ERROR>>TESTS\S576.TXT
if not errorlevel 1 echo OK>>TESTS\S576.TXT
SUMIN < TESTS\I577.TXT > TESTS\O577.TXT
if errorlevel 1 echo ERROR>>TESTS\S577.TXT
if not errorlevel 1 echo OK>>TESTS\S577.TXT
SUMIN < TESTS\I578.TXT > TESTS\O578.TXT
if errorlevel 1 echo ERROR>>TESTS\S578.TXT
if not errorlevel 1 echo OK>>TESTS\S578.TXT
SUMIN < TESTS\I579.TXT > TESTS\O579.TXT
if errorlevel 1 echo ERROR>>TESTS\S579.TXT
if not errorlevel 1 echo OK>>TESTS\S579.TXT
SUMIN < TESTS\I580.TXT > TESTS\O580.TXT
if errorlevel 1 echo ERROR>>TESTS\S580.TXT
if not errorlevel 1 echo OK>>TESTS\S580.TXT
SUMIN < TESTS\I581.TXT > TESTS\O581.TXT
if errorlevel 1 echo ERROR>>TESTS\S581.TXT
if not errorlevel 1 echo OK>>TESTS\S581.TXT
SUMIN < TESTS\I582.TXT > TESTS\O582.TXT
if errorlevel 1 echo ERROR>>TESTS\S582.TXT
if not errorlevel 1 echo OK>>TESTS\S582.TXT
SUMIN < TESTS\I583.TXT > TESTS\O583.TXT
if errorlevel 1 echo ERROR>>TESTS\S583.TXT
if not errorlevel 1 echo OK>>TESTS\S583.TXT
SUMIN < TESTS\I584.TXT > TESTS\O584.TXT
if errorlevel 1 echo ERROR>>TESTS\S584.TXT
if not errorlevel 1 echo OK>>TESTS\S584.TXT
SUMIN < TESTS\I585.TXT > TESTS\O585.TXT
if errorlevel 1 echo ERROR>>TESTS\S585.TXT
if not errorlevel 1 echo OK>>TESTS\S585.TXT
SUMIN < TESTS\I586.TXT > TESTS\O586.TXT
if errorlevel 1 echo ERROR>>TESTS\S586.TXT
if not errorlevel 1 echo OK>>TESTS\S586.TXT
SUMIN < TESTS\I587.TXT > TESTS\O587.TXT
if errorlevel 1 echo ERROR>>TESTS\S587.TXT
if not errorlevel 1 echo OK>>TESTS\S587.TXT
SUMIN < TESTS\I588.TXT > TESTS\O588.TXT
if errorlevel 1 echo ERROR>>TESTS\S588.TXT
if not errorlevel 1 echo OK>>TESTS\S588.TXT
SUMIN < TESTS\I589.TXT > TESTS\O589.TXT
if errorlevel 1 echo ERROR>>TESTS\S589.TXT
if not errorlevel 1 echo OK>>TESTS\S589.TXT
SUMIN < TESTS\I590.TXT > TESTS\O590.TXT
if errorlevel 1 echo ERROR>>TESTS\S590.TXT
if not errorlevel 1 echo OK>>TESTS\S590.TXT
SUMIN < TESTS\I591.TXT > TESTS\O591.TXT
if errorlevel 1 echo ERROR>>TESTS\S591.TXT
if not errorlevel 1 echo OK>>TESTS\S591.TXT
SUMIN < TESTS\I592.TXT > TESTS\O592.TXT
if errorlevel 1 echo ERROR>>TESTS\S592.TXT
if not errorlevel 1 echo OK>>TESTS\S592.TXT
SUMIN < TESTS\I593.TXT > TESTS\O593.TXT
if errorlevel 1 echo ERROR>>TESTS\S593.TXT
if not errorlevel 1 echo OK>>TESTS\S593.TXT
SUMIN < TESTS\I594.TXT > TESTS\O594.TXT
if errorlevel 1 echo ERROR>>TESTS\S594.TXT
if not errorlevel 1 echo OK>>TESTS\S594.TXT
SUMIN < TESTS\I595.TXT > TESTS\O595.TXT
if errorlevel 1 echo ERROR>>TESTS\S595.TXT
if not errorlevel 1 echo OK>>TESTS\S595.TXT
SUMIN < TESTS\I596.TXT > TESTS\O596.TXT
if errorlevel 1 echo ERROR>>TESTS\S596.TXT
if not errorlevel 1 echo OK>>TESTS\S596.TXT
SUMIN < TESTS\I597.TXT > TESTS\O597.TXT
if errorlevel 1 echo ERROR>>TESTS\S597.TXT
if not errorlevel 1 echo OK>>TESTS\S597.TXT
SUMIN < TESTS\I598.TXT > TESTS\O598.TXT
if errorlevel 1 echo ERROR>>TESTS\S598.TXT
if not errorlevel 1 echo OK>>TESTS\S598.TXT
SUMIN < TESTS\I599.TXT > TESTS\O599.TXT
if errorlevel 1 echo ERROR>>TESTS\S599.TXT
if not errorlevel 1 echo OK>>TESTS\S599.TXT
SUMIN < TESTS\I600.TXT > TESTS\O600.TXT
if errorlevel 1 echo ERROR>>TESTS\S600.TXT
if not errorlevel 1 echo OK>>TESTS\S600.TXT
SUMIN < TESTS\I601.TXT > TESTS\O601.TXT
if errorlevel 1 echo ERROR>>TESTS\S601.TXT
if not errorlevel 1 echo OK>>TESTS\S601.TXT
SUMIN < TESTS\I602.TXT > TESTS\O602.TXT
if errorlevel 1 echo ERROR>>TESTS\S602.TXT
if not errorlevel 1 echo OK>>TESTS\S602.TXT
SUMIN < TESTS\I603.TXT > TESTS\O603.TXT
if errorlevel 1 echo ERROR>>TESTS\S603.TXT
if not errorlevel 1 echo OK>>TESTS\S603.TXT
SUMIN < TESTS\I604.TXT > TESTS\O604.TXT
if errorlevel 1 echo ERROR>>TESTS\S604.TXT
if not errorlevel 1 echo OK>>TESTS\S604.TXT
SUMIN < TESTS\I605.TXT > TESTS\O605.TXT
if errorlevel 1 echo ERROR>>TESTS\S605.TXT
if not errorlevel 1 echo OK>>TESTS\S605.TXT
SUMIN < TESTS\I606.TXT > TESTS\O606.TXT
if errorlevel 1 echo ERROR>>TESTS\S606.TXT
if not errorlevel 1 echo OK>>TESTS\S606.TXT
SUMIN < TESTS\I607.TXT > TESTS\O607.TXT
if errorlevel 1 echo ERROR>>TESTS\S607.TXT
if not errorlevel 1 echo OK>>TESTS\S607.TXT
SUMIN < TESTS\I608.TXT > TESTS\O608.TXT
if errorlevel 1 echo ERROR>>TESTS\S608.TXT
if not errorlevel 1 echo OK>>TESTS\S608.TXT
SUMIN < TESTS\I609.TXT > TESTS\O609.TXT
if errorlevel 1 echo ERROR>>TESTS\S609.TXT
if not errorlevel 1 echo OK>>TESTS\S609.TXT
SUMIN < TESTS\I610.TXT > TESTS\O610.TXT
if errorlevel 1 echo ERROR>>TESTS\S610.TXT
if not errorlevel 1 echo OK>>TESTS\S610.TXT
SUMIN < TESTS\I611.TXT > TESTS\O611.TXT
if errorlevel 1 echo ERROR>>TESTS\S611.TXT
if not errorlevel 1 echo OK>>TESTS\S611.TXT
SUMIN < TESTS\I612.TXT > TESTS\O612.TXT
if errorlevel 1 echo ERROR>>TESTS\S612.TXT
if not errorlevel 1 echo OK>>TESTS\S612.TXT
SUMIN < TESTS\I613.TXT > TESTS\O613.TXT
if errorlevel 1 echo ERROR>>TESTS\S613.TXT
if not errorlevel 1 echo OK>>TESTS\S613.TXT
SUMIN < TESTS\I614.TXT > TESTS\O614.TXT
if errorlevel 1 echo ERROR>>TESTS\S614.TXT
if not errorlevel 1 echo OK>>TESTS\S614.TXT
H2D < TESTS\I615.TXT > TESTS\O615.TXT
if errorlevel 1 echo ERROR>>TESTS\S615.TXT
if not errorlevel 1 echo OK>>TESTS\S615.TXT
H2D < TESTS\I616.TXT > TESTS\O616.TXT
if errorlevel 1 echo ERROR>>TESTS\S616.TXT
if not errorlevel 1 echo OK>>TESTS\S616.TXT
H2D < TESTS\I617.TXT > TESTS\O617.TXT
if errorlevel 1 echo ERROR>>TESTS\S617.TXT
if not errorlevel 1 echo OK>>TESTS\S617.TXT
H2D < TESTS\I618.TXT > TESTS\O618.TXT
if errorlevel 1 echo ERROR>>TESTS\S618.TXT
if not errorlevel 1 echo OK>>TESTS\S618.TXT
H2D < TESTS\I619.TXT > TESTS\O619.TXT
if errorlevel 1 echo ERROR>>TESTS\S619.TXT
if not errorlevel 1 echo OK>>TESTS\S619.TXT
H2D < TESTS\I620.TXT > TESTS\O620.TXT
if errorlevel 1 echo ERROR>>TESTS\S620.TXT
if not errorlevel 1 echo OK>>TESTS\S620.TXT
H2D < TESTS\I621.TXT > TESTS\O621.TXT
if errorlevel 1 echo ERROR>>TESTS\S621.TXT
if not errorlevel 1 echo OK>>TESTS\S621.TXT
H2D < TESTS\I622.TXT > TESTS\O622.TXT
if errorlevel 1 echo ERROR>>TESTS\S622.TXT
if not errorlevel 1 echo OK>>TESTS\S622.TXT
H2D < TESTS\I623.TXT > TESTS\O623.TXT
if errorlevel 1 echo ERROR>>TESTS\S623.TXT
if not errorlevel 1 echo OK>>TESTS\S623.TXT
H2D < TESTS\I624.TXT > TESTS\O624.TXT
if errorlevel 1 echo ERROR>>TESTS\S624.TXT
if not errorlevel 1 echo OK>>TESTS\S624.TXT
H2D < TESTS\I625.TXT > TESTS\O625.TXT
if errorlevel 1 echo ERROR>>TESTS\S625.TXT
if not errorlevel 1 echo OK>>TESTS\S625.TXT
H2D < TESTS\I626.TXT > TESTS\O626.TXT
if errorlevel 1 echo ERROR>>TESTS\S626.TXT
if not errorlevel 1 echo OK>>TESTS\S626.TXT
D2H < TESTS\I627.TXT > TESTS\O627.TXT
if errorlevel 1 echo ERROR>>TESTS\S627.TXT
if not errorlevel 1 echo OK>>TESTS\S627.TXT
D2H < TESTS\I628.TXT > TESTS\O628.TXT
if errorlevel 1 echo ERROR>>TESTS\S628.TXT
if not errorlevel 1 echo OK>>TESTS\S628.TXT
D2H < TESTS\I629.TXT > TESTS\O629.TXT
if errorlevel 1 echo ERROR>>TESTS\S629.TXT
if not errorlevel 1 echo OK>>TESTS\S629.TXT
D2H < TESTS\I630.TXT > TESTS\O630.TXT
if errorlevel 1 echo ERROR>>TESTS\S630.TXT
if not errorlevel 1 echo OK>>TESTS\S630.TXT
D2H < TESTS\I631.TXT > TESTS\O631.TXT
if errorlevel 1 echo ERROR>>TESTS\S631.TXT
if not errorlevel 1 echo OK>>TESTS\S631.TXT
D2H < TESTS\I632.TXT > TESTS\O632.TXT
if errorlevel 1 echo ERROR>>TESTS\S632.TXT
if not errorlevel 1 echo OK>>TESTS\S632.TXT
D2H < TESTS\I633.TXT > TESTS\O633.TXT
if errorlevel 1 echo ERROR>>TESTS\S633.TXT
if not errorlevel 1 echo OK>>TESTS\S633.TXT
SUMIN < TESTS\I634.TXT > TESTS\O634.TXT
if errorlevel 1 echo ERROR>>TESTS\S634.TXT
if not errorlevel 1 echo OK>>TESTS\S634.TXT
SUMIN < TESTS\I635.TXT > TESTS\O635.TXT
if errorlevel 1 echo ERROR>>TESTS\S635.TXT
if not errorlevel 1 echo OK>>TESTS\S635.TXT
SUMIN < TESTS\I636.TXT > TESTS\O636.TXT
if errorlevel 1 echo ERROR>>TESTS\S636.TXT
if not errorlevel 1 echo OK>>TESTS\S636.TXT
SUMIN < TESTS\I637.TXT > TESTS\O637.TXT
if errorlevel 1 echo ERROR>>TESTS\S637.TXT
if not errorlevel 1 echo OK>>TESTS\S637.TXT
SUMIN < TESTS\I638.TXT > TESTS\O638.TXT
if errorlevel 1 echo ERROR>>TESTS\S638.TXT
if not errorlevel 1 echo OK>>TESTS\S638.TXT
SUMIN < TESTS\I639.TXT > TESTS\O639.TXT
if errorlevel 1 echo ERROR>>TESTS\S639.TXT
if not errorlevel 1 echo OK>>TESTS\S639.TXT
SUMIN < TESTS\I640.TXT > TESTS\O640.TXT
if errorlevel 1 echo ERROR>>TESTS\S640.TXT
if not errorlevel 1 echo OK>>TESTS\S640.TXT
echo DONE>VERIFY.OK
exit
