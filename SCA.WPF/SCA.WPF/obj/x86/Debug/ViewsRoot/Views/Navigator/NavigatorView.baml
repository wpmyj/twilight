   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=nulli9clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.Navigator+SCA.WPF.ViewModelsRoot.ViewModels.Navigator  5      ?$clr-namespace:SCA.WPF.InfrastructureSCA.WPF.Infrastructure  5      5    /SCA.WPF.ViewsRoot.Views.Navigator.NavigatorView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Klocal9clr-namespace:SCA.WPF.ViewModelsRoot.ViewModels.Navigator     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      9Infrastructure$clr-namespace:SCA.WPF.Infrastructure  5      .��5      �� .+�5   
   � -   5          �Name$  EmptyContentTool��5   &   ���	#FF3892C5$��0,5,0,0q�6A   $
��Left=�6S   $��Stretch=�6n   $	��300��6�   $y�Visible=�6�    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $��32 �6#   �� 5      $��32 �6#   �� 5      $��32 �6#    � RowDefinitions 5      �� 5      $
��Auto �6    .+�5      �� $��0��6   $��0��6"   .��62   NEAT68   �� 5      -   5         ��Name$ btnAddProject��5      $��1��6-   $��0��6=   $��32��6J   $��32��6U   
������ 
������ .��5      �� $4��.../../../Resources/Icon/Style1/project-add.png��6   5      �� 5      -   5        $ btnOpenProject��5      $��2��6-   $��0��6=   $��32��6J   $��32��6U   
������ 
������ .��5      �� $5��/../../../Resources/Icon/Style1/project-open.png��6   5       �� 5"      -   5        $ btnCloseProject��5"      $��3��6.   $��0��6>   $��32��6K   $��32��6W   
������ 
������ .��5#      �� $7��1../../../Resources/Icon/Style1/project-delete.png��6   5$      5%      � 5&   
   -   5        $  ProjectTool��5&      $��0,5,0,0q�6%   $
��Left=�67   $��Stretch=�6R   $	��300��6n   $y�	Collapsed=�6z    5'      �� 5(      $
��Auto �6#   �� 5)      $
��Auto �6#   �� 5*      $
��Auto �6#   �� 5+      $
��Auto �6#   �� 5,      $
��Auto �6#   �� 5-      $
��Auto �6#    5/      �� 50      $
��Auto �6    .+�52      �� $��0��6   $��0��6"   .��62   工程66   �� 53      -   5        $' !btnCloseProjectInProjectToolStrip��53      $��1��6@   $��0��6P   $��32��6]   $��32��6i   
������ 
������ .��54      �� $7��1../../../Resources/Icon/Style1/project-delete.png��6   55      �� 57      -   5        $ btnExportToExcel��57      $��2��6/   $��0��6?   $��32��6L   $��32��6X   
������ 
������ .��58      �� $5��/../../../Resources/Icon/Style1/export-excel.png��6   59      �� 5;      -   5        $ btnMerge��5;      $��3��6'   $��0��67   $��32��6D   $��32��6P   
������ 
������ .��5<      �� $6��0../../../Resources/Icon/Style1/project-merge.png��6   5=      �� 5>      -	   5        $ btnAddController��5>      $��4��6/   $��0��6?   $��32��6L   $��32��6X   
������ 
������ .��5?      �� $7��1../../../Resources/Icon/Style1/controller-add.png��6   5@      �� 5B      -
   5        $ btnDeviceType��5B      $��5��6,   $��0��6<   $��32��6I   $��32��6U   
������ 
������ .��5C      �� $4��.../../../Resources/Icon/Style1/device-type.png��6   5D      5E      � 5F   
   -   5        $  ControllerTool��5F      $��0,5,0,0q�6(   $
��Left=�6:   $��Stretch=�6U   $	��300��6q   $y�	Collapsed=�6}    5G      �� 5H      $
��Auto �6#   �� 5I      $
��Auto �6#   �� 5J      $
��Auto �6#   �� 5K      $
��Auto �6#   �� 5L      $
��Auto �6#    5O      �� 5P      $
��Auto �6    .+�5R      �� -   5         ��Name$ NodeText��5R      $��0��6'   $��0��64   .��6D   	控制器6I   �� 5T      -   5        $ btnDeleteController��5T      $��1��62   $��0��6B   $��32��6O   $��32��6[   
������ 
������ .��5U      �� $:��4../../../Resources/Icon/Style1/controller-delete.png��6   5[      �� 5\      -   5        $ btnStartController��5\      $��2��61   $��0��6A   $��32��6N   $��32��6Z   
������ 
������ .��5]      �� $9��3../../../Resources/Icon/Style1/controller-start.png��6   5_      �� 5`      -   5        $ btnStopController��5`      $��3��60   $��0��6@   $��32��6M   $��32��6Y   
������ 
������ .��5a      �� $8��2../../../Resources/Icon/Style1/controller-stop.png��6   5b      �� 5c      -   5        $ btnSetMasterController��5c      $��4��65   $��0��6E   $��32��6R   $��32��6^   
������ 
������ .��5d      �� $>��8../../../Resources/Icon/Style1/controller-set-master.png��6   5e      5f      � 5g   
   -   5        $  	LoopsTool��5g      $��0,5,0,0q�6#   $
