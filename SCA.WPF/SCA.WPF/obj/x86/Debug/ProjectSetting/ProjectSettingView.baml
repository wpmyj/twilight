   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=null?$clr-namespace:SCA.WPF.ProjectSettingSCA.WPF.ProjectSetting  5      0    *SCA.WPF.ViewsRoot.Views.ProjectSettingView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3vm$clr-namespace:SCA.WPF.ProjectSetting     5        � 	Resources  5	         ControllerNameEnumDS S� 
ObjectType4   .SCA.WPF.ProjectSetting.ProjectSettingViewModel S� 
MethodName 	 Label �� 
TargetType �� Property �� Value  projectSettingVM��%�   &	        &	 ;     &	 �     S� 5   
   "  6:   $ GetControllers��6l   5      �� 5   
   " ��6   .�5      ��  � ��
 �   �6+   �� 5       � ��$ Right=�64   5        5   
   6%   5       � DataContext 5      �� 5   
    �� Source# [ 6   .��5      ��   WindowBackgroundBrush#��[ 6   .+�5   
   �� -   5         ��Name$ Header��5        BackgroundBrush#���  6!     BorderBrush#���  6P   $��1,1,1,0q�6|   	 �� CornerRadius$	 5,5,0,0��6�   ._�5      �� -   5        
 ��Name$
 HeaderTextBlock��5   �   $��项目设置��6   $
��Wrap=�6$   $��	15,5,10,5q�68     HeaderFontColor#���  6K   $��18(�6z   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   6�   5      � 5   
   -   5         �Name$ AddControllerGrid��5      $��0,0,0,0q�6+    � ColumnDefinitions 5      �� 5      $��4* �6#   �� 5      $��6* �6#    � RowDefinitions 5!      �� 5"      $
��Auto �6    �� 5#      $
��Auto �6    �� 5$      $
��Auto �6    .+�5&      �� $��0��6   $��0��6!   $!��_自动保存时间(分钟)��61   #��[ 6�    �� Target 6G   ��  �� ElementName$&  AutoSaveTimeIntervalInputTextBox�� �� Mode$ OneWay=�6�   �� 5'      -   5         ��Name$&  AutoSaveTimeIntervalInputTextBox��5'   k   $��0��6   $��1��6#    �� TextWrapping$
 Wrap=�6W   $
��Left=�6�   $	��180��6�   $��5,0,0,0q�6�   $	��100��6�   ��63   ��  �� Path$ SaveInterval�6�   �� 5(      $��1��6   $��0��6!   $��_主控制器名称��61   #��[ 6�    6C   �� $ ControllerNameComboBox��$ OneWay=�6�   �� 5*      -   5         ��Name$ ControllerNameComboBox��5-      $��1��5*      $��1��6$   $ �� IsSynchronizedWithCurrentItem$
 TrueY�64    �� SelectedValuePath$	 Key��5+       �� DisplayMemberPath$ Value��6/   $	��120��5.      $
��Left=�6$   $��5,0,0,0q�6?    �� SelectedValue 5+   J   �� $ 
SelectedID�# [ $ OneWay=���5,      �� # [  5.   ?   �� 50      $��2��6   $��2��6&   $��15,15,15,15q�6:    �� Orientation$ 
Horizontal=�6O   $��Center=�6h   $��Stretch=�6�   .+�51      �� -   5         ��Name$ 	AddButton��51   '   $��_确定��6   $��Bottom=�6:    �� 	IsDefault . $
��Left=�6f   $	��140��6�   $��64��6�   6�   �� 52      -   5        $ CloseButton��52   '   $��_取消��6   $��Bottom=�6<    �� IsCancel . $
��Left=�6g   $	��150��6�   $��10,0,0,0q�6�   $��60��6�   6�   53      54      �� 55   
   -   5        $ Footer��55   L   #���  6   $��35��6@   #���  6\   $��1,0,1,1q�6�   $	 0,0,5,5��6�   56      57      