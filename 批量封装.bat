@echo off
::输出路径（例：D:\Output）
set path_to=D:\新建文件夹

::视频路径、名称、后缀
set path_video=D:\Anime\零之使魔\2.第二季
set name_video=零之使魔 双月骑士
set ext_video=mkv

::音频路径、名称、后缀
set path_audio=
set name_audio=
set ext_audio=

::简体字幕路径、名称、后缀
set path_sub_sc=
set name_sub_sc=
set ext_sub_sc=ass

::繁体字幕路径、名称、后缀
set path_sub_tc=
set name_sub_tc=
set ext_sub_tc=ass

::章节路径、名称、后缀
set path_chapter=D:\Downloads\[Snow-Raws] ゼロの使い魔\第2季：ゼロの使い魔 ~双月の騎士~
set name_chapter=零之使魔
set ext_chapter=xml


set nums=12

set num=1


:loop
if %num% lss 10 (
	set file_video=%name_video% 0%num%.%ext_video%
	set file_audio=%name_audio% 0%num%.%ext_audio%
	set file_sub_sc=%name_sub_sc% 0%num%.%ext_sub_sc%
	set file_sub_tc=%name_sub_tc% 0%num%.%ext_sub_tc%
	set file_chapter=%name_chapter% 0%num%.%ext_chapter%
) else (
	set file_video=%name_video% %num%.%ext_video%
	set file_audio=%name_audio% %num%.%ext_audio%
	set file_sub_sc=%name_sub_sc% %num%.%ext_sub_sc%
	set file_sub_tc=%name_sub_tc% %num%.%ext_sub_tc%
	set file_chapter=%name_chapter% %num%.%ext_chapter%
)

:: %path_to%\%file_video%

:: %path_video%\%file_video%

:: %path_audio%\%file_audio%

:: %path_sub_sc%\%file_sub_sc%

:: %path_sub_tc%\%file_sub_tc%

:: %path_chapter%\%file_chapter%


::MKVmerge命令行

D:/Tools/MKVToolNix\mkvmerge.exe --ui-language zh_CN --output ^"%path_to%\%file_video%^" --language 0:und --default-track 0:yes --language 1:und --default-track 1:yes --sub-charset 2:UTF-8 --language 2:und --track-name ^"2:简体字幕^" --default-track 2:yes --sub-charset 3:UTF-8 --language 3:und --track-name ^"3:繁体字幕^" --sub-charset 4:UTF-8 --language 4:und --track-name ^"4:弹幕^" ^"^(^" ^"%path_video%\%file_video%^" ^"^)^" --chapter-language und --chapters ^"%path_chapter%\%file_chapter%^" --track-order 0:0,0:1,0:2,0:3,0:4

::


set /a num+=1

if %num% gtr %nums% goto end

goto loop

:end
pause