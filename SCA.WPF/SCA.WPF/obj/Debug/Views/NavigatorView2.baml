   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SCA.WPF.ViewModelsSCA.WPF.ViewModels  5      1clr-namespace:SCA.WPF.UtilitySCA.WPF.Utility  5      "    SCA.WPF.Views.NavigatorView2   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      2local clr-namespace:SCA.WPF.ViewModels     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      Bei9http://schemas.microsoft.com/expression/2010/interactions  5      +utilityclr-namespace:SCA.WPF.Utility  5        � 	Resources  5	      ,   &SCA.WPF.Utility.LevelToMarginconverter   LevelToMarginconverter  TreeViewItemFocusVisual �� Property �� Value �� StrokeDashArray J� Opacity  ExpandCollapseToggleStyle �� 
TargetType �� 
TargetType F�Name �� Triggers	 ]� 
Conditions
 �� Property �� Value �� 
TargetName P� Property P� Value  ModernTreeViewItem �� Path �� RelativeSource �� AncestorType �� Mode � RowDefinitions �� Padding �� 	Converter � ColumnDefinitions d�Name �� 	ClickMode d� 	IsChecked ��Name ��Name��%�  &	        &	      &	 �     &	 �    7  7   7    5
   
   6)   �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� ._�5      �� $��0,0,0,0q�6(   $��5��69   
���  ��$	 1 2R�6Z   $ 0Q�6p   
���  ��6|   5      5      5      5      �� 5   
   " d�62   .�5      ��  � |� .  6*   �� 5       � �� 5      �� 5      " d�6&   .R�5      �� $��12��6!   $��14��6,   ._�5      F� $ 
ExpandPath��6#   $��Right=�67   $��Center=�6S   
������ ���	#FF090A0A"������ �� ���j ��j р�  � 	5   C   5        5!      ]� 5"      	 5#   "   �� 5$   &   
 �@J�IsMouseOver . 6G   �� 5%   &   
 �@d�	IsChecked$ FalseY�6E   ./�5'   "   �� $ 
ExpandPath��6;    � �� �	#FF1BBBFA6S   5)      P� 5*       �@d�	IsChecked$
 TrueY�6;   . �5+   "   �� $ 
ExpandPath��69    � ��" ��@B ��� ���j ��- ���j ��� 	6Q   �� 5,   "   $ 
ExpandPath��69    � �� �	#FFE6E6E66Q   5-      ]� 5.      	 5/   "   �� 50   &   
 �@J�IsMouseOver . 6G   �� 51   &   
 �@d�	IsChecked$
 TrueY�6E   ./�53   "   �� $ 
ExpandPath��6;    � �� �	#FF1BBBFA6S   �� 54   "   $ 
ExpandPath��69    � �� �	#FF1BBBFA6Q   55      58      5:      5;      �� 5<   
   " Q�6+   .�5=      ��  � ��
 ���� 6+   �� 5>       � �� 6;   �� $  HorizontalContentAlignment� �� " ���� 5?       � �� 69   �� $ VerticalContentAlignment� �� " ���� 5@       � ��$ 1,0,0,0q�6(   �� 5A       � ��# � ��6+   �� 5C       �@Q�
IsExpanded 6+   �� *
IsExpanded+$ TwoWay=��� 5D       �@Q�
IsSelected 6+   �� *
IsSelected+$ TwoWay=��� 5E       � ��$ Normal"�6+   �� 5G       �@�FocusVisualStyle8   61   �� 5H       � �� 5I      �� 5J      " Q�6&   .R�5K      �  5L      �� 5M   "   $
��Auto �60   �� 5N   "   .+�5P      �� $��Bd��6%   #��z��6/   #��z��6Y   #��z��5Q      # z��6Q   ._�5S   "   � ��6'   �� *Level+8   5T   &   �� 5U   *   $
��auto �6;   �� 5V   *   .+�5X   &   d� $ Expander��63   $ Press=�6F   $
��Left=�6X   8��  5Y   -   �� $ 
IsExpanded� �� *TemplatedParent+�� 5Z   &   $ PART_Header��6X   $��1��67   $��8,0,0,0q�6G   $��Header��6m   #��z��5[   1   5\   #   5]      �� 5^      $ 	ItemsHost��6-   $��1��6@   5_       5`      P� 5a       �@Q�
IsExpanded .  . �5b   "   �� $ 	ItemsHost��6)    � y�$ 	Collapsed=�6V   5c      P� 5e       �@��HasItems .  . �5f   "   �� $ Expander��6)    � y�$ Hidden=�6U   5g      ]� 5h      	 5i   "   �� 5j   &   
 � �� .  6E   �� 5k   &   
 � ��$
 Auto��6A   ./�5m   "   �� $ PART_Header��6)    � ��$ 75��6V   5n      ]� 5o      	 5p   "   �� 5q   &   
 � �� .  6E   �� 5r   &   
 � ��$
 Auto��6B   ./�5t   "   �� $ PART_Header��6)    � ��$ 19��6W   5u      P� 5v       �@Q�
