   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5      1&clr-namespace:System;assembly=mscorlibSystem 5	      U/clr-namespace:SCA.WPF.ViewModelsRoot.Validation!SCA.WPF.ViewModelsRoot.Validation  5
      ;    5SCA.WPF.ViewsRoot.Views.DetailInfo.DeviceInfo8007View   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5      <col2clr-namespace:System.Collections;assembly=mscorlib  5      0sys&clr-namespace:System;assembly=mscorlib  5	      @
validation/clr-namespace:SCA.WPF.ViewModelsRoot.Validation  5
        � 	Resources  5         TypesCollection �� Source��%:   &	        �� 5   
    67   �� *ValidDeviceType+5      .��5      �   5   
     tb_ElementStyle �� 
TargetType �� Property �� Value��%U   &	       �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5       $
��Auto �6'    � RowDefinitions 5"      �� 5#      $
��Auto �6$   .+�5%      � $��Stretch=�6   $��Stretch=�65    5&      �� 5'      $
��Auto �6+    5)      �� 5*      $
��Auto �6(   .+�5,      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�5-      �� .��6'   添加更多项5/      50      �� 51      -   5        $��btnAddNewLine��51      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��52      �� *AddNewRecordCommand+��6E   ��  �� Path$ AddedAmount�.��53      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    54      55      �� 56      -   5        $��	btnDelete��56      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��57      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   58      �� 59      -   5        $��btnCopy��59      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��5:      ��5;      ��  �� ElementName$ DataGrid_Device��.��5<      �� $-��'../../../Resources/Icon/Style1/copy.png��6   5=      �� 5>      -   5        $��btnPaste��5>      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5?      ��5@      �� $ DataGrid_Device��.��5B      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5C      �� 5D      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5E      �� $-��'../../../Resources/Icon/Style1/save.png��6   5F      �� 5G      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $ DownloadCommand�.��5H      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5I      �� 5J      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5K      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5L      5M      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5N      -   5        	  Name$	 DataGrid_Device��5N   *   )  #Microsoft.Windows.Controls.DataGrid
   AutoGenerateColumns
 .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�5P      
������    RowHeaderWidth$ 25Q�5R         	RowHeight$ 40Q�5S         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5V         SelectionUnit$ CellOrRowHeader=�5W      ��5X      �� $$ DeviceInfoObservableCollection�  5Z        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5[      " ��6/    5\      P� 5]       �@=�HasError . . �5^   "   ��  � ��
 �  ��6?   �� 5_   "    �@�ToolTip 6=   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5`      5b      5c      !   RowValidationErrorTemplate 5j      �� 5k      .R�5l      � $��	0,-2,0,-2q�6    � ToolTip$ 此行有错误��62   .+�5m      A� $��0��6&   
���  ��#��z��6F   #��z��6k   �� 5n      $��!��6(   #��z��61   $
��Bold"�6X   
�������$��Center=�6~   5o      5p         Columns 5r      3  -Microsoft.Windows.Controls.DataGridTextColumn  5s      /  )Microsoft.Windows.Controls.DataGridColumn   Width8  2Microsoft.Windows.Controls.DataGridLengthConverter$
 Auto 6,      Header$ ID��5t   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 5v   (      Binding 5u   (   �� $ ID�5v   (     5w      $	 120 6,   $ 编码��5x   (   # [ 5z   (    5y   (   �� $
 Code�5{      7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5�      $ 器件类型��60      DisplayMemberPath$
 Name��5�   0      SelectedValuePath$
 Code��5�   0      SelectedValueBinding 5�   0   �� *
TypeCode+    ItemsSource  5�   0   �� ! �� Source#! [  5�        5�      $
 Auto 6,   $ 特性��5�   (   # [ 5�   (    5�   (   �� $ Feature�5�   (   7  1Microsoft.Windows.Controls.DataGridCheckBoxColumn  5�      $ 屏蔽��60   $
 Auto 5�   0    5�   0   �� $ Disable�" �� ValidatesOnDataErrors" . 5�   0     5�      $ 	灵敏度��60   #   SelectedItemBinding# 6=   �� $ SensitiveLevel�  5�      "	  System.Collections.ArrayList	  5�   "   ��5�   &   1��63   ��5�   &   2��63   ��5�   &   3��63   5�   #   5�        5�      $ 
输出组1��5�   (   $   EditingElementStyle#$ [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup1�" . 5�   (     5�      $ 
输出组2��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup2�" . 5�   (     5�      $ 楼号��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ 
BuildingNo�" . 5�        5�      $ 区号��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ ZoneNo�" . 5�   (     5�      $ 层号��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ FloorNo�" . 5�   (     5�      $ 	房间号��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ RoomNo�" . 5�   (     5�      $ * 6,   $ 安装地点��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ Location�" . 5�   (   5�      5�      5�      5�      