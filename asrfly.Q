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
Description=Ѷ��������������
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
Function Listary(str)//Alt+F(Listary�Զ���)
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
Case "�����ļ�"
    Listary("")
Case "�������"
    Listary("liebao.exe")
Case "�򿪼�����"
    Listary("calc.exe")
Case "�򿪲�����"
    Listary ("����������")
Case "�����ı�"
    KeyDown "Ctrl", 1
	KeyPress "F", 1
	KeyUp "Ctrl", 1
Case "�رմ���"
    KeyDown "Alt", 1
	KeyPress "F4", 1
    KeyUp "Alt", 1
Case "ǰ��"
    KeyDown "Shift", 1
	KeyPress "BackSpace", 1
	KeyUp "Shift", 1
Case "����"
	KeyPress "BackSpace", 1
Case "��ҳ"
	KeyDown 18, 1
	KeyPress 36, 1
	KeyUp 18, 1
Case "ԭʼ��С"
	KeyDown 17, 1
	KeyPress 48, 1
	KeyUp 17, 1
Case "ҳ��Ŵ�"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 187, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "ҳ����С"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 189, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "ǿ��ˢ��"
	KeyDown 17, 1
	KeyPress 116, 1
	KeyUp 17, 1
Case "ȫ����ʾ"
	KeyPress "F11", 1
Case "ѡ�е�ַ��"
	KeyPress "F6", 1
Case "�½���ǩҳ"
	KeyDown 17, 1
	KeyPress 84, 1
Case "�½���������"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 78, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "�л�����һ����ǩҳ"
    KeyDown "Ctrl", 1
	KeyPress "Tab", 1
	KeyUp "Ctrl", 1
Case "�л���ǰһ����ǩҳ"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "Tab", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "�رյ�ǰ��ǩҳ"
    KeyDown "Ctrl", 1
	KeyPress "F4", 1
	KeyUp "Ctrl", 1
Case "�ر����б�ǩҳ"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "W", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "�ָ�����رյı�ǩҳ"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "T", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "������Ա����"
	KeyPress "F12", 1
Case "�������Ϻۼ�"
    KeyDown "Ctrl", 1
    KeyDown "Shift", 1
	KeyPress "Delete", 1
	KeyUp "Shift", 1
	KeyUp "Ctrl", 1
Case "�鿴Դ����"
	KeyDown 17, 1
	KeyPress 85, 1
	KeyUp 17, 1
Case "����"
	KeyDown 17, 1
	KeyPress 83, 1
	KeyUp 17, 1
Case "����Ϊ"
	KeyDown 17, 1
	KeyDown 16, 1
	KeyPress 83, 1
	KeyUp 16, 1
	KeyUp 17, 1
Case "ɾ��"
	KeyPress "BackSpace", 1
Case "��ǰɾ��"
	KeyPress "BackSpace", 1
Case "���ɾ��"
	KeyPress "Delete", 1
Case "��ǰ"
	KeyPress "Up", 1
Case "���"
	KeyPress "Down", 1
Case "����"
	KeyPress "Left", 1
Case "����"
	KeyPress "Right", 1
Case "��ҳ"
	KeyPress "Home", 1
Case "βҳ"
	KeyPress "End", 1
Case "���Ϸ�ҳ"
	KeyPress "PageUp", 1
Case "���·�ҳ"
	KeyPress "PageDown", 1
Case "���Ϲ���"
	MouseWheel 2
Case "���¹���"
	MouseWheel -2
Case "����"
	KeyPress "Tab", 1
Case "��д����"
	KeyPress "CapsLock", 1
Case "��Ӣ�л�"
	KeyPress "Shift", 1
Case "ȷ��"
    KeyPress "Enter", 1
Case "����"
    KeyPress "Enter", 1
Case "�س�"
    KeyPress "Enter", 1
Case "��ʼ�˵�"
   KeyPress "Win", 1
Case "�ո�"
	KeyPress "Space", 1
Case Else
	//saystring a
End Select
/*���²������뵽Ѷ��������ݶ���

�ӷ�=+
����=-
�˷�=*
����=/
ע��=//
��Ԫ����=$
��̾��=!
ð��=:
˫����="
������='
����=#
����=#
����=@
at=@
�ٷֺ�=%
�η�=^
ʡ�Ժ�=����
�ͷ���=&
��Բ����=(
��Բ����=)
��������=[
��������=]
�������={
�Ҵ�����=}
�»���=_
б��=\
����=|
���ͷ=<
�Ҽ�ͷ=>
���η�=~
����=��
��=,
���=��
��=.
�ʺ�=��
��=?
����==
���ۺ�=����
��������=��
��������=��
��Ԫ����=��

*/