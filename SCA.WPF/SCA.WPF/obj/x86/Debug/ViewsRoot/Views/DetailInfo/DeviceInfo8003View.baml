   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections  5      1&clr-namespace:System;assembly=mscorlibSystem  5      B >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo 5	      ;   5SCA.WPF.ViewsRoot.Views.DetailInfo.DeviceInfo8003View   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Bcol2clr-namespace:System.Collections;assembly=mscorlib     5      6sys&clr-namespace:System;assembly=mscorlib     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5      Flocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5	        � 	Resources  5         TypesCollection �� Source��%:   &	        �� 5   
    67   �� *ValidDeviceType+5      .��5      �   5   
     tb_ElementStyle �� 
TargetType �� Property �� Value��%U   &	       �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5!      �� 5"      $
��Auto �6$   .+�5$      � $��Stretch=�6   $��Stretch=�65    5%      �� 5&      $
��Auto �6+    5(      �� 5)      $
��Auto �6(   .+�5+      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�5,      �� .��6'   添加更多项5.      5/      �� 50      -   5        $��btnAddNewLine��50      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��51      �� *AddNewRecordCommand+��6E   ��  �� Path$ AddedAmount�.��52      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    53      54      �� 55      -   5        $��	btnDelete��55      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��56      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   57      �� 58      -   5        $��btnCopy��58      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��59      ��5:      ��  �� ElementName$ DataGrid_Device��.��5;      �� $-��'../../../Resources/Icon/Style1/copy.png��6   5<      �� 5=      -   5        $��btnPaste��5=      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5>      ��5?      �� $ DataGrid_Device��.��5A      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5B      �� 5C      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5D      �� $-��'../../../Resources/Icon/Style1/save.png��6   5E      �� 5F      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $ DownloadCommand�.��5G      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5H      �� 5I      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5J      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5K      5L      H  BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5M      -   5        	  Name$	 DataGrid_Device��5M   *   )  #Microsoft.Windows.Controls.DataGrid
   AutoGenerateColumns
 .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�5O      
������    RowHeaderWidth$ 25Q�5Q         	RowHeight$ 40Q�5R         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5U         SelectionUnit$ CellOrRowHeader=�5V      ��5W      �� $$ DeviceInfoObservableCollection�  5Y        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5Z      " ��6/    5[      P� 5\       �@=�HasError . . �5]   "   ��  � ��
 �  ��6?   �� 5^   "    �@�ToolTip 6=   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5_      5a      5b      !   RowValidationErrorTemplate 5i      �� 5j      .R�5k      � $��	0,-2,0,-2q�6    � ToolTip$ 此行有错误��62   .+�5l      A� $��0��6&   
���  ��#��z��6F   #��z��6k   �� 5m      $��!��6(   #��z��61   $
��Bold"�6X   
�������$��Center=�6~   5n      5o         Columns 5s      3  -Microsoft.Windows.Controls.DataGridTextColumn  5t      /  )Microsoft.Windows.Controls.DataGridColumn   Width8  2Microsoft.Windows.Controls.DataGridLengthConverter$
 Auto 6,      Header$ ID��5u   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 5w   (      Binding 5v   (   �� $ ID�5w   (     5x      $	 120 6,   $ 编码��5y   (   # [ 5{   (    5z   (   �� $
 Code�5|      7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5�      $ 器件类型��60      DisplayMemberPath$
 Name��5�   0      SelectedValuePath$
 Code��5�   0      SelectedValueBinding 5�   0   �� *
TypeCode+    ItemsSource  5�   0   �� ! �� Source#! [  5�        5�      $ 特性��60   "   SelectedItemBinding" 6<   �� $ Feature�  5�      "   System.Collections.ArrayList  5�      ��5�   "   0��6/   ��5�   "   1��6/   ��5�   "   2��6/   ��5�   "   3��6/   5�      5�      7	  1Microsoft.Windows.Controls.DataGridCheckBoxColumn	  5�      $ 屏蔽��60   $
 Auto 5�   0    5�   0   �� $ Disable�# �� ValidatesOnDataErrors# . 5�   0     5�      $ 	灵敏度��60   " 6=   �� $ SensitiveLevel�  5�        5�      ��5�   "   1��6/   ��5�   "   2��6/   ��5�   "   3��6/   5�      5�        5�      $
 Auto 6,   $ 
输出组1��5�   (   $   EditingElementStyle#$ [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup1�# . 5�   (     5�      $
 Auto 6,   $ 
输出组2��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ LinkageGroup2�# . 5�   (     5�      $ 延时��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ 
DelayValue�# . 5�   (     5�      $	 120 6,   $ 区号��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ ZoneNo�# . 5�   (     5�      $ * 6,   $ 安装地点��5�   (   #$ [ 5�   (   # [ 5�   (    5�   (   �� $ Location�# . 5�   (   5�      5�      5�      5�      