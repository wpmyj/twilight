   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      ;    5SCA.WPF.ViewsRoot.Views.DetailInfo.DeviceInfo8036View   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5        � 	Resources  5
         TypesCollection �� Source��%:   &	        �� 5   
    67   �� *ValidDeviceType+5      .��5      �   5   
     tb_ElementStyle �� 
TargetType �� Property �� Value��%U   &	       �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   .+�5"      � $��Stretch=�6   $��Stretch=�65    5#      �� 5$      $
��Auto �6+    5&      �� 5'      $
��Auto �6(   .+�5)      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�5*      �� .��6'   添加更多项5,      5-      �� 5.      -   5        $��btnAddNewLine��5.      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��6�   �� *AddNewRecordCommand+��6�   ��  �� Path$ AddedAmount�.��5/      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    50      51      �� 52      -   5        $��	btnDelete��52      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��53      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   54      �� 55      -   5        $��btnCopy��55      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ .��56      �� $-��'../../../Resources/Icon/Style1/copy.png��6   57      �� 58      -   5        $��btnPaste��58      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ .��59      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5:      �� 5;      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5<      �� $-��'../../../Resources/Icon/Style1/save.png��6   5=      �� 5>      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $ DownloadCommand�.��5?      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5@      �� 5A      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5B      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5C      5D      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5E      -   5          Name$ DataGrid_Device��5E   *   )  #Microsoft.Windows.Controls.DataGrid	   AutoGenerateColumns	 .  $
 �� IsSynchronizedWithCurrentItem$

 TrueY�5G      
������    RowHeaderWidth$ 25Q�5I         	RowHeight$ 40Q�5J         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5M         SelectionUnit$ CellOrRowHeader=�5N      ��5O      �� $$ DeviceInfoObservableCollection�  5P        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5Q      " ��6/    5R      P� 5S       �@=�HasError . . �5T   "   ��  � ��
 �  ��6?   �� 5U   "    �@�ToolTip 6=   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5V      5X      5Y         Columns 5[      3  -Microsoft.Windows.Controls.DataGridTextColumn  5\      /  )Microsoft.Windows.Controls.DataGridColumn   Header$ ID��5]   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 5_   (      Binding 5^   (   �� $ ID�5_   (     5`      $ 编码��5a   (   # [ 5c   (    5b   (   �� $
 Code�5d      7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5i      $ 器件类型��60      DisplayMemberPath$
 Name��5j   0      SelectedValuePath$
 Code��5k   0      SelectedValueBinding 5l   0   �� *
TypeCode+   ItemsSource 5m   0   ��  �� Source# [  5o      7  1Microsoft.Windows.Controls.DataGridCheckBoxColumn  5t      $ 屏蔽��60    5u   0   �� $ Disable� �� ValidatesOnDataErrors .   5w      $ 
输出组1��5x   (      EditingElementStyle# [ 5z   ,   # [ 5{   (    5y   (   �� $ LinkageGroup1� . 5{   (     5|      $ 
输出组2��5}   (   # [ 5   ,   # [ 5�   (    5~   (   �� $ LinkageGroup2� . 5�   (     5�      $ 报警浓度��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $ 
AlertValue� . 5�   (     5�      $ 预警浓度��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ ForcastValue� . 5�   (     5�      $ 延时��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ 
DelayValue� . 5�   (     5�      $ 楼号��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ 
BuildingNo� . 5�   (     5�      $ 区号��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ ZoneNo� . 5�   (     5�      $ 层号��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ FloorNo� . 5�   (     5�      $ 	房间号��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ RoomNo� . 5�   (     5�      $ 安装地点��5�   (   # [ 5�   ,   # [ 5�   (    5�   (   �� $ Location� . 5�   (   5�      5�      5�      5�      