��Left=�65   $��Stretch=�6P   $	��300��6l   $y�	Collapsed=�6x    5h      �� 5i      $
��Auto �6#   �� 5j      $
��Auto �6#    5l      �� 5m      $
��Auto �6    .+�5o      �� $��0��6   $��0��6"   .��62   回路66   �� 5p      -   5        $ 
btnAddLoop��5p      $��1��6)   $��0��69   $��32��6F   $��32��6R   
������ 
������ .��5q      �� $1��+../../../Resources/Icon/Style1/loop-add.png��6   5r      5s      � 5t   
   -   5        $  SingleLoopTool��5t      $��0,5,0,0q�6(   $
��Left=�6:   $��Stretch=�6U   $	��300��6q   $y�	Collapsed=�6}    5u      �� 5v      $
��Auto �6#   �� 5w      $
��Auto �6#    5y      �� 5z      $
��Auto �6    .+�5|      �� $��0��6   $��0��6"   .��62   回路66   �� 5}      -   5        $ 
btnDelLoop��5}      $��1��6)   $��0��69   $��32��6F   $��32��6R   
������ 
������ .��5~      �� $4��.../../../Resources/Icon/Style1/loop-delete.png��6   5      5�      � 5�   
   -   5        $  StandardLinkageTool��5�      $��0,5,0,0q�6-   $
��Left=�6?   $��Stretch=�6Z   $	��300��6v   $y�	Collapsed=�6�    5�      �� 5�      $
��Auto �6#    5�      �� 5�      $
��Auto �6    .+�5�      �� $��0��6   $��0��6"   .��62   标准组态68   5�      � 5�   
   -   5        $  MixedLinkageTool��5�      $��0,5,0,0q�6*   $
��Left=�6<   $��Stretch=�6W   $	��300��6s   $y�	Collapsed=�6    5�      �� 5�      $
��Auto �6#    5�      �� 5�      $
��Auto �6    .+�5�      �� $��0��6   $��0��6"   .��62   混合组态68   5�      � 5�   
   -   5        $  GeneralLinkageTool��5�      $��0,5,0,0q�6,   $
��Left=�6>   $��Stretch=�6Y   $	��300��6u   $y�	Collapsed=�6�    5�      �� 5�      $
��Auto �6#    5�      �� 5�      $
��Auto �6    .+�5�      �� $��0��6   $��0��6"   .��62   通用组态68   5�      � 5�   
   -   5        $  ManualControlBoardTool��5�      $��0,5,0,0q�60   $
��Left=�6B   $��Stretch=�6]   $	��300��6y   $y�	Collapsed=�6�    5�      �� 5�      $
��Auto �6#    5�      �� 5�      $
��Auto �6    .+�5�      �� $��0��6   $��0��6"   .��62   网络手动盘69   5�      � 5�   
    � 	Resources 5�      O   ISCA.WPF.ViewModelsRoot.ViewModels.Navigator.NavigatorDataTemplateSelector !  hierarchyDataTemplateSelectorP   JSCA.WPF.ViewModelsRoot.ViewModels.Navigator.PrimaryControllerColorSelector  primaryColorSelector��%:   &	        &	        5�      66     5�      67   5�       5�      �� 5�      $��* �6    6-   .+�5�      R� -   5        $��HierarchyTreeView��5�      #��[  5�      ��5�      �� *
Projects+��5�      �� 5�       �� 
TargetType" Q�6   .�5�      ��  �� Property �@Q�
IsExpanded �� Value 67   �� *
IsExpanded+�� 5�       �@Q�
IsSelected 67   �� *
IsSelected+�� 5�       � ��$ Normal"�67   	 �� Triggers	 5�      P� 5�      
 P� Property
 �@Q�
IsSelected P� Value . . �5�   "   ��  � ��$
 Bold"�6?   5�      5�       5�        ProjectTemplate �� DataTypeH   BSCA.WPF.ViewModelsRoot.ViewModels.Navigator.NavigatorItemViewModel �� ItemsSource �� Path �� Orientation J� InputBindings d� MouseAction �� Command �� RelativeSource �� AncestorType  ControllerTemplate �� 	Converter  ControllerNodeTemplate ��Name  LoopTemplate��%�  &	       &	 �    7  &	 �    &	 �    �� 5�      "  6G    6x   �� $ Children�.R�5�      �� $ 
Horizontal=�6%   .+�5�      �� $��15��6P   ��6$   �� $ DataItem.IconInTree�6^   �� 5�      $��0 0 5 0q�6L   ��6(   �� $ DataItem.Name� 5�   "   d� 5�   &   $ 	LeftClicke�6�    63   ��  �� *FindAncestor+" �$! NavigateToDeviceInfoCommand�6�   5�      5�      5�      �� 5�      "  6J    6{   �� $ Children�.R�5�      �� $ 
Horizontal=�6%   .+�5�      �� $��15��6P   ��6$   �� $ DataItem.IconInTree�6^   �� 5�      ��6(   �� $ DataItem.Name���6L   �� $ DataItem.PrimaryFlag�8   5�      5�      5�      �� 5�      "  6N    6   �� $ Children�.R�5�      �� $ 	NodeStack��6>   $ 
Horizontal=�6%   .+�5�      �� $��15��6P   ��6$   �� $ DataItem.IconInTree�6^   �� 5�      ��6(   �� $ DataItem.Name�5�      5�      5�      �� 5�      "  6D   .R�5�      �� $ 
Horizontal=�6%   .+�5�      �� $��15��6P   ��6$   �� $ DataItem.IconInTree�6^   �� 5�      ��6(   �� $ DataItem.Code�5�      5�      5�      5�      5�      5�      5�      5�      