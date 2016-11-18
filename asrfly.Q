[General]
SyntaxVersion=2
BeginHotkey=118
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=119
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=e22fc3f2-49a6-40c0-b752-8917d5296e3d
Description=讯飞语音辅助输入
Enable=1
AutoRun=0
[Repeat]
Type=1
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Function Listary(str)//Alt+F(Listary自定义)
    KeyDown "Alt", 1
	KeyPress "F", 1
    KeyUp "Alt", 1
    If str<>"" Then
    	SayString str
    	Delay 100
    	KeyPress "Enter", 1
    End If
End Function

p1 =WaitKey()
a = Plugin.Sys.GetCLB()
Call Plugin.Sys.SetCLB("")

Select Case a
Case "搜索文件"
    Listary("")
Case "打开浏览器"
    Listary("liebao.exe")
Case "打开计算器"
    Listary("calc.exe")
Case "打开播放器"
    Listary ("网易云音乐")
Case "搜索文本"
    KeyDown "Ctrl", 1
	KeyPress "F", 1
	KeyUp "Ctrl", 1
Case "关闭窗口"
    KeyDown "Alt", 1
	KeyPress "F4", 1
    KeyUp "Alt", 1
Case "前进"
    KeyDown "Shift", 1
	KeyPress "BackSpace", 1
	KeyUp "Shift", 1
Case "后退"
	KeyPress "BackSpace", 1
Case "主页"
	KeyDown 18, 1
	KeyPress 36, 1
	KeyUp 18, 1
Case "原始大小"
	KeyDown 17, 1
	KeyPress 48, 1
	KeyUp 17, 1
Case "页面放大"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 187, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "页面缩小"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 189, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "强制刷新"
	KeyDown 17, 1
	KeyPress 116, 1
	KeyUp 17, 1
Case "全屏显示"
	KeyPress "F11", 1
Case "选中地址栏"
	KeyPress "F6", 1
Case "新建标签页"
	KeyDown 17, 1
	KeyPress 84, 1
Case "新建隐身窗口"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 78, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "切换到后一个标签页"
    KeyDown "Ctrl", 1
	KeyPress "Tab", 1
	KeyUp "Ctrl", 1
Case "切换到前一个标签页"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "Tab", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "关闭当前标签页"
    KeyDown "Ctrl", 1
	KeyPress "F4", 1
	KeyUp "Ctrl", 1
Case "关闭所有标签页"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "W", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "恢复最近关闭的标签页"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "T", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "开发人员工具"
	KeyPress "F12", 1
Case "清理网上痕迹"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "Delete", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "查看源代码"
	KeyDown 17, 1
	KeyPress 85, 1
	KeyUp 17, 1
Case "保存"
	KeyDown 17, 1
	KeyPress 83, 1
	KeyUp 17, 1
Case "另存为"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 83, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "删除"
	KeyPress "BackSpace", 1
Case "向前删除"
	KeyPress "BackSpace", 1
Case "向后删除"
	KeyPress "Delete", 1
Case "向前"
	KeyPress "Up", 1
Case "向后"
	KeyPress "Down", 1
Case "向左"
	KeyPress "Left", 1
Case "向右"
	KeyPress "Right", 1
Case "首页"
	KeyPress "Home", 1
Case "尾页"
	KeyPress "End", 1
Case "向上翻页"
	KeyPress "PageUp", 1
Case "向下翻页"
	KeyPress "PageDown", 1
Case "向上滚动"
	MouseWheel 2
Case "向下滚动"
	MouseWheel -2
Case "缩进"
	KeyPress "Tab", 1
Case "大写锁定"
	KeyPress "CapsLock", 1
Case "中英切换"
	KeyPress "Shift", 1
Case "确定"
    KeyPress "Enter", 1
Case "换行"
    KeyPress "Enter", 1
Case "回车"
    KeyPress "Enter", 1
Case "开始菜单"
   KeyPress "Win", 1
Case "空格"
	KeyPress "Space", 1
Case Else
	//saystring a
End Select
/*以下部分输入到讯飞语音快捷短语

加法=+
减法=-
乘法=*
除法=/
注释=//
美元符号=$
感叹号=!
冒号=:
双引号="
单引号='
井号=#
夏普=#
艾特=@
at=@
百分号=%
次方=^
省略号=……
和符号=&
左圆括号=(
右圆括号=)
左中括号=[
右中括号=]
左大括号={
右大括号=}
下划线=_
斜杠=\
竖杠=|
左箭头=<
右箭头=>
波形符=~
逗号=，
逗=,
句号=。
点=.
问号=？
问=?
等于==
破折号=——
左书名号=《
右书名号=》
日元符号=￥

*/