> # MKVmerge-BatchProcess-Tool

## 利用MKVmerge进行批量mkv封装的工具

---

### 适用情况

- 各类文件（例如：视频、字幕等等）命名规范，为文件名 + 序号（例：test 01.mkv）
- 不同类文件序号对应（例：视频 test 01.mkv  字幕 sub 01.ass）
- 源视频内部封装情况相同,后缀名相同，以便于MKVmerge命令行的适用
- 需封装数量大，无法手动一一封装

---

### <u>参数</u>

- path_to : 输出路径（例：D:\Output）
- path_XX : XX路径（例：D:\Videos）
- name_XX : XX命名（例：test 01.mkv中的 test ）
- ext_XX : XX后缀名（例：mkv）
- num : 序号起始数
- nums : 序号终止数
- 命令行参数 : 

假如封装一个视频的命令行如下：

> D:/Tools/MKVToolNix\mkvmerge.exe --ui-language zh_CN --output ^"**D:\Anime\JOJO的奇妙冒险\1.JOJO的奇妙冒险\JOJO的奇妙冒险 幻影之血 01 ^(1^).mkv**^" --no-subtitles --no-track-tags --no-global-tags --no-chapters --language 0:und --default-track 0:yes --language 1:und --default-track 1:yes ^"^(^" ^"**D:\Anime\JOJO的奇妙冒险\1.JOJO的奇妙冒险\JOJO的奇妙冒险 幻影之血 01.mkv**^" ^"^)^" --language 0:und ^"^(^" ^"**D:\Anime\JOJO的奇妙冒险\1.JOJO的奇妙冒险\字幕 01.ass**^" ^"^)^" --track-order 0:0,0:1,1:0

你需要将其中的粗体的部分用bat中的注释替换，第一个部分为输出路径，替换成bat中的第一个注释%path_to%\%file_video%，第二个及以后的为封装前的各个部分的路径。

比如此例中，第二个为源视频路径，第三个为源字幕路径，所以第二个用**%pathvideo%\%filevideo%**替换，第三个用**%path_sub_sc%\%file_sub_sc%**替换。

替换之后的命令行如下：

> D:/Tools/MKVToolNix\mkvmerge.exe --ui-language zh_CN --output ^"**%path_to%\%file_video%**^" --no-subtitles --no-track-tags --no-global-tags --no-chapters --language 0:und --default-track 0:yes --language 1:und --default-track 1:yes ^"^(^" ^"**%path_video%\%file_video%**^" ^"^)^" --language 0:und ^"^(^" ^"**%path_sub_sc%\%file_sub_sc%**^" ^"^)^" --track-order 0:0,0:1,1:0

---

### 用法

用文本编辑器打开bat文件，并填好上述各个参数并保存，之后运行即可

（注：命令行用mkvtoolnix-gui操作一个视频的封装后，在工具栏-混流-显示命令行 中复制，格式选cmd.exe即可）
