   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      U/clr-namespace:SCA.WPF.ViewModelsRoot.Converters!SCA.WPF.ViewModelsRoot.Converters  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I2clr-namespace:System.Collections;assembly=mscorlibSystem.Collections 5      1&clr-namespace:System;assembly=mscorlibSystem 5	      A    ;SCA.WPF.ViewsRoot.Views.DetailInfo.LinkageConfigGeneralView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      E	converter/clr-namespace:SCA.WPF.ViewModelsRoot.Converters     5      Bcol2clr-namespace:System.Collections;assembly=mscorlib     5      6sys&clr-namespace:System;assembly=mscorlib     5	      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5
        � 	Resources  5         TypesCollection �� Source  TypeCCollection  LinkageTypeEnumDS S� 
ObjectTypeP   JSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.LinkageConfigGeneralViewModel S� 
MethodName��%�   &	        &	 0     &	 a     �� 5   
    67   �� *ValidDeviceType+�� 5   
    67   �� *ValidDeviceTypeC+S� 5   
   "  67   $ GetLinkageType��6q   5      5      .��5      �   5   
     tb_ElementStyle �� 
TargetType �� Property �� Value��%U   &	       �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5      5      .+�5    
   �� .+�5!      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5"      �� 5#      $
��Auto �6'   �� 5$      $
��Auto �6'   �� 5%      $
��Auto �6'   �� 5&      $
��Auto �6'   �� 5'      $
��Auto �6'   �� 5(      $
��Auto �6'   �� 5)      $
��Auto �6'    � RowDefinitions 5+      �� 5,      $
��Auto �6$   .+�5.      � $��Stretch=�6   $��Stretch=�65    5/      �� 50      $
��Auto �6+    52      �� 53      $
��Auto �6(   .+�55      �� $��45��6   $��0��6*   $��0��67   $
��Left=�6G   .@�56      �� .��6'   添加更多项58      59      �� 5:      -   5        $��btnAddNewLine��5:      
������ 
������ $
��Left=�6e   $��0��6�   $��0��6�   $��30��6�   $��30��6�   ��6�   �� 	 �� Path$	 AddNewRecordCommand���6�   �� $	 AddedAmount�.��5;      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    5<      5=      �� 5>      -   5        $��	btnDelete��5>      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��5?      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   5@      �� 5A      -   5        $��btnCopy��5A      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��5B      ��5C      �� 
 �� ElementName$
 DataGrid_General��.��5D      �� $-��'../../../Resources/Icon/Style1/copy.png��6   5E      �� 5F      -   5        $��btnPaste��5F      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5G      ��5H      �� $
 DataGrid_General��.��5J      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5K      �� 5L      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5M      �� $-��'../../../Resources/Icon/Style1/save.png��6   5N      �� 5O      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ ��6�   �� $	 DownloadCommand�.��5P      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5Q      �� 5R      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5S      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5T      5U      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5V      -   5          Name$ DataGrid_General��5V   *   )  #Microsoft.Windows.Controls.DataGrid   AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�5X      
������    RowHeaderWidth$ 25Q�5Z         	RowHeight$ 40Q�5[         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5^         SelectionUnit$ CellOrRowHeader=�5_      ��5`      �� $2	 ,GeneralLinkageConfigInfoObservableCollection�  5a        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5c      " ��6/    5d      P� 5e       �@=�HasError . . �5f   "   ��  � ��
 �  ��6?   �� 5g   "    �@�ToolTip 6=   ��  �� *Self+$)	 #(Validation.Errors)[0].ErrorContent�5h      5j      5k         Columns 5l      3  -Microsoft.Windows.Controls.DataGridTextColumn  5m      /  )Microsoft.Windows.Controls.DataGridColumn   Header$ ID��5n   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [ 5p   (      Binding 5o   (   �� $	 ID�5p   (     5q      $ 编号��5r   (      EditingElementStyle# [ 5t   (   # [ 5u   (    5s   (   �� $
	 Code� �� ValidatesOnDataErrors . 5v      7  1Microsoft.Windows.Controls.DataGridComboBoxColumn  5w      $ 动作常数��60      SelectedItemBinding 6>   �� $	 ActionCoefficient�   ItemsSource 5x      "  System.Collections.ArrayList  5y      ��5z   "   1��6/   ��5{   "   2��6/   ��5|   "   3��6/   ��5}   "   4��6/   ��5~   "   5��6/   5      5�        5�      $
 A楼��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 BuildingNoA� . 5�   (     5�      $
 A区��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 ZoneNoA� . 5�   (     5�      $ A层1��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 	LayerNoA1� . 5�   (     5�      $ A层2��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 	LayerNoA2� . 5�   (     5�      $ 类型A��60       DisplayMemberPath$
  Name��5�   0   !   SelectedValuePath$
! Code��5�   0   "   SelectedValueBinding" 5�   0   �� *DeviceTypeCodeA+ 5�   0   �� # �� Source## [  5�        5�      $ C分类��60    6=   �� ## [ " 6   �� $	 TypeC�$ �� Mode$$ TwoWay=�5�        5�      $ C楼号��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 BuildingNoC� . 5�   (     5�      $ C区号��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 ZoneNoC� . 5�   (     5�      $ C层号��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 LayerNoC� . 5�   (     5�      $ C机号��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 
MachineNoC� . 5�   (     5�      $ 
C回路号��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 LoopNoC� . 5�   (     5�      $ C编号��5�   (   # [ 5�   (   # [ 5�   (    5�   (   �� $	 	DeviceNoC� . 5�   (     5     $ 类型C��60   %   Width8	  2Microsoft.Windows.Controls.DataGridLengthConverter$% *	 5  0   $
  Name��5  0   $
! Code��5  0   " 5  0   �� *DeviceTypeCodeC+ 5  0   �� ## [ 5
     5     5     5     5     