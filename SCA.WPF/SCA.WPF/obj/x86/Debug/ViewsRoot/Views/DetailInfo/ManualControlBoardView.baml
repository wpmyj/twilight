   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullk:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo,SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo  5      A%clr-namespace:SCA.WPF.ViewsRoot.ViewsSCA.WPF.ViewsRoot.Views  5      ?$clr-namespace:SCA.WPF.InfrastructureSCA.WPF.Infrastructure  5      ?    9SCA.WPF.ViewsRoot.Views.DetailInfo.ManualControlBoardView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Llocal:clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo     5      6View%clr-namespace:SCA.WPF.ViewsRoot.Views     5      ?infrastructure$clr-namespace:SCA.WPF.Infrastructure     5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5	      .��5      �   � 	Resources  5   
      tb_ElementStyle �� 
TargetType �� Property �� Value)   #SCA.WPF.Infrastructure.BindingProxy 	 proxy   Data��%{   &	        &	 K     �� 5      " ��6,   .�5      ��  � ��$ Right=�68   5        5       69   �� 5      .+�5   
   �� .+�5      � $��0,5,0,0q�6   $
��Left=�6&   $��Stretch=�6A   $	��300��6]    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'   �� 5      $
��Auto �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   .+�5!      � $��Stretch=�6   $��Stretch=�65    5"      �� 5#      $
��Auto �6+    5%      �� 5&      $
��Auto �6(   .+�5(      �� $��45��6   $��0��6&   $��0��63   $
��Left=�6C   .@�5)      �� .��5*      �� -   5        $��btnAddMoreLine��5*   %   $
��Left=�6=   $��0��6X   $��0��6h   $��30��6u   $��30��6�   
������ 
������ .��5+   e   添加更多项5-      5.      5/      �� 50      -   5        $��btnAddNewLine��50      $
��Left=�62   $��0��6M   $��0��6]   $��30��6j   $��30��6u   
������ 
������ ��6�   ��  �� Path$ AddNewRecordCommand���6�   �� $ AddedAmount�.��51      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6    52      53      �� 54      -   5        $��	btnDelete��54      $��1��6*   $��0��6:   $��30��6G   $��30��6S   
������ 
������ .��55      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   56      �� 57      -   5        $��btnCopy��57      $��2��6(   $��0��68   $��30��6E   $��30��6Q   
������ 
������ $��ApplicationCommands.Copy��58      ��59      ��  �� ElementName$ DataGrid_ManualBoard��.��5:      �� $-��'../../../Resources/Icon/Style1/copy.png��6   5;      �� 5<      -   5        $��btnPaste��5<      $��3��6)   $��0��69   $��30��6F   $��30��6R   
������ 
������ $��ApplicationCommands.Paste��5=      ��5>      �� $ DataGrid_ManualBoard��.��5@      �� $.��(../../../Resources/Icon/Style1/paste.png��6   5A      �� 5B      $��4��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5C      �� $-��'../../../Resources/Icon/Style1/save.png��6   5D      �� 5E      $��5��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5F      �� $3��-../../../Resources/Icon/Style1/c_download.png��6   5G      �� 5H      $��6��6   $��0��6)   $��30��66   $��30��6B   
������ 
������ .��5I      �� $1��+../../../Resources/Icon/Style1/c_upload.png��6   5J      5L      H   BSCA.WPF.ViewModelsRoot.ViewModels.DetailInfo.DetailInfoGridControl  5M      -   5        	  Name$	 DataGrid_ManualBoard��5M   *   )  #Microsoft.Windows.Controls.DataGrid
   AutoGenerateColumns
 .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�5O      
������    RowHeaderWidth$ 25Q�5Q         	RowHeight$ 40Q�5R         RowBackground
 �����   AlternatingRowBackground
 ����� �� AlternationCount$ 2��5U         SelectionUnit$ CellOrRowHeader=�5V      ��5W      �� $0 *ManualControlBoardInfoObservableCollection�  5X        
errorStyle �� Triggers P� Property P� Value �� RelativeSource��%�   &	       �� 5Z      " ��6/    5[      P� 5\       �@=�HasError . . �5]   "   ��  � ��
 �  ��6?   �� 5^   "    �@�ToolTip 6=   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5_      5a      5b         Columns 5c      3  -Microsoft.Windows.Controls.DataGridTextColumn  5d      /  )Microsoft.Windows.Controls.DataGridColumn   Width8  2Microsoft.Windows.Controls.DataGridLengthConverter$
 Auto 6,      Header$ ID��5e   (   4  .Microsoft.Windows.Controls.DataGridBoundColumn   ElementStyle# [  5g   (      Binding 5f   (   �� $ ID�5g   (     5h      $ * 6,   $ 编号��5i   (   # [  5k   (      EditingElementStyle# [ 5l   (    5j   (   �� $
 Code� �� ValidatesOnDataErrors . 5n        5o      $ * 6,   $ 	板卡号��5p   (   # [  5r   (   # [ 5s   ,    5q   (   �� $ BoardNo� . 5s   ,     5u      $ * 6,   $ 	手盘号��5v   (   # [  5x   (   # [ 5y   ,    5w   (   �� $ 
SubBoardNo� . 5y   ,     5{      $ * 6,   $ 	手键号��5|   (   # [  5~   (   # [ 5   ,    5}   (   �� $ KeyNo� . 5   ,     5�      $ * 6,   $ 	地编号��5�   (   # [  5�   (   # [ 5�   ,    5�   (   �� $ 
DeviceCode� . 5�   ,   5�      5�      :   4SCA.WPF.ViewsRoot.Views.CreateManualControlBoardView  5�   
   -   5          Name$ CreateManualControlBoard��5�   S   $��Center=�6u   $��Center=�6�    � DataContext 6-   �� $ CreateVM�y�6�   �� *)'Data.CreateManualControlBoardVisibility+ �� Source# [   �� Mode$  TwoWay=�5�      5�      