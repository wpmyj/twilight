   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5      1&clr-namespace:System;assembly=mscorlibSystem 5	      ;    5SCA.WPF.ViewsRoot.Views.DetailInfo.DeviceInfo8001View   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5      <col2clr-namespace:System.Collections;assembly=mscorlib  5      0sys&clr-namespace:System;assembly=mscorlib  5	        � 	Resources  5         TypesCollection �� Source��%:   &	        �� 5   
    67   �� *ValidDeviceType+5      .��5      �   5   
     tb_ElementStyle �� 
TargetType �� Property �� Value  tb_ElementStyleForLeft��%�   &	       &	 K     �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      �� 5      " ��63   .�5      ��  � ��$
 Left=�68   5      5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5       $
��Auto �6'   �� 5!      $
��Auto �6'   �� 5"      $
��Auto �6'    � RowDefinitions 5$      �� 5%      $
��Auto �6$   .+�5'      � $��Stretch=�6   $��Stretch=�65    5(      �� 5)      $
��Auto �6+    5+      �� 5,      $
��Auto �6(   .+�5.      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�5/      �� .��6'   添加更多项51      52      �� 53      -   5        $��btnAddNewLine��53      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��54      �� *AddNewRecordCommand+��6E   ��  �� Path$ AddedAmount�.��55      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    56      57      �� 58      -   5        $��	btnDelete��58      $��1��6*   $��0��6:   $��30��6G   $��30��6m   
������ 
������ .��59      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   5:      �� 5;      -   5        $��btnCopy��5;      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��5<      ��5=      ��  �� ElementName$ DataGrid_Device��.��5>      �� $-��'../../../Resources/Icon/Style1/copy.png��6   5?      �� 5@      -   5        $��btnPaste��5@      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5A      ��5B      �� $ DataGrid_Device��.��5D      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5E      �� 5F      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5G      �� $-��'../../../Resources/Icon/Style1/save.png��6   5H      �� 5I      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $ DownloadCommand�.��5J      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5K      �� 5L      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5M      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5N      5O      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5R   
   -   5        	  Name$	 DataGrid_Device��5R   &   )  #Microsoft.Windows.Controls.DataGrid
   AutoGenerateColumns
 .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�5T      
������    RowHeaderWidth$ 25Q�5V         	RowHeight$ 40Q�5W         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5Z         SelectionUnit$ CellOrRowHeader=�5[      ��5\      �� $$ DeviceInfoObservableCollection�  5_        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5`      " ��6/    5a      P� 5b       �@=�HasError . . �5c   "   ��  � ��
 �  ��6?   �� 5d   "    �@�ToolTip 6=   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5e      5g      5h         Columns 5j      3  -Microsoft.Windows.Controls.DataGridTextColumn  5k      /  )Microsoft.Windows.Controls.DataGridColumn   Header$ ID��5l   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 5n   (      Binding 5m   (   �� $ ID�5n   (     5o      $ 编码��5p   (   # [ 5r   (    5q   (   �� $
 Code�5s      7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5x      $ 器件类型��60      DisplayMemberPath$
 Name��5y   0      SelectedValuePath$
 Code��5z   0      SelectedValueBinding 5{   0   �� *
TypeCode+   ItemsSource 5|   0   ��  �� Source# [  5~        5�      $ 特性��60      SelectedItemBinding 6<   �� $ Feature� 5�      "  System.Collections.ArrayList  5�      ��5�   "   0��6/   ��5�   "   1��6/   ��5�   "   2��6/   ��5�   "   3��6/   5�      5�      7  1Microsoft.Windows.Controls.DataGridCheckBoxColumn  5�      $ 屏蔽��60    5�   0   �� $ Disable�  �� ValidatesOnDataErrors  .   5�      $ 	灵敏度��6,    6:   �� $ SensitiveLevel� 5�        5�      ��5�      1��6+   ��5�      2��6+   ��5�      3��6+   5�      5�        5�      $ 
输出组1��5�   (   !   EditingElementStyle#! [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup1�  . 5�   (     5�      $ 
输出组2��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup2�  . 5�   (     5�      $ 
输出组3��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup3�  . 5�   (     5�      $ 延时��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ 
DelayValue�  . 5�   (     5�      $ 	板卡号��5�   (   # [ 5�   (    5�   (   �� $ BoardNo�5�   (     5�      $ 	手盘号��5�   (   # [ 5�   (    5�   (   �� $ 
SubBoardNo�5�   (     5�      $ 	手键号��5�   (   # [ 5�   (    5�   (   �� $ KeyNo�5�   (     5�      $ 广播分区��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ BroadcastZone�  . 5�   (     5�      $ 楼号��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ 
BuildingNo�  . 5�   (     5�      $ 区号��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ ZoneNo�  . 5�   (     5�      $ 层号��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ FloorNo�  . 5�   (     5�      $ 	房间号��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ RoomNo�  . 5�   (     5�      "   Width8	  2Microsoft.Windows.Controls.DataGridLengthConverter$" *	 6)   $ 安装地点��5�   (   #! [ 5�   (   # [ 5�   (    5�   (   �� $ Location�  . 5�   (   5�      5�      5�      5�      