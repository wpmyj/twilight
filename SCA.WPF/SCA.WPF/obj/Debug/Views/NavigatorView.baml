   M S B A M L   `   `   `  ����B  >SCA.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SCA.WPF.ViewModelsSCA.WPF.ViewModels  5      !    SCA.WPF.Views.NavigatorView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      2local clr-namespace:SCA.WPF.ViewModels     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      Bei9http://schemas.microsoft.com/expression/2010/interactions  5      .��5      ]� .+�5	   
   c� ���	#FF3892C5$��40��6)   $	��Top=�65   .@�5
      ��   � ToolTip$  Add new proj��6   .��5      �� $ ��..\images\CloseProject.jpg��6   5      �� 5      $
��Open��6   $  Open a  proj��6$   .��5      �� $!��..\images\ExportToExcel.jpg��6   5      �� 5      $��Close��6   $  Close a proj��6%   .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��..\images\Merge.jpg��6   5      5      �� 5      $  Open a  proj��6B   ��6   �� *ApplicationCommands.Copy+.��5      �� $j��dE:\\Program\\4 Project\\NT8001SeriesControllerAssistant\\SCA.WPF\\SCA.WPF\\images\\AddController.jpg��6   5      �� 5      $
��Open��6   $  Open a  proj��6$   .��5      �� $��..\images\DeviceType.jpg��6   5      5      R� 5   
   ��6   �� *
Projects+.  (System.Windows.Interactivity.Interaction   	Behaviors 5       2   ,SCA.WPF.ViewModels.TreeViewClipboardBehavior  5!      ��5#      �� 5$       �� 
TargetType" Q�6   .�5%      ��  �� Property �@Q�
IsExpanded �� Value 6/   �� *
IsExpanded+ �� Mode$ TwoWay=��� 5&       �@Q�
IsSelected 6/   �� *
IsSelected+$ TwoWay=��� 5'       � ��$ Normal"�6/    �� Triggers 5(      P� 5)       P� Property �@Q�
IsSelected	 P� Value	 . . �5*      ��  � ��$
 Bold"�67   5+      5-      
 � 	Resources
 5/       �� DataType)   #SCA.WPF.ViewModels.ProjectViewModel �� ItemsSource,   &SCA.WPF.ViewModels.ControllerViewModel0   *SCA.WPF.ViewModels.ControllerNodeViewModel&    SCA.WPF.ViewModels.LoopViewModel��%k  (��       51      *, +)(��      59      *, +)(��     5A      *, +)(�� 
    5I      *, +)�� 50      "  51       52      �� *
Children+.R�53      �� $ 
Horizontal=�6!   .+�54      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 55      ��6$   �� *ProjectName+56      57      �� 58      "  59       5:      �� *
Children+.R�5;      �� $ 
Horizontal=�6!   .+�5<      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5=      ��6$   �� *ControllerName+5>      5?      �� 5@      "  5A       5B      �� *
Children+.R�5C      �� $ 
Horizontal=�6!   .+�5D      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5E      ��6$   �� *ControllerNodeName+5F      5G      �� 5H      "  5I       5J      �� *
Children+.R�5K      �� $ 
Horizontal=�6!   .+�5L      �� $��16��6    $��16��6+   $	��3,0q�67   $��..\Images\Controller.jpg��6D   �� 5M      ��6$   �� *
LoopName+5N      5O      5U      5V      5X      5Y      