   M S B A M L   `   `   `  ����   SCA.WPF:    4SCA.WPF.ViewsRoot.Views.CreateManualControlBoardView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008       � 	Resources   	  Label �� 
TargetType �� Property �� Value��%b   &	        �� " ��.���  � ��
 �   ���  � ��$ Center=���  � ��$ Right=�.����   WindowBackgroundBrush#��[ .+��� -    ��Name$ Header��  BackgroundBrush#���    BorderBrush#���  $��1,1,1,0q� �� CornerRadius$ 5,5,0,0��._��� -    ��Name$ HeaderTextBlock��$��添加网络手动盘��$
��Wrap=�$��	15,5,10,5q�  HeaderFontColor#���  $��18(�$��Center=�$��Center=�$
��Bold"�� -    �Name$ AddControllerGrid��$��Center=� � ColumnDefinitions �� $
��80px ��� $��* ��� $
��80px ��� $��* �	 � RowDefinitions	 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��
_板卡号��#��[  
 �� Target
 ��  �� ElementName$  ControllerNameInputTextBox�� �� Mode$ OneWay=��� -    ��Name$ BoardNumberCombox��$ �� IsSynchronizedWithCurrentItem$ FalseY�$��0��$��1��$
��50px��$
��Left=�����  �� Path$ BoardNumberList� �� SelectedItem �� *	BoardNo+$ TwoWay=��� $��1��$��0��$��_手盘号(始)��#��[  
 �� $  ControllerTypeInputTextBox��$ OneWay=��� $��0,1,0,0q�$��1��$��1��._�� $��
10,5,10,10q�$��Stretch=�$��Stretch=� �� $��20 ��� $��9 ��� $��91 �	 �� $
��Auto ��� $
��Auto �.+��� -   $ SubBoardStartComboBox��$ FalseY�$
��50px��$��1��$
��Left=�$��3��$��0,0,0,-0.163q����� $ SubBoardList� �� *SubBoardStartNo+$ TwoWay=��� $��1��$��2��$��_手盘号(止)��#��[  
 �� $  ControllerTypeInputTextBox��$ OneWay=��� $��0,1,0,0q�$��1��$��3��._�� $��
10,5,10,10q�$��Stretch=�$��Stretch=� �� $��20 ��� $	��100 �	 �� $
��Auto ��� $
��Auto �.+��� -   $ SubBoardEndComboBox��$ FalseY�$
��50px��$��1��$
��Left=�$��2������ $ SubBoardList� �� *SubBoardEndNo+$ TwoWay=��� $��2��$��0��$��_键数��#��[  
 �� $&  ControllerMachineNumInputTextBox��$ OneWay=�	� $��1��$��2�� 	� 	GroupName$ 64��$��Center=�$
��Left=� d� 	IsChecked �� *Key64+$ TwoWay=�.��64]� $��2��$��2��$��2��.+�	� $ other��$��Center=�$
��Left=� �� *	KeyOthers+$ TwoWay=�.��其它�� -    ��Name$&  ControllerMachineNumInputTextBox�� �� TextWrapping$
 Wrap=�$
��Left=�  InputFontColor#���  $	��100��$
��50px������ *KeyNoAmount+$ TwoWay=��� $��3��$��4��$��15,15,15,15q� �� Orientation$ 
Horizontal=�$��Center=�$��Stretch=�.+��� -    ��Name$ 	AddButton��$��_确定��$��Bottom=� �� 	IsDefault . $��Right=�$	��140��$��64������ $ AddMoreLineCommand��� -	   $ CloseButton��$��_取消��$��Bottom=� �� IsCancel . $
��Left=�$	��150��$��10,0,0,0q�$��60���� -
   $ Footer��#���  $��35��#���  $��Bottom=�$��1,0,1,1q�$ 0,0,5,5��