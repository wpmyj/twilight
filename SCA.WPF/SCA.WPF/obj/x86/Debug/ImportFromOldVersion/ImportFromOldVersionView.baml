   M S B A M L   `   `   `  ����  SCA.WPF6    0SCA.WPF.ViewsRoot.Views.ImportFromOldVersionView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .��5      ��    WindowBackgroundBrush#��[  6   .+�5
   
   �� -   5          ��Name$  Header��5
        BackgroundBrush#���  6"     BorderBrush#���  6Q   $��1,1,1,0q�6}    �� CornerRadius$ 5,5,0,0��6�   ._�5      �� -   5         ��Name$ HeaderTextBlock��5   �   $��V2.0版本数据导入��6   $
��Wrap=�6+   $��	15,5,10,5q�6?     HeaderFontColor#���  6R   $��18(�6�   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   6�   5      �� 5   
   $��1,1,1,1q�6   ._�5      � -   5         �Name$ ContentGrid��5   $   $��0,0,0,0q�6    � ColumnDefinitions 5      �� 5      $��* �6'    � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   .+�5      � $��1��6   $��10,0,0,0q�6$    5      �� 5      $	��30* �6+   �� 5      $	��56* �6+   �� 5      $	��14* �6+    5      �� 5       $
��Auto �6(   �� 5!      $
��Auto �6(   �� 5"      $
��Auto �6(   .+�5%      �� $��0��6   $��0��6)   $��_项目名称��69   
���   � �� Target 6I   ��  �� ElementName$ ProjectNameInputTextBox�� �� Mode$ OneWay=�6�   �� 5&      -   5        	 ��Name$	 ProjectNameInputTextBox��5&   P   $��0��6   $��1��6+   
 �� TextWrapping$

 Wrap=�6<   $
��Left=�6q   $	��180��6�   $��5,0,0,0q�6�   $	��100��6�   �� 5(      $��1��6   $��0��6)   $��导入文件路径��69   
���   � 6J   �� $  ImportFilePathInputTextBox��$ OneWay=�6�   �� 5)      -   5        $ 	 ImportFilePathInputTextBox��5)   O   $��1��6   $��1��6+   $

 Wrap=�6;   $
��Left=�6s   $	��180��6�   $��5,0,0,0q�6�   $	��120��6�   �� 5*      -   5         ��Name$% SelectFolderForSourceFileButton��5*      $��1��6G   $��3��6T   .��6�   ...6�   �� 5,      $��2��6   $��0��6)   $��文件存储路径��69   
���   � 6J   �� $ SaveFilePathInputTextBox��$ OneWay=�6�   �� 5-      -   5        $	 SaveFilePathInputTextBox��5-   O   $��2��6   $��1��6+   $

 Wrap=�6;   $
��Left=�6q   $	��180��6�   $��5,0,0,0q�6�   $	��120��6�   �� 5.      -   5        $# SelectFolderForSavePathButton��5.      $��2��6E   $��3��6R   .��6�   ...6�   5/      �� 51      $��2��6   $��3��6*   $��15,15,15,15q�6>    �� Orientation$ 
Horizontal=�6S   $��Center=�6l   $��Stretch=�6�   .+�52      �� -	   5        $ ConfirmButton��52   +   $��_确定��6   $��Bottom=�6B    �� 	IsDefault . $
��Left=�6n   $	��140��6�   $��64��6�   6�   �� 53      -
   5        $ CloseButton��53   +   $��_取消��6   $��Bottom=�6@    �� IsCancel . $
��Left=�6k   $	��150��6�   $��10,0,0,0q�6�   $��60��6�   54      55      56      �� 59   
   -   5        $  Footer��59   L   #���  6   $��35��6@   #���  6\   $��1,0,1,1q�6�   $ 0,0,5,5��6�   5;      5<      