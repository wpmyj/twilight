   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      ?$clr-namespace:SCA.WPF.InfrastructureSCA.WPF.Infrastructure  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5	      1&clr-namespace:System;assembly=mscorlibSystem 5
      B    <SCA.WPF.ViewsRoot.Views.DetailInfo.LinkageConfigStandardView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      ?infrastructure$clr-namespace:SCA.WPF.Infrastructure     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5      <col2clr-namespace:System.Collections;assembly=mscorlib  5	      0sys&clr-namespace:System;assembly=mscorlib  5
      .��5      �   � 	Resources  5   
      tb_ElementStyle �� 
TargetType �� Property �� Value��%U   &	        �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   .+�5"      � $��Stretch=�6   $��Stretch=�65    5#      �� 5$      $
��Auto �6+    5&      �� 5'      $
��Auto �6(   .+�5)      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�5*      �� .��6'   添加更多项5,      5-      �� 5.      -   5        $��btnAddNewLine��5.      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��6�   ��  �� Path$ AddNewRecordCommand���6�   �� $ AddedAmount�.��5/      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    50      51      �� 52      -   5        $��	btnDelete��52      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��53      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   54      �� 55      -   5        $��btnCopy��55      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��56      ��57      ��  �� ElementName$ DataGrid_Standard��.��58      �� $-��'../../../Resources/Icon/Style1/copy.png��6   59      �� 5:      -   5        $��btnPaste��5:      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5;      ��5<      �� $ DataGrid_Standard��.��5>      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5?      �� 5@      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5A      �� $-��'../../../Resources/Icon/Style1/save.png��6   5B      �� 5C      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $ DownloadCommand�.��5D      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5E      �� 5F      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5G      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5H      5I      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5J      -   5          Name$ DataGrid_Standard��5J   *   )  #Microsoft.Windows.Controls.DataGrid	   AutoGenerateColumns	 .  $
 �� IsSynchronizedWithCurrentItem$

 TrueY�5L      
������    RowHeaderWidth$ 25Q�5N         	RowHeight$ 40Q�5O         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5R         SelectionUnit$ CellOrRowHeader=�5S      ��5T      �� $3 -StandardLinkageConfigInfoObservableCollection�  5U      )   #SCA.WPF.Infrastructure.BindingProxy 	 proxy   Data  
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%  &	       &	        5V       6A   �� �� 5W      " ��6/    5X      P� 5Y       �@=�HasError . . �5Z   "   ��  � ��
 �  ��6?   �� 5[   "    �@�ToolTip 6=   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5\      5^      5_         Columns 5`      3  -Microsoft.Windows.Controls.DataGridTextColumn  5a      /  )Microsoft.Windows.Controls.DataGridColumn   Width8  2Microsoft.Windows.Controls.DataGridLengthConverter$
 Auto 6(      Header$ ID��5b   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [  5d   (      Binding 5c   (   �� $ ID�5d   (     5e      $	 120 6(   $ 输出组号��5f   (   # [  5h   (      EditingElementStyle# [ 5i   (    5g   (   �� $
 Code� �� ValidatesOnDataErrors . 5k        5l      $
 Auto 6(   $ 联动模块1��5m   (   # [  5o   (    5n   (   �� $ 	DeviceNo1�5o   (     5p      $
 Auto 6(   $ 联动模块2��5q   (   # [  5s   (    5r   (   �� $ 	DeviceNo2�5s   (     5t      $
 Auto 6(   $ 联动模块3��5u   (   # [  5w   (    5v   (   �� $ 	DeviceNo3�5w   (     5x      $
 Auto 6(   $ 联动模块4��5y   (   # [  5{   (    5z   (   �� $ 	DeviceNo4�5{   (     5|      $
 Auto 6(   $ 联动模块5��5}   (   # [  5�   (    5~   (   �� $ 	DeviceNo5�   
Visibility 5   (   �� *Data.IsVisualColumn+ �� Source# [ 5�   (     5�      $
 Auto 6(   $ 联动模块6��5�   (   # [  5�   (    5�   (   �� $ 	DeviceNo6� 5�   (   �� *Data.IsVisualColumn+# [ 5�   (     5�      $
 Auto 6(   $ 联动模块7��5�   (   # [  5�   (    5�   (   �� $ 	DeviceNo7� 5�   (   �� *Data.IsVisualColumn+# [ 5�   (     5�      $
 Auto 6(   $ 联动模块8��5�   (   # [  5�   (    5�   (   �� *Data.IsVisualColumn+# [  5�   (   �� $ 	DeviceNo8�5�   (   7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5�      $ 动作常数��60      SelectedItemBinding 6>   �� $ ActionCoefficient�    ItemsSource  5�      "	  System.Collections.ArrayList	  5�      ��5�   "   1��6/   ��5�   "   2��6/   ��5�   "   3��6/   ��5�   "   4��6/   ��5�   "   5��6/   5�      5�        5�      $
 Auto 6,   $ 
联动组1��5�   (   # [  5�   (   # [ 5�   ,    5�   (   �� $ 
LinkageNo1� . 5�   ,     5�      $
 Auto 6(   $ 
联动组2��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $ 
LinkageNo2� . 5�   (     5�      $ * 6(   $ 
联动组3��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $ 
LinkageNo3� . 5�   (   5�      5�      5�      5�      