   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=null7 clr-namespace:SCA.WPF.CreateLoopSCA.WPF.CreateLoop  5      D @SCA.Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:SCA.Model;assembly=SCA.Model	SCA.Model 5      -    'SCA.WPF.ViewsRoot.Views.CreateLoopsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /vm clr-namespace:SCA.WPF.CreateLoop     5      <model*clr-namespace:SCA.Model;assembly=SCA.Model     5        � 	Resources  5
       	  Label �� 
TargetType �� Property �� Value��%T   &	        �� 5   
   " ��6   .�5      ��  � ��
 �   �6+   5      5      .��5      ��   WindowBackgroundBrush#��[ 6   .+�5   
   �� -   5         ��Name$ Header��5        BackgroundBrush#���  6!     BorderBrush#���  6P   $��1,1,1,0q�6|    �� CornerRadius$ 5,5,0,0��6�   ._�5      �� -   5         ��Name$ HeaderTextBlock��5   �   $��创建回路��6   $
��Wrap=�6$   $��	15,5,10,5q�68     HeaderFontColor#���  6K   $��18(�6z   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   6�   5      � 5   
   -   5         �Name$ AddControllerGrid��5      $��0,0,0,0q�6+    � ColumnDefinitions 5      �� 5      $��4* �6#   �� 5      $��6* �6#   	 � RowDefinitions	 5!      �� 5"      $
��Auto �6    �� 5#      $
��Auto �6    �� 5$      $
��Auto �6    �� 5%      $
��Auto �6    �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    .+�5)      �� $��0��6   $��0��6!   $��_机号��61   #��[  6�   
 �� Target
 6?   ��  �� ElementName$ MachineNumberInputLabel�� �� Mode$ OneWay=�6�   �� 5*      -   5         ��Name$ MachineNumberInputLabel��5*      $��0��65   $��1��6B   #��[  6�   ��6S   ��  �� Path$ ControllerMachineNumber�6�   �� 5,      $��1��6   $��0��6!   $��
_回路号��61   #��[  6�   
 6@   �� $ LoopCodeInputTextBox��$ OneWay=�6�   �� 5.      -   5         ��Name$ LoopCodeComboBox��50      $��1��5.      $��1��6$   $ �� IsSynchronizedWithCurrentItem$ FalseY�64   $	��120��50   2   $
��Left=�6?   $��5,0,0,0q�51      ��5/      �� *	LoopsCode+51      �� 53      $��2��6   $��0��6!   $��
_节点数��61   #��[  6�   
 6@   �� $ DeviceAmountInputTextBox��$ OneWay=�6�   �� 54      -   5         ��Name$ DeviceAmountInputTextBox��54   H   $��2��6   $��1��6#    �� TextWrapping$
 Wrap=�64   $
��Left=�6j   $	��180��6�   $��5,0,0,0q�6�   $	��100��6�   �� 55      $��3��6   $��0��6!   $��
_回路数��61   #��[  6�   
 6@   �� $ LoopAmountInputTextBox��$ OneWay=�6�   �� 56      -   5        $ LoopAmountInputTextBox��56   H   $��3��6   $��1��6#   $
 Wrap=�64   $
��Left=�6h   $	��180��6�   $��5,0,0,0q�6�   $	��100��6�   �� 57      $��4��6   $��0��6!   $��
_回路名��61   #��[  6�   
 6@   �� $ LoopNameInputTextBox��$ OneWay=�6�   �� 58      -   5        $ LoopNameInputTextBox��58   H   $��4��6   $��1��6#   $
 Wrap=�64   $
��Left=�6f   $	��180��6�   $��5,0,0,0q�6�   $	��100��6�   �� 59      $��5��6   $��2��6&   $��15,15,15,15q�6:    �� Orientation$ 
Horizontal=�6O   $��Center=�6h   $��Stretch=�6�   .+�5:      �� -	   5         ��Name$ 	AddButton��5:   '   $��_确定��6   $��Bottom=�6:    �� 	IsDefault . $
��Left=�6f   $	��140��6�   $��64��6�   �� 5;      -
   5        $ CloseButton��5;   '   $��_取消��6   $��Bottom=�6<    �� IsCancel . $
��Left=�6g   $	��150��6�   $��10,0,0,0q�6�   $��60��6�   5<      5=      �� 5>   
   -   5        $ Footer��5>   L   #���  6   $��35��6@   #���  6\   $��1,0,1,1q�6�   $ 0,0,5,5��6�   5?      5@      