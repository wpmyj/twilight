﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using SCA.WPF.ViewModelsRoot.ViewModels;
using SCA.BusinessLib.BusinessLogic;
using SCA.BusinessLib.Controller;
using SCA.Model;
using SCA.WPF.Infrastructure;
using Ookii.Dialogs.Wpf;

namespace SCA.WPF
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        #region Routed Commands
        public static readonly RoutedCommand CreateControllerCommand = new RoutedCommand("CreateController", typeof(MainWindow));

        #endregion
        MainWindowViewModel vm = new MainWindowViewModel();
        //有时间时，将此逻辑移至MainWindowViewModel中
        StatusBarViewModel _statusBarVM = new StatusBarViewModel();
        
        public MainWindow()
        {
            InitializeComponent();
            ShowWelcomeScreen();            
            this.DataContext = vm;
            EventMediator.Register("UploadedFinished", ControllerInfoUploadedFinished);
            EventMediator.Register("UpdateProgressBarStatusEvent", UpdateProgressBarStatus);
            EventMediator.Register("DisplayTheOpenedProject", DisplayTheOpenedProject);
            EventMediator.Register("RefreshNavigator", RefreshNavigator);
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            //this.Left = System.Windows.SystemParameters.WorkArea.Width;// -this.Width;
            //this.Top = System.Windows.SystemParameters.WorkArea.Height;// -this.Height;
        
         
        }

        private void ShowWelcomeScreen()
        {
           //  HideDetailsPane();
          // HideNewUserControl();
             DetailsPane.Visibility = Visibility.Hidden;
             ProjectUserControl.Visibility = Visibility.Collapsed;
             WelcomeUserControl.Visibility = Visibility.Visible;
        }
        #region 首页面处理事件
        private void WelcomeUserControl_NewButtonClick(object sender, RoutedEventArgs e)
        {
            //NewFamily(sender, e);, RoutedEventArgs e
            this.WelcomeUserControl.Visibility = Visibility.Collapsed;
            this.ProjectUserControl.Visibility = Visibility.Visible;
        }
        private void WelcomeUserControl_OpenButtonClick(object sender, RoutedEventArgs e)
        {
   
            //this.FilePathInputTextBox.Text = dialog.SelectedPath;
        }
        private void WelcomeUserControl_ImportButtonClick(object sender, RoutedEventArgs e)
        {
            //NewFamily(sender, e);, RoutedEventArgs e
            this.WelcomeUserControl.Visibility = Visibility.Collapsed;
            this.ImportFromOldVersionUserControl.Visibility = Visibility.Visible;
        }
        #endregion
        private void ProjectUserControl_AddButtonClick(object sender, RoutedEventArgs e)
        {
            //NewFamily(sender, e);, RoutedEventArgs e
            List<SCA.Model.ProjectModel> lstProject=new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);            
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;            
            Navigator.DataContext = vm.NavigatingViewModel;
            
            this.ProjectUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
        }
        private void ProjectUserControl_CloseButtonClick(object sender, RoutedEventArgs e)
        {
            //NewFamily(sender, e);, RoutedEventArgs e           
            SCA.BusinessLib.ProjectManager.GetInstance.CloseProject();
            vm.CloseNavigatingViewModel();
            this.DataContext = vm;
            Navigator.DataContext = vm.NavigatingViewModel;
            this.DataContext = vm;
            this.ProjectUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
            
        }
        //[System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1031:DoNotCatchGeneralExceptionTypes")]
        private void CreateControllerUserControl_AddButtonClick(object sender, RoutedEventArgs e)
        {
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;
            Navigator.DataContext = vm.NavigatingViewModel;

            CreateControllerUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
        }
        private void ImportFromOldVersionUserControl_ConfirmButtonClick(object sender,RoutedEventArgs e)
        {

            RefreshNavigator();
            ImportFromOldVersionUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
        }

        private void DisplayTheOpenedProject(object args)
        {
            RefreshNavigator();
            this.WelcomeUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
            this.Navigator.Visibility = Visibility.Visible;
        }
        private void RefreshNavigator()
        {
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;
            Navigator.DataContext = vm.NavigatingViewModel;            
            
        }
        private void CreateControllerUserControl_CancelButtonClick(object sender, RoutedEventArgs e)
        {

            CreateControllerUserControl.Visibility = Visibility.Collapsed;
//            CreateControllerUserControl.InitializeComponent();
            this.DetailsPane.Visibility = Visibility.Visible;
        }
        #region 菜单事件处理程序 
        private void MenuUserController_CreateControllerClick(object sender, RoutedEventArgs e)
        {
            this.CreateControllerUserControl.Visibility = Visibility.Visible;
        }
        private void MenuUserController_CreateLoopClick(object sender, RoutedEventArgs e)
        {
            
            SCA.WPF.CreateLoop.CreateLoopsViewModel vm=new CreateLoop.CreateLoopsViewModel();

            var createLoopsUI = new SCA.WPF.ViewsRoot.Views.CreateLoopsView();
            
            createLoopsUI.Name = "CreateLoopUserControl";
            createLoopsUI.HorizontalAlignment = HorizontalAlignment.Center;
            createLoopsUI.VerticalAlignment = VerticalAlignment.Center;
            createLoopsUI.AddButtonClick += CreateLoopUserControl_AddButtonClick;
            createLoopsUI.CancelButtonClick += CreateLoopUserControl_CancelButtonClick;
            
            object o = e.OriginalSource;
            if (o.GetType().Name!="ControllerModel")//此对象如果不是ControllerModel对象，则为从菜单中调用,否则为从工具栏中调用
            {                               
                vm.SetController(null);
                vm.SetLoopsAmountBySpecifiedController();
            }
            else
            {
                vm.SetController((ControllerModel)o);
                vm.SetLoopsAmountBySpecifiedController();
            }

            //if(o==SCA.WPF.ViewsRoot.Views.CreateLoopsView)
            //{
            //    case System.TypeCode.GetType((SCA.WPF.ViewsRoot.Views.CreateLoopsView)):
            //        break;
            //    case System.TypeCode.GetType(SCA.WPF.ViewsRoot.Views.Navigator.NavigatorView):
            //        break;
            // }
            
            createLoopsUI.DataContext = vm;

            Border loopUCBorder = new Border();
            //myBorder1.Height =;
            //myBorder1.
            loopUCBorder.BorderBrush = Brushes.SteelBlue;
            loopUCBorder.BorderThickness = new Thickness(0, 0, 1, 0);
            //DockPanel.SetDock(projectSettingUCBorder, Dock.Top);
            StackPanel.SetFlowDirection(loopUCBorder, System.Windows.FlowDirection.LeftToRight);
            loopUCBorder.Child = createLoopsUI;
            //((DockPanel)LeftContainer).SetDock(myBorder1, Dock.Top);            
            CreateViewArea.Children.Add(loopUCBorder);
            CreateViewArea.Visibility = Visibility.Visible;
        }
        private void MenuUserController_ProjectSettingClick(object sender, RoutedEventArgs e)
        {
            

            var projectSettingUI = new SCA.WPF.ViewsRoot.Views.ProjectSettingView();
            projectSettingUI.Name = "ProjectSettingUserControl";
            projectSettingUI.HorizontalAlignment = HorizontalAlignment.Center;
            projectSettingUI.VerticalAlignment = VerticalAlignment.Center;
            projectSettingUI.ConfirmButtonClick += ProjectSettingUserControl_ConfirmButtonClick;
            projectSettingUI.CancelButtonClick += ProjectSettingUserControl_CancelButtonClick;
            Border projectSettingUCBorder = new Border();       
            projectSettingUCBorder.BorderBrush = Brushes.SteelBlue;
            projectSettingUCBorder.BorderThickness = new Thickness(0, 0, 1, 0);
            //DockPanel.SetDock(projectSettingUCBorder, Dock.Top);
            StackPanel.SetFlowDirection(projectSettingUCBorder, System.Windows.FlowDirection.LeftToRight);
            projectSettingUCBorder.Child = projectSettingUI;
            //((DockPanel)LeftContainer).SetDock(myBorder1, Dock.Top);            
            CreateViewArea.Children.Add(projectSettingUCBorder);
            CreateViewArea.Visibility = Visibility.Visible;    
            
        }
        /// <summary>
        /// 菜单->创建项目
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MenuUserController_CreateProjectClick(object sender, RoutedEventArgs e)
        {
            this.ProjectUserControl.Visibility = Visibility.Visible;     
        }

        private void MenuUserController_EditLoopsClick(object sender, RoutedEventArgs e)
        {
            var someUI = new SCA.WPF.ViewsRoot.Views.EditLoopsView();
            someUI.Name = "EditLoopsUserControl";
            someUI.HorizontalAlignment = HorizontalAlignment.Center;
            someUI.VerticalAlignment = VerticalAlignment.Center;
            
            //someUI.AddButtonClick += CreateLoopUserControl_AddButtonClick;
            
            someUI.CloseButtonClick += EditLoopsUserControl_CloseButtonClick;
            Border loopUCBorder = new Border();
            //myBorder1.Height =;
            //myBorder1.
            loopUCBorder.BorderBrush = Brushes.SteelBlue;
            loopUCBorder.BorderThickness = new Thickness(0, 0, 1, 0);
            //DockPanel.SetDock(projectSettingUCBorder, Dock.Top);
            StackPanel.SetFlowDirection(loopUCBorder, System.Windows.FlowDirection.LeftToRight);
            loopUCBorder.Child = someUI;
            //((DockPanel)LeftContainer).SetDock(myBorder1, Dock.Top);            
            CreateViewArea.Children.Add(loopUCBorder);
            CreateViewArea.Visibility = Visibility.Visible;
        }
        #endregion
        private void CreateLoopUserControl_AddButtonClick(object sender, RoutedEventArgs e)
        {
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;
            Navigator.DataContext = vm.NavigatingViewModel;
            CreateControllerUserControl.Visibility = Visibility.Collapsed;
            CreateViewArea.Visibility = Visibility.Collapsed;
           // CreateLoopUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
            CreateViewArea.Children.Clear();
        }
        private void ProjectSettingUserControl_ConfirmButtonClick(object sender, RoutedEventArgs e)
        { 
            CreateControllerUserControl.Visibility = Visibility.Collapsed;
            CreateViewArea.Visibility = Visibility.Collapsed;
            // CreateLoopUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
            CreateViewArea.Children.Clear();
            RefreshNavigator();            
        }
        private void CreateLoopUserControl_CancelButtonClick(object sender, RoutedEventArgs e)
        {            
            CreateViewArea.Children.Clear();
            CreateViewArea.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
        }
        private void ProjectSettingUserControl_CancelButtonClick(object sender, RoutedEventArgs e)
        {           
            
            CreateViewArea.Children.Clear();
            CreateControllerUserControl.Visibility = Visibility.Collapsed;
            CreateViewArea.Visibility = Visibility.Collapsed;
            // CreateLoopUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
        }
        private void EditLoopsUserControl_CloseButtonClick(object sender, RoutedEventArgs e)
        {            
            CreateViewArea.Visibility = Visibility.Collapsed;         
            this.DetailsPane.Visibility = Visibility.Visible;            
            CreateViewArea.Children.Clear();
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;
            Navigator.DataContext = vm.NavigatingViewModel;
            this.DataContext = vm;
        }

#region 注册至全局应用的方法
        /// <summary>
        /// 控制器信息上传完成        
        /// </summary>
        /// <param name="args"></param>
        private void ControllerInfoUploadedFinished(object args)
        {   
            //由于控制器被要回，此方法未测试完成
            ProjectModel p = SCA.BusinessLib.ProjectManager.GetInstance.Project;            
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(p);
            vm.SetNavigatingViewModel(lstProject);           
            Dispatcher.Invoke((Action)(() =>{
                Navigator.DataContext = vm.NavigatingViewModel;            
            }));

            //更新状态栏信息
            //StatusBarViewModel _statusBarViewModel = new StatusBarViewModel();
            _statusBarVM.IsDescriptionTextVisible = Visibility.Visible;
            _statusBarVM.IsProgressBarVisible = Visibility.Collapsed;
            //_statusBarVM.DescriptionText = "哈哈哈，我丢了";
            Dispatcher.Invoke((Action)(() =>
            {
                StatusBar.DataContext = _statusBarVM;
            }));

        }
        private void UpdateProgressBarStatus(object args)
        {
            
            double result;
            if (((object[])args)[0] == ((object[])args)[1])
            {
                result = 100;
            }
            else
            {
                result = (Convert.ToDouble(((object[])args)[0]) / Convert.ToDouble(((object[])args)[1])) * 100;
            }
            _statusBarVM.CurrentProgressValue = result;
            _statusBarVM.IsProgressBarVisible = Visibility.Visible;
            //if(((object[])args)[0].ToString()==((object[])args)[1].ToString())
            //{
                switch ((ControllerNodeType)((object[])args)[2])
                { 
                    case ControllerNodeType.Loop:
                        _statusBarVM.DescriptionText = "器件已上传数量:" + (((object[])args)[0]).ToString();
                        break;
                    case ControllerNodeType.Standard:
                        _statusBarVM.DescriptionText = "标准组态已上传:" + (((object[])args)[0]).ToString();
                        break;
                    case ControllerNodeType.Mixed:
                        _statusBarVM.DescriptionText = "混合组态已上传:" + (((object[])args)[0]).ToString();
                        break;
                    case ControllerNodeType.General:
                        _statusBarVM.DescriptionText = "通用组态已上传:" + (((object[])args)[0]).ToString();
                        break;
                    case ControllerNodeType.Board:
                        _statusBarVM.DescriptionText = "手动盘已上传:" + (((object[])args)[0]).ToString();
                        break;
                }
       //     }
            ////由于控制器被要回，此方法未测试完成
            //ProjectModel p = SCA.BusinessLib.ProjectManager.GetInstance.Project;
            //List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            //lstProject.Add(p);
            //vm.SetNavigatingViewModel(lstProject);
            //// this.DataContext = vm;
            Dispatcher.Invoke((Action)(() =>
            {
                StatusBar.DataContext = _statusBarVM;
            }));
        }
#endregion
#region 导航菜单栏事件处理程序
        #region 控制器节点
        /// <summary>
        /// 删除控制器
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void NavigatorUserControl_DeleteControllerButtonClick(object sender, RoutedEventArgs e)
        {
            object o = ((SCA.WPF.ViewModelsRoot.ViewModels.Navigator.NavigatorItemViewModel)e.OriginalSource).DataItem;
            if(o!=null)
            {
                ((MainWindowViewModel)this.DataContext).DeleteControllerBySpecifiedControllerID((SCA.Model.ControllerModel)o);
            }
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;
            Navigator.DataContext = vm.NavigatingViewModel;

        }
        private void NaviagtorUserControl_StartControllerButtonClick(object sender, RoutedEventArgs e)
        {
            //取得当前的控制器信息
            ControllerModel controller = (SCA.Model.ControllerModel)((SCA.WPF.ViewModelsRoot.ViewModels.Navigator.NavigatorItemViewModel)e.OriginalSource).DataItem;
            InvokeControllerCom iCC = InvokeControllerCom.Instance;
            //为通信组件指定控制器信息
            iCC.TheController = controller;
            iCC.StartCommunication();

            //iCC.TheControllerType.Status = ControllerStatus.DataSending;// 将控制器置于数据发送状态
            //switch (iCC.TheControllerType.ControllerType)
            //{
            //    case ControllerType.NT8036:
            //        //  dictControllerCom.TryGetValue(Model.ControllerModel.ControllerType.NT8036, out controllerTypeBase);
            //        List<DeviceInfo8036> lstDevInfo;

            //        //ControllerCommunicationTesting.Get8036DevInfo(out lstDevInfo);
            //        ((ControllerType8036)iCC.TheControllerType).StandardLinkageConfigList = lstLinkageConfigStandard;
            //        //controllerTypeBase.SendDeviceInfo();
            //        iCC.TheControllerType.OperableDataType = OperantDataType.StandardLinkageConfig;
            //        iCC.TheControllerType.Status = ControllerStatus.DataSending;
            //        break;
            //    case ControllerType.NT8001:
            //        //dictControllerCom.TryGetValue(Model.ControllerModel.ControllerType.NT8001, out controllerTypeBase);
            //        //List<DeviceInfo8001> lstDevInfo8001; //#1 需要确认继续抽像？？！！
            //        //Get8001DevInfo(out lstDevInfo8001); //#2
            //        //((ControllerType8001)iCC.TheControllerType).DeviceInfoList = lstDevInfo8001; //#3
            //        ////controllerTypeBase.SendDeviceInfo();
            //        //iCC.TheControllerType.OperableDataType = OperantDataType.Device;
            //        //iCC.TheControllerType.Status = ControllerStatus.DataSending;                    
            //        break;
            //}
        }
        private void NaviagtorUserControl_StopControllerButtonClick(object sender, RoutedEventArgs e)
        {
            InvokeControllerCom iCC = InvokeControllerCom.Instance;
            iCC.StopCommunication();

        }
        #endregion
        #region 回路节点
        private void NavigatorUserController_DeleteLoopButtonClick(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("确认删除吗?", "提示", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {

                ((SCA.WPF.ViewModelsRoot.ViewModels.MainWindowViewModel)this.DataContext).DeleteLoopInfoExecute(e.OriginalSource);

                List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
                lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
                vm.SetNavigatingViewModel(lstProject);
                this.DataContext = vm;
                Navigator.DataContext = vm.NavigatingViewModel;
            }            
        }
        #endregion

        private void ImportFromOldVersionUserControl_CloseButtonClick(object sender, RoutedEventArgs e)
        {
            this.ImportFromOldVersionUserControl.Visibility = Visibility.Collapsed;
            this.DetailsPane.Visibility = Visibility.Visible;
        }
#endregion
        private void RefreshNavigator(object param)
        {
            List<SCA.Model.ProjectModel> lstProject = new List<SCA.Model.ProjectModel>();
            lstProject.Add(SCA.BusinessLib.ProjectManager.GetInstance.Project);
         
            vm.SetNavigatingViewModel(lstProject);
            this.DataContext = vm;
            vm.NavigatingViewModel.Initialize(lstProject, param);
            Navigator.DataContext = vm.NavigatingViewModel;
        }
    }

}
