   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nullU/clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels!SCA.WPF.ViewModelsRoot.ViewModels  5      )    #SCA.WPF.ViewsRoot.Views.WelcomeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >vm/clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels     5        � 	Resources  5	      8   2SCA.WPF.ViewModelsRoot.ViewModels.WelcomeViewModel   	welcomeDC  WelcomeButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� CornerRadius �� Padding J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName��%�  &	        &	        5
   
   6   �� 5   
   " ��6+   .�5      ��  � �� �#FFFFFF6+   �� 5       � ��$
 Auto��6&   �� 5       � ��$ 16(�6)   �� 5       � ��$ 仿宋)�6+   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ bd��6!   $ 3,3,3,3��6-   $ 5,0,0,0q�6D   ._�5      �� # z 6/   #��z��6k   ��. $��5,1,0,1q�6�   5      	 5      P� 5      
 �@J�IsKeyboardFocused . 6C   P� 5      
 �@J�IsMouseOver . . �5   "   ��  �@�Cursor$
 Hand��6;   �� 5   "   $ bd��6?    � �� �	#FF29367B6O   5      5      5       5!      5"       � DataContext 5#      �� 5$   
    �� Source# [  6   .��5&      �� .+�5)   
   �� -   5        $ Header��5)   =   $	��300��6   $ 5,0,5,0q�6    J� Opacity$	 0.8Q�6/   $��1,1,1,0q�6N   $ 5,5,0,0��6h   $��Center=�6     BackgroundBrush#���  6�   ._�5*      � .+�5+      ��   WelcomeHeaderBg#���  6   $��69��6F   5,      5-      �� 50   
   $��1,1,1,1q�6   ._�51      � -   5         �Name$ ContentGrid��51   $   $��0,0,0,0q�6     InputBackgroundBrush#���  6:    � RowDefinitions 53      �� 54      $
��Auto �6$   �� 55      $��* �6$   .+�57      �� $��Stretch=�6   $��	5,20,5,10q�6;   .+�58      �� -   5         ��Name$ 	NewButton��58   .   $��0,0,0,5q�6   $��新建工程��6A    �� 	IsDefault . $��Stretch=�6y   $
��Auto��6�   #���  6�   �� 59      -   5        $ 
OpenButton��59   .   $��0,0,0,5q�6   $��打开工程��6B   $��Stretch=�6k   $
��Auto��6�   #���  6�   �� 5:      -   5        $ ImportButton��5:   .   $��0,0,0,5q�6   $��导入工程��6D   $��Stretch=�6o   $
��Auto��6�   #���  6�   5;      �� 5=      {�.  $��Stretch=�61   $��Bottom=�6O   $��1��6j   ���	#FF3D4976$��2,0,2,0q�6�   �� 5?      $��最近打开文件��6   $
��Left=�6)   $	��Top=�6D   $��1��6\   $��10,0,0,0q�6i   ���	#FFB5C8D86{   �� 5A      -   5         ��Name$ RecentFilesStackPanel��5A   d   $��Stretch=�6   $��Stretch=�6;   $��1��6W   $��5,30.87,5,10q�6�   5C      5D      �� 5G   
   -   5        $ Footer��5G      $��35��6   $	 0.8Q�6.   $��1,0,1,1q�6<   $ 0,0,5,5��6V   #���  6m   ._�5H      �� -   5         ��Name$ VersionLabel��5H      $��10,0,0,0q�6*   ���	#FFB5C8D8$��软件版本 ��6S   5I      5K      5M      