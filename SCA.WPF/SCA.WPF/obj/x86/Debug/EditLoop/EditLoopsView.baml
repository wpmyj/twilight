   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=null3clr-namespace:SCA.WPF.EditLoopSCA.WPF.EditLoop  5      +    %SCA.WPF.ViewsRoot.Views.EditLoopsView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -vmclr-namespace:SCA.WPF.EditLoop     5        � 	Resources  5	      )   #SCA.WPF.EditLoop.EditLoopsViewModel   editLoopsVM��%   &	          5
   
   6    5       � DataContext 5      �� 5   
    �� Source# [  6   .��5      ��   WindowBackgroundBrush#��[ 6   .+�5   
   �� -   5         ��Name$ Header��5        BackgroundBrush#���  6!     BorderBrush#���  6P   $��1,1,1,0q�6|    �� CornerRadius$ 5,5,0,0��6�   ._�5      �� -   5         ��Name$ HeaderTextBlock��5   �   $��编辑回路��6   $
��Wrap=�6$   $��	15,5,10,5q�68     HeaderFontColor#���  6K   $��18(�6z   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   6�   5      � 5   
   -   5         �Name$ LoopsInfoContainer��5      $��0,0,0,0q�6,    � ColumnDefinitions 5      �� 5      $��4* �6#   �� 5      $��6* �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5       &   System.Windows.Controls.DataGrid  -   5        	  Name$	 LoopsInfoGrid��5       
   SelectionMode$
 Extended=�5!         CanUserAddRows .     AutoGenerateColumns .     
IsReadOnly .  $��0��5%      $��2��6(   ��5    2   ��  �� Path$ LoopObservableCollection�   Columns 5(      4  .System.Windows.Controls.DataGridTemplateColumn  5)         CellTemplate 5*      �� 5+      .R�5,   "   ��  ��Name$ ckLoopsSelector��6+   -   5        5-   +   5/      51      0  *System.Windows.Controls.DataGridTextColumn  55      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6)      Header$ 回路编号��56   +      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 57   +   �� $
 Code�6I     5:      $	 120 6)   $ 回路名称��5;   +    .   5<   +   �� $
 Name� �� Mode$ TwoWay=�6X     5?      $	 120 6)   $ 	节点数��5@   +    .  5A   +   �� $ DeviceAmount�6Q   5D      �� 5E      $��5��6   $��2��6&   $��15,15,15,15q�6:    �� Orientation$ 
Horizontal=�6O   $��Center=�6h   $��Stretch=�6�   .+�5F      �� -   5         ��Name$ DeleteButton��5F   '   $��_删除��6   $��Bottom=�6=    �� 	IsDefault . $
��Left=�6i   $	��140��6�   $��64��6�   �� 5G      -   5        $ CloseButton��5G   '   $��_关闭��6   $��Bottom=�6<    �� IsCancel . $
��Left=�6g   $	��150��6�   $��10,0,0,0q�6�   $��60��6�   5H      5I      �� 5J   
   -   5        $ Footer��5J   L   #���  6   $��35��6@   #���  6\   $��1,0,1,1q�6�   $ 0,0,5,5��6�   5K      5L      