IsSelected . . �5w   "   �� $ Bd��6)   # � ��6O    � ���� 5x   "   # � ��6?    � ��5y      ]� 5z      	 5{   "   �� 5|   &   
 �@Q�
IsSelected . 6F   �� 5}   &   
 �@Q�IsSelectionActive .  6M   ./�5   "   �� $ Bd��6)   # � ��6O    � ���� 5�   "   # � ��6?    � ��5�      P� 5�       � {� .  . �5�   "   �� # � ��6?    � ��5�      5�      5�      5�      5�      .��5�      ]� .+�5�   
   c� ���	#FF3892C5$��40��6)   $	��Top=�65   .@�5�      ��  � ToolTip$ Add new proj��6   .��5�      �� $ ��..\images\CloseProject.jpg��6   5�      �� 5�      $
��Open��6   $ Open a  proj��6$   .��5�      �� $!��..\images\ExportToExcel.jpg��6   5�      �� 5�      $��Close��6   $ Close a proj��6%   .��5�      ��  �� Orientation$ 
Horizontal=�6   .+�5�      �� $��..\images\Merge.jpg��6   5�      5�      �� 5�      $ Open a  proj��6B   ��6   �� *ApplicationCommands.Copy+.��5�      �� $j��dE:\\Program\\4 Project\\NT8001SeriesControllerAssistant\\SCA.WPF\\SCA.WPF\\images\\AddController.jpg��6   5�      �� 5�      $
��Open��6   $ Open a  proj��6$   .��5�      �� $��..\images\DeviceType.jpg��6   5�      5�      R� 5�   
   #��[ 69   ��6   �� *
Projects+.  (System.Windows.Interactivity.Interaction   	Behaviors 5�      2   ,SCA.WPF.ViewModels.TreeViewClipboardBehavior  5�        5�       �� DataType)   #SCA.WPF.ViewModels.ProjectViewModel  �� ItemsSource,   &SCA.WPF.ViewModels.ControllerViewModel0   *SCA.WPF.ViewModels.ControllerNodeViewModel&    SCA.WPF.ViewModels.LoopViewModel��%k  (��       5�      *, +)(��      5�      *, +)(��     5�      *, +)(�� 
    5�      *, +)�� 5�      "  5�        5�      �� *
Children+.R�5�      �� $ 
Horizontal=�6!   .+�5�      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5�      ��6$   �� *ProjectName+5�      5�      �� 5�      "  5�        5�      �� *
Children+.R�5�      �� $ 
Horizontal=�6!   .+�5�      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5�      ��6$   �� *ControllerName+5�      5�      �� 5�      "  5�        5�      �� *
Children+.R�5�      �� $ 
Horizontal=�6!   .+�5�      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5�      ��6$   �� *ControllerNodeName+5�      5�      �� 5�      "  5�        5�      �� *
Children+.R�5�      �� $ 
Horizontal=�6!   .+�5�      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5�      ��6$   �� *
LoopName+5�      5�      5�      5�      5�      5�      