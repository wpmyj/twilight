   M S B A M L   `   `   `  ���� B  >SCA.WPF, Version=0.0.0.4, Culture=neutral, PublicKeyToken=null?$clr-namespace:SCA.WPF.InfrastructureSCA.WPF.Infrastructure  C&clr-namespace:SCA.WPF.CreateControllerSCA.WPF.CreateController  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 2    ,SCA.WPF.ViewsRoot.Views.ImportControllerView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ?infrastructure$clr-namespace:SCA.WPF.Infrastructure     5VM&clr-namespace:SCA.WPF.CreateController     ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity       � 	Resources   	  Label �� 
TargetType �� Property �� Value)   #SCA.WPF.Infrastructure.BindingProxy 	 proxy   Data  ControllerTypeEnumDS S� 
ObjectType8   2SCA.WPF.CreateController.CreateControllerViewModel S� 
MethodName  SerialPortNumberEnumDS��%�   &	        &	 =     &	 K     &	 m     �� " ��.���  � ��
 �   ���  � ��$
 Left=�   �� S� "  $ GetControllerType��S� "  $ GetSerialPortNumber��.����   WindowBackgroundBrush#��[ .+��� -    ��Name$ Header��  BackgroundBrush#���    BorderBrush#���  $��1,1,1,0q� �� CornerRadius$ 5,5,0,0��._��� -   	 ��Name$	 HeaderTextBlock��$��导入数据��$
��Wrap=�$��	15,5,10,5q�  HeaderFontColor#���  $��18(�$��Center=�$��Center=�$
��Bold"�� -   
 �Name$
 ImportControllerDataGrid��$��-1,0,1,0q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0�� �� Orientation$ 
Horizontal=�.+�	� -    	�Name$ ExcelFormat�� 	� 	GroupName$ FileFormatType��$��Center=�$
��Left=� d� 	IsChecked �� *ExcelFormatState+ �� Mode$ TwoWay=�.��EXCEL格式	� -   $ 	MDBFormat��$ FileFormatType��$��Center=�$
��Left=� �� *MDBFormatState+$ TwoWay=�.��	MDB格式	� -   $ NTFormat��$ FileFormatType��$��Center=�$
��Left=� �� *NTFormatState+$ TwoWay=�.��
NT格式� -   $
 ExcelFormatSettingContent��$��0��$��1��$��2��y��� **(Data.ExcelFormatSettingContentVisibility+ �� Source# [  � ColumnDefinitions �� $	��19* ��� $	��41* ��� $	��90* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��3��$��0��$��0��$ 
Horizontal=�.+�	� -   $ DefaultTemplate��$ SelectedTemplate��$	��Top=�$
��Left=� �� *DefaultTemplateState+$ TwoWay=�.��默认模板	� -	   $ CustomizedTemplate��$ SelectedTemplate��$��Center=�$
��Left=� �� *CustomizedTemplateState+$ TwoWay=�.��自定义模板�� $��1��$��0��$��_控制器类型��#��[  $��2���� $��0,1,0,0q�$��1��$��2��._�� $��
10,5,10,10q�$��Stretch=�$��Stretch=� �� $��20 ��� $	��100 � �� $
��Auto ��� $
��Auto �.+��� -
    ��Name$ ControllerTypeComboBox��$ �� IsSynchronizedWithCurrentItem$ FalseY�$	��120��$��1��$
��Left=�$��2��$��0,0,0,-0.163q����� # [  �� SelectedItem ��  �� Path$ SelectedControllerType�$ TwoWay=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *ControllerTypeChangedCommand+   CommandParameter ��  �� ElementName$ ControllerTypeComboBox��$ SelectedItem��� $��2��$��0��$��3��y��� *42Data.ExcelFormatSettingContentCustomizedVisibility+# [ .+��� -    ��Name$ ControllerDefinitionGroup��$��控制器定义��$��0,3,0,0q�.��� -   $
 ControllerDefinition�� �� $��4* ��� $��6* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��控制器名称��#��[  �� -    ��Name$  ControllerNameInputTextBox��$��0��$��1�� �� TextWrapping$
 Wrap=�$
��Left=�$	��160��$	��100��  InputFontColor#���  $��27��$��Bottom=����� $ ControllerName�$ TwoWay=��� $��2��$��0��$��_控制器机号��#��[    �� Target  �� $&  ControllerMachineNumInputTextBox��$ OneWay=��� -   $&  ControllerMachineNumInputTextBox��$��2��$��1��$
 Wrap=�$
��Left=�$	��160��#���  $	��100������ $ MachineNumber�$ TwoWay=��� $��3��$��0��$��_器件长度��#��[  �� -   $ DeviceCodeLengthComboBox��$	��120��$��3��$��1��$
��Left=�$��5,0,0,0q�$ FalseY����� $ DeviceCodeLength� �� $ SelectedDeviceCodeLength�$ TwoWay=��� $��4��$��0��$��
_串口号��#��[  �� $��0,1,0,0q�$��4��$��1��._�� $��
10,5,10,10q�$��Stretch=�$��Stretch=� �� $
��Auto � �� $
��Auto ��� $
��Auto �.+��� -   $ SerialPortNumberComboBox��$ FalseY�$	��120��$��1��$
��Left=�$��-4,0,0,0q����� # [  �� $ SerialPortNumber�$ TwoWay=��� -   $ LoopDefinitionGroup��$��回路定义��$��0,3,0,0q�.��� -   $
 LoopDefinition�� �� $��4* ��� $��6* � �� �� .+��� $��0��$��0��$��回路数量��#��[  �� -   $ LoopAmountInputTextBox��$��0��$��1��$
 Wrap=�$
��Left=�$	��160��$	��100��#���  ���� $ 
LoopAmount�$ TwoWay=��� $��1��$��0��$��回路分组��#��[  �� -   $ LoopGroupInputTextBox��$��1��$��1��$
 Wrap=�$
��Left=�$	��160��$	��100��#���  ���� $ LoopGroupAmount�$ TwoWay=��� -   $ OtherDefinitionGroup��$��其它��$��0,3,0,0q�.���� $ 
Horizontal=�.+��� $��标准组态�� �� $ StandardLinkageFlag��� $��混合组态�� �� $ MixedLinkageFlag��� $��通用组态�� �� $ GeneralLinkageFlag��� $��网络手动盘�� �� $ ManualControlBoardFlag�� $��5��$��0��$��3�� �� �� �� $
��20px ��� ��  �� .+��� $��0��$��0��$��文件位置��
���   ��� -   $ 	 ImportFilePathInputTextBox��$��0��$��1��$
��Wrap=�$
��Left=�$	��180��$��5,0,0,0q����� $ ExcelFilePath�$ TwoWay=��� -   ! ��Name$%! SelectFolderForSourceFileButton��$��0��$��2��$
��20px������ $ SelectExcelPathCommand�.��...�� -   $! ImportExcelButton��$��0��$��3������ $  ImportDataFromExcelCommand�.��读取�� -   $!! DownloadExcelTemplateButton��$��0��$��4������ $" DownloadExcelTemplateCommand�.��下载模板�� $��0,1,0,0q�$��5��$��0��$��2��._�� $��
10,5,10,10q�$��Center=�$��Stretch=� �� $
��Auto � �� $
��Auto �.+��� -   $! CloseButton��$��关闭��$��0��$��0��$��5,0,0,0q�$��Center=�$	��105��$��21��$��10(����� $ CloseViewCommand��� -   $ Footer��#���  $��35��#���  $��1,0,1,1q�$ 0,0,5,5��