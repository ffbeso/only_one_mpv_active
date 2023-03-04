## Windowsでmpvが多重起動しないようにするスクリプト

%APPDATA%\mpv\フォルダへ.batと.vbsを展開してください。  
関連付けを.exeではなく. batに設定する必要があるので、mpv-install_customで関連付けをmpv.batへ変更。  

mpvのGeometry設定を記憶する（ https://github.com/ffbeso/remember_last_geometry ）に対応するためにプロセスのtaskkillではなくALT+F4
のキー入力で終了するようにしている。  
終了するまえに新しいmpvがactiveにならないよう、500ミリ秒Sleepしている。  
