   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullC&clr-namespace:SCA.WPF.CreateControllerSCA.WPF.CreateController  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      C&clr-namespace:SCA.WPF.CreateControllerSCA.WPF.CreateController  5      2    ,SCA.WPF.ViewsRoot.Views.CreateControllerView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5VM&clr-namespace:SCA.WPF.CreateController     5      6sys&clr-namespace:System;assembly=mscorlib     5      8local&clr-namespace:SCA.WPF.CreateController     5        � 	Resources  5         ControllerTypeEnumDS S� 
ObjectType8   2SCA.WPF.CreateController.CreateControllerViewModel S� 
MethodName  SerialPortNumberEnumDS  createControllerVM 	 Label �� 
TargetType �� Property �� Value��%  &	        &	 >     &	 ~     &	 �     S� 5   
   "  6:   $ GetControllerType��6m   5      S� 5   
   "  6<   $ GetSerialPortNumber��6o   5        5   
   6*   �� 5   
   " ��6   .�5      ��  � ��
 �   �6+   5      5       � DataContext 5      �� 5   
    �� Source# [ 6   .��5       ��   WindowBackgroundBrush#��[ 6   .+�5"   
   �� -   5         ��Name$ Header��5"        BackgroundBrush#���  6!     BorderBrush#���  6P   $��1,1,1,0q�6|   	 �� CornerRadius$	 5,5,0,0��6�   ._�5#      �� -   5        
 ��Name$
 HeaderTextBlock��5#   �   $��创建控制器��6   $
��Wrap=�6%   $��	15,5,10,5q�69     HeaderFontColor#���  6L   $��18(�6{   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   6�   5$      � 5)   
   -   5         �Name$ AddControllerGrid��5)      $��-1,0,1,0q�6+    � ColumnDefinitions 5*      �� 5+      $��4* �6#   �� 5,      $��6* �6#    � RowDefinitions 5.      �� 5/      $
��Auto �6    �� 50      $
��Auto �6    �� 51      $
��Auto �6    �� 52      $
��Auto �6    �� 53      $
��Auto �6    �� 54      $
��Auto �6    .+�57      �� $��0��6   $��0��6!   $��_控制器名称��61   #��[ 6D   �� 58      -   5         ��Name$  ControllerNameInputTextBox��58   H   $��0��6   $��1��6#    �� TextWrapping$
 Wrap=�64   $
��Left=�6l   $	��180��59      $	��100��6#     InputFontColor#���  62   �� 5;      $��1��6   $��0��6!   $��_控制器类型��61   #��[ 6C   �� 5<      $��0,1,0,0q�6   $��1��60   $��1��6=   ._�5=      � $��
10,5,10,10q�6   $��Stretch=�6+   $��Stretch=�6I    5>      �� 5?      $��20 �6+   �� 5@      $	��100 �6+    5B      �� 5C      $
��Auto �6(   �� 5D      $
��Auto �6(   .+�5F      �� -   5         ��Name$ ControllerTypeComboBox��5H      $ �� IsSynchronizedWithCurrentItem$ FalseY�5F      $	��120��5H   @   $��1��5I      $
��Left=�6,   $��2��5J   Z   $��0,0,0,-0.163q�6n   ��5G      �� # [  5J   n   5L      5M      �� 5O      $��2��6   $��0��6!   $��_控制器机号��61   #��[ 6�    �� Target 6B   ��  �� ElementName$&  ControllerMachineNumInputTextBox�� �� Mode$ OneWay=�6�   �� 5P      -   5        $&  ControllerMachineNumInputTextBox��5P   H   $��2��6   $��1��6#   $
 Wrap=�64   $
��Left=�5Q      $	��180��61   #���  5R      $	��100��5S      �� 5T      $��3��6   $��0��6!   $��_器件长度��61   #��[ 6C   �� 5W      -   5        $ DeviceCodeLengthComboBox��5W      $	��120��6h   $��3��6t   $��1��6�   $
��Left=�6�   $��5,0,0,0q�6�   $ FalseY�6�   ��69   ��  �� Path$ DeviceCodeLength�6�   �� 5Y      $��4��6   $��0��6!   $��
_串口号��61   #��[ 6@   �� 5Z      $��0,1,0,0q�6   $��4��60   $��1��6=   ._�5[      � $��
10,5,10,10q�6   $��Stretch=�6+   $��Stretch=�6I    5\      �� 5]      $
��Auto �6+    5_      �� 5`      $
��Auto �6(   �� 5a      $
��Auto �6(   .+�5c      �� -   5        $ SerialPortNumberComboBox��5c   �   $ FalseY�6   $	��120��6�   $��1��6�   $
��Left=�6�   $��-4,0,0,0q�6   ��6E   �� # [ 6   5e      5f      �� 5i      $��0,1,0,0q�6   ._�5j      � $��
10,5,10,10q�6   $��Stretch=�6+   $��Stretch=�6I    5k      �� 5l      $
��Auto �6+    5n      �� 5o      $
��Auto �6(   �� 5p      $
��Auto �6(   5t      5u      �� 5v      $��5��6   $��2��6&   $��15,15,15,15q�6:    �� Orientation$ 
Horizontal=�6O   $��Center=�6h   $��Stretch=�6�   .+�5w      �� -	   5         ��Name$ 	AddButton��5w   '   $��_确定��6   $��Bottom=�6:    �� 	IsDefault . $
��Left=�6f   $	��140��6�   $��64��6�   �� 5x      -
   5        $ CloseButton��5x   '   $��_取消��6   $��Bottom=�6<    �� IsCancel . $
��Left=�6g   $	��150��6�   $��10,0,0,0q�6�   $��60��6�   5y      5z      �� 5{   
   -   5        $ Footer��5{   L   #���  6   $��35��6@   #���  6\   $��1,0,1,1q�6�   $	 0,0,5,5��6�   5|      5}      