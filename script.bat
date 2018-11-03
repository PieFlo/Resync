@echo off
::src
::[Erai-raws]_JoJo_no_Kimyou_na_Bouken_(TV)_-_01_[720p][Multiple_Subtitle].m4a
set "VAR_before_src=[Erai-raws]_JoJo_no_Kimyou_na_Bouken_(TV)_-_"
set "VAR_after_src=_[720p][Multiple_Subtitle].m4a"
::dst
::Jojo's_Bizarre_Adventure_S01E01_VOSTFR_(1920x1080_Blu-Ray_FLAC)_track2_und.flac
set "VAR_before_dst=Jojo's_Bizarre_Adventure_S01E"
set "VAR_after_dst=_VOSTFR_(1920x1080_Blu-Ray_FLAC)_track2_und.flac"
::sub
::Erai-raws]_JoJo_no_Kimyou_na_Bouken_(TV)_-_01_[fre].ass
set "VAR_before_sub=[Erai-raws]_JoJo_no_Kimyou_na_Bouken_(TV)_-_"
set "VAR_after_sub=_[fre].ass"

set /a "VAR_nb_file=26"
echo.
echo audio source :      %VAR_before_src%XX%VAR_after_src%
echo audio destination : %VAR_before_dst%XX%VAR_after_dst%
echo sous-titre source : %VAR_before_sub%XX%VAR_after_sub%
echo nombre d'episode :  %VAR_nb_file%
echo.
pause
::sushi --src src/%VAR_before_src%01%VAR_after_src% --dst dst/%VAR_before_dst%01%VAR_after_dst% --script sub/%VAR_before_sub%01%VAR_after_sub% -o output/1.ass
::pause
if %VAR_nb_file% LEQ 9 for /l %%A in (1,1,%VAR_nb_file%) do sushi --src src/%VAR_before_src%0%%A%VAR_after_src% --dst dst/%VAR_before_dst%0%%A%VAR_after_dst% --script sub/%VAR_before_sub%0%%A%VAR_after_sub% -o output/%%A.ass
if %VAR_nb_file% GTR 9 for /l %%A in (1,1,9) do sushi --src src/%VAR_before_src%0%%A%VAR_after_src% --dst dst/%VAR_before_dst%0%%A%VAR_after_dst% --script sub/%VAR_before_sub%0%%A%VAR_after_sub% -o output/%%A.ass
if %VAR_nb_file% GEQ 10 for /l %%A in (10,1,%VAR_nb_file%) do sushi --src src/%VAR_before_src%%%A%VAR_after_src% --dst dst/%VAR_before_dst%%%A%VAR_after_dst% --script sub/%VAR_before_sub%%%A%VAR_after_sub% -o output/%%A.ass
echo.
echo ============================
echo fini ! %VAR_nb_file% episodes traites
pause>nul
exit