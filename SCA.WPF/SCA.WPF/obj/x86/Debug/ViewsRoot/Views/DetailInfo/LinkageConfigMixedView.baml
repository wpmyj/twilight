   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5      1&clr-namespace:System;assembly=mscorlibSystem 5      ?    9SCA.WPF.ViewsRoot.Views.DetailInfo.LinkageConfigMixedView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      Bcol2clr-namespace:System.Collections;assembly=mscorlib     5      6sys&clr-namespace:System;assembly=mscorlib     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5	      .��5      �   � 	Resources  5   
      tb_ElementStyle �� 
TargetType �� Property �� Value  LinkageActionTypeEnumDS S� 
ObjectTypeN   HSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.LinkageConfigMixedViewModel S� 
MethodName  LinkageTypeEnumDS  TypesCollection �� Source��%  &	        &	 K     &	 �     &	 �     �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      S� 5      "  6A   $ GetLinkageActionType��6y   5      S� 5      "  6;   $ GetLinkageType��6s   5      �� 5       6;   �� *ValidDeviceType+5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5       $
��Auto �6'    � RowDefinitions 5"      �� 5#      $
��Auto �6$   .+�5&      � $��Stretch=�6   $��Stretch=�65    5'      �� 5(      $
��Auto �6+    5*      �� 5+      $
��Auto �6(   .+�5-      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�5.      �� .��6'   添加更多项50      51      �� 52      -   5        $��btnAddNewLine��52      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��6�   �� 	 �� Path$	 AddNewRecordCommand���6�   �� $	 AddedAmount�.��53      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    54      55      �� 56      -   5        $��	btnDelete��56      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��57      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   58      �� 59      -   5        $��btnCopy��59      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��5:      ��5;      �� 
 �� ElementName$
 DataGrid_Mixed��.��5<      �� $-��'../../../Resources/Icon/Style1/copy.png��6   5=      �� 5>      -   5        $��btnPaste��5>      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5?      ��5@      �� $
 DataGrid_Mixed��.��5B      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5C      �� 5D      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5E      �� $-��'../../../Resources/Icon/Style1/save.png��6   5F      �� 5G      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $	 DownloadCommand�.��5H      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5I      �� 5J      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5K      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5L      5M      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5N   
   -   5          Name$ DataGrid_Mixed��5N   &   )  #Microsoft.Windows.Controls.DataGrid   AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�5P      
������    RowHeaderWidth$ 25Q�5R         	RowHeight$ 40Q�5S         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5V         SelectionUnit$ CellOrRowHeader=�5W      ��5X      �� $0	 *MixedLinkageConfigInfoObservableCollection�  5Y        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5Z      " ��6/    5[      P� 5\       �@=�HasError . . �5]   "   ��  � ��
 �  ��6?   �� 5^   "    �@�ToolTip 6=   ��  �� *Self+$)	 #(Validation.Errors)[0].ErrorContent�5_      5a      5b         Columns 5d      3  -Microsoft.Windows.Controls.DataGridTextColumn  5e      /  )Microsoft.Windows.Controls.DataGridColumn   Width8  2Microsoft.Windows.Controls.DataGridLengthConverter$
 Auto 6(      Header$ ID��5f   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [  5h   (      Binding 5g   (   �� $	 ID�5h   (     5j      $	 120 6(   $ 编号��5k   (   # [  5m   (      EditingElementStyle# [ 5n   (    5l   (   �� $
	 Code� �� ValidatesOnDataErrors . 5p      7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5q      $ 动作常数��60      SelectedItemBinding 6>   �� $	 ActionCoefficient�    ItemsSource  5r      "	  System.Collections.ArrayList	  5s      ��5t   "   1��6/   ��5u   "   2��6/   ��5v   "   3��6/   ��5w   "   4��6/   ��5x   "   5��6/   5y      5{        5|      $ 动作类型��60     6>   �� ! �� Source#! [ "   SelectedValueBinding" 6�   �� $	 
ActionType�# �� Mode$# TwoWay=�  5}      $ A分类��60     6=   �� #! [ " 6   �� $	 TypeA�$# TwoWay=�  5�      $
 Auto 6(   $
 A楼��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 BuildingNoA� . 5�   (     5�      $
 Auto 6(   $
 A区��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 ZoneNoA� . 5�   (     5�      $
 Auto 6(   $
 A层��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 LayerNoA� . 5�   (     5�      $
 Auto 6(   $ A路号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 LoopNoA� . 5�   (     5�      $
 Auto 6(   $ A编号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 DeviceCodeA� . 5�   (     5�      $ A类型��60   $   DisplayMemberPath$
$ Name��5�   0   %   SelectedValuePath$
% Code��5�   0   " 5�   0   �� *DeviceTypeCodeA+  5�   0   �� #! [ 5�        5�      $ B分类��60     6=   �� #! [ " 6   �� $	 TypeB�$# TwoWay=�  5�      $
 Auto 6(   $
 B楼��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 BuildingNoB� . 5�   (     5�      $
 Auto 6(   $
 B区��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 ZoneNoB� . 5�   (     5�      $
 Auto 6(   $
 B层��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 LayerNoB� . 5�   (     5�      $
 Auto 6(   $ B路号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 LoopNoB� . 5�   (     5�      $
 Auto 6(   $ B编号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 DeviceCodeB� . 5�   (     5�      $ B类型��60   $
$ Name��5�   0   $
% Code��5�   0   " 5�   0   �� $	 DeviceTypeCodeB�  5�   0   �� #! [ 5�        5�      $ C分类��60     6=   �� #! [ " 6   �� $	 TypeC�$# TwoWay=�  5�      $
 Auto 6(   $ C楼号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 BuildingNoC� . 5�   (     5�      $
 Auto 6(   $ C区号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 ZoneNoC� . 5�   (     5�      $
 Auto 6(   $ C层号��5�   (   # [  5�   (   # [ 5�   (    5�   (   �� $	 LayerNoC� . 5�   (     5�      $
 Auto 6(   $ C机号��5�   (   # [  5�   (    5�   (   �� $	 
MachineNoC�5�   (     5�      $
 Auto 6(   $ 
C回路号��5�   (   # [  5   (   # [ 5  (    5�   (   �� $	 LoopNoC� . 5  (     5     $
 Auto 6(   $ C编号��5  (   # [  5  (   # [ 5  (    5  (   �� $	 DeviceCodeC� . 5  (     5     $ C类型��60   $
$ Name��5  0   $
% Code��5  0   " 5  0   �� $	 DeviceTypeCodeC�  5  0   �� #! [ 5     5     5     5     5     