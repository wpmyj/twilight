﻿using System;
using System.Linq;
using System.Windows;
using System.Reflection;
using System.ComponentModel;
using System.Windows.Input;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Collections.ObjectModel;
using Caliburn.Micro;
using SCA.Model;
using SCA.WPF.Utility;
using SCA.WPF.Infrastructure;
using SCA.BusinessLib.BusinessLogic;
using SCA.BusinessLib.Controller;
using SCA.Interface.BusinessLogic;
/* ==============================
*
* Author     : William
* Create Date: 2017/3/12 15:38:48
* FileName   : LinkageConfigStandardViewModel
* Description: 标准组态操作逻辑
* Version：V1
* ===============================
*/
namespace SCA.WPF.ViewModelsRoot.ViewModels.DetailInfo
{

    public class EditableLinkageConfigStandard : LinkageConfigStandard, IEditableObject,IDataErrorInfo
    {
        public event ItemEndEditEventHandler ItemEndEdit;
        private EditableLinkageConfigStandard copy;
        public EditableLinkageConfigStandard()
        { 
        
        }
        public EditableLinkageConfigStandard(LinkageConfigStandard linkageConfigStandard)
        {
            this.ID = linkageConfigStandard.ID;
            this.Controller = linkageConfigStandard.Controller;
            this.ControllerID = linkageConfigStandard.ControllerID;
            this.Code = linkageConfigStandard.Code;
            this.ActionCoefficient = linkageConfigStandard.ActionCoefficient;
            this.DeviceNo1 = linkageConfigStandard.DeviceNo1;
            this.DeviceNo2 = linkageConfigStandard.DeviceNo2;
            this.DeviceNo3 = linkageConfigStandard.DeviceNo3;
            this.DeviceNo4 = linkageConfigStandard.DeviceNo4;
            this.DeviceNo5 = linkageConfigStandard.DeviceNo5;
            this.DeviceNo6 = linkageConfigStandard.DeviceNo6;
            this.DeviceNo7 = linkageConfigStandard.DeviceNo7;
            this.DeviceNo8 = linkageConfigStandard.DeviceNo8;
            this.DeviceNo9 = linkageConfigStandard.DeviceNo9;
            this.DeviceNo10 = linkageConfigStandard.DeviceNo10;
            this.LinkageNo1 = linkageConfigStandard.LinkageNo1;
            this.LinkageNo2 = linkageConfigStandard.LinkageNo2;
            this.LinkageNo3 = linkageConfigStandard.LinkageNo3;

        }
        public LinkageConfigStandard ToLinkageConfigStandard()
        {
            LinkageConfigStandard linkageConfigStandard = new LinkageConfigStandard();

            linkageConfigStandard.ID = this.ID;
            linkageConfigStandard.Controller = this.Controller;
            linkageConfigStandard.ControllerID = this.ControllerID;
            linkageConfigStandard.Code = this.Code;
            linkageConfigStandard.ActionCoefficient = this.ActionCoefficient;
            linkageConfigStandard.DeviceNo1 = this.DeviceNo1;
            linkageConfigStandard.DeviceNo2 = this.DeviceNo2;
            linkageConfigStandard.DeviceNo3 = this.DeviceNo3;
            linkageConfigStandard.DeviceNo4 = this.DeviceNo4;
            linkageConfigStandard.DeviceNo5 = this.DeviceNo5;
            linkageConfigStandard.DeviceNo6 = this.DeviceNo6;
            linkageConfigStandard.DeviceNo7 = this.DeviceNo7;
            linkageConfigStandard.DeviceNo8 = this.DeviceNo8;
            linkageConfigStandard.DeviceNo9 = this.DeviceNo9;
            linkageConfigStandard.DeviceNo10 = this.DeviceNo10;
            linkageConfigStandard.LinkageNo1 = this.LinkageNo1;
            linkageConfigStandard.LinkageNo2 = this.LinkageNo2;
            linkageConfigStandard.LinkageNo3 = this.LinkageNo3;
            return linkageConfigStandard;
        }

        public void BeginEdit()
        {
            //throw new System.NotImplementedException();
        }

        public void CancelEdit()
        {
            //throw new System.NotImplementedException();
        }

        public void EndEdit()
        {
            if (ItemEndEdit != null)
            {
                ItemEndEdit(this);
            }
        }
        private SCA.Interface.IControllerConfig Config
        {
            get
            {
                return ControllerConfigManager.GetConfigObject(Controller.Type);
            }
        }
        public string Error
        {
            get { return String.Empty; }
        }

        public string this[string columnName]
        {
            get
            {
                Dictionary<string, SCA.Model.RuleAndErrorMessage> dictMessage = Config.GetStandardLinkageConfigRegularExpression();
                
                SCA.Model.RuleAndErrorMessage rule;
                System.Text.RegularExpressions.Regex exminator;
                string errorMessage = String.Empty;
        //                public short MaxStandardLinkageConfigAmount
        //{
        //    get
        //    {
        //        if (_maxStandardLinkageConfigAmount == 0)//&& TheController!=null 后续在加至条件中
        //        {                    
        //            _maxStandardLinkageConfigAmount = ControllerConfigManager.GetConfigObject(TheController.TypeCode).GetMaxAmountForStandardLinkageConfig();
        //        }
        //        return _maxStandardLinkageConfigAmount;
        //    }
        //}
                switch (columnName)
                {
                    case "Code":
                        rule = dictMessage["Code"];
                        exminator = new System.Text.RegularExpressions.Regex(rule.Rule);
                        if (!exminator.IsMatch(this.Code.ToString()))
                        {
                            errorMessage = rule.ErrorMessage;
                        }
                        break;
                    //case "ActionCoefficient":
                    //    rule = dictMessage["ActionCoefficient"];
                    //    exminator = new System.Text.RegularExpressions.Regex(rule.Rule);
                    //    if (!exminator.IsMatch(this.ActionCoefficient.ToString()))
                    //    {
                    //        errorMessage = rule.ErrorMessage;
                    //    }
                    //    break;
                    case "LinkageNo1":
                        if (this.LinkageNo1.ToString() != "")
                        { 
                            rule = dictMessage["Code"];
                            exminator = new System.Text.RegularExpressions.Regex(rule.Rule);
                            if (!exminator.IsMatch(this.LinkageNo1.ToString()))
                            {
                                errorMessage = rule.ErrorMessage;
                            }
                        }
                        break;
                    case "LinkageNo2":
                        if (this.LinkageNo2.ToString() != "")
                        {
                            rule = dictMessage["Code"];
                            exminator = new System.Text.RegularExpressions.Regex(rule.Rule);
                            if (!exminator.IsMatch(this.LinkageNo2.ToString()))
                            {
                                errorMessage = rule.ErrorMessage;
                            }
                        }
                        break;
                    case "LinkageNo3":
                        if (this.LinkageNo3.ToString() != "")
                        {
                            rule = dictMessage["Code"];
                            exminator = new System.Text.RegularExpressions.Regex(rule.Rule);
                            if (!exminator.IsMatch(this.LinkageNo3.ToString()))
                            {
                                errorMessage = rule.ErrorMessage;
                            }
                        }
                        break;

                }
                return errorMessage;
            }
        }
    }

    public class EditableLinkageConfigStandards : ObservableCollection<EditableLinkageConfigStandard>
    {
        public event ItemEndEditEventHandler ItemEndEdit;

        private SCA.Interface.BusinessLogic.ILinkageConfigStandardService _linkageConfigStandardService;
        private ControllerModel _controller;
        public EditableLinkageConfigStandards(ControllerModel controller,List<LinkageConfigStandard> lstLinkageConfigStandard)
        {
            _controller = controller;
            _linkageConfigStandardService = new SCA.BusinessLib.BusinessLogic.LinkageConfigStandardService(_controller);
                   
            if (lstLinkageConfigStandard != null)
            {
               foreach(var o in lstLinkageConfigStandard)
               {
                 this.Add(new EditableLinkageConfigStandard(o));
               }
            }
        }
        protected override void InsertItem(int index, EditableLinkageConfigStandard item)
        {
            base.InsertItem(index, item);
            item.ItemEndEdit += new ItemEndEditEventHandler(ItemEndEditHandler);
        }
        private void ItemEndEditHandler(IEditableObject sender)
        {
            EditableLinkageConfigStandard o = (EditableLinkageConfigStandard)sender;
            
            o.Controller = _controller;
            o.ControllerID = _controller.ID;
            _linkageConfigStandardService.Update(o.ToLinkageConfigStandard());

            
        }

    }
    public class LinkageConfigStandardViewModel:PropertyChangedBase
    {
        //private ObservableCollection<LinkageConfigStandard> _standardLinkageConfigInfoObservableCollection;
        private ILinkageConfigStandardService _linkageConfigStandardService;
        private int _addedAmount = 1;//向集合中新增LinkageConfigStandard的数量
        
        private EditableLinkageConfigStandards _lcsCollection;
        private List<LinkageConfigStandard> _lstLinkageConfigStandard=null;
        private Visibility _isVisualColumn=Visibility.Visible;
        private string _addIconPath = @"Resources/Icon/Style1/loop-add.png";
        private string _delIconPath = @"Resources/Icon/Style1/loop-delete.png";
        private string _copyIconPath = @"Resources/Icon/Style1/copy.png";
        private string _pasteIconPath = @"Resources/Icon/Style1/paste.png";
        private string _saveIconPath = @"Resources/Icon/Style1/save.png";
        private string _downloadIconPath = @"Resources/Icon/Style1/c_download.png";
        private string _uploadIconPath = @"Resources/Icon/Style1/c_upload.png";
        private string _appCurrentPath = AppDomain.CurrentDomain.BaseDirectory;
        public string AddIconPath { get { return _appCurrentPath + _addIconPath; } }
        public string DelIconPath { get { return _appCurrentPath + _delIconPath; } }
        public string CopyIconPath { get { return _appCurrentPath + _copyIconPath; } }
        public string PasteIconPath { get { return _appCurrentPath + _pasteIconPath; } }
        public string SaveIconPath { get { return _appCurrentPath + _saveIconPath; } }
        public string DownloadIconPath { get { return _appCurrentPath + _downloadIconPath; } }
        public string UploadIconPath { get { return _appCurrentPath + _uploadIconPath; } }


        public LinkageConfigStandardViewModel()
        {
            _linkageConfigStandardService = new SCA.BusinessLib.BusinessLogic.LinkageConfigStandardService(TheController);
        }

        public Visibility IsVisualColumn
        {

            get
            {
                return _isVisualColumn;
                
            }
            set
            {
                _isVisualColumn = value;
                NotifyOfPropertyChange(MethodBase.GetCurrentMethod().GetPropertyName());
            }
        }
        public int AddedAmount
        {
            get
            {
                return _addedAmount;
            }
            set
            {
                _addedAmount = value;
            }
        }
        /// <summary>
        /// 当前LinkageConfigStandardViewModel的控制器对象
        /// </summary>
        public ControllerModel TheController { get; set; }
        /// <summary>
        /// 获取当前控制器的标准组态信息
        /// </summary>
        public List<LinkageConfigStandard> LinkageConfigStandard
        { 
            get
            {
                if (_lstLinkageConfigStandard == null)
                {
                    
                    _lstLinkageConfigStandard=new List<LinkageConfigStandard>();
                }
                if (_lcsCollection != null)
                {
                    foreach (var s in _lcsCollection)
                    {
                        _lstLinkageConfigStandard.Add(s.ToLinkageConfigStandard());
                    }
                }
                return _lstLinkageConfigStandard;
            }
        }

        public EditableLinkageConfigStandards StandardLinkageConfigInfoObservableCollection
        {
            get
            {
                if (_lcsCollection == null)
                {
                    _lcsCollection = new EditableLinkageConfigStandards(TheController, null);
                    _lcsCollection.CollectionChanged += new NotifyCollectionChangedEventHandler(StandardLinkageConfigInfoObservableCollectionChanged);

                }
                return _lcsCollection;
            }
            set
            {
                _lcsCollection = value;
                _lcsCollection.CollectionChanged += new NotifyCollectionChangedEventHandler(StandardLinkageConfigInfoObservableCollectionChanged);
                //_maxCode = GetMaxCode(value);
               
                NotifyOfPropertyChange(MethodBase.GetCurrentMethod().GetPropertyName());
            }
        }
 
        public ICommand AddNewRecordCommand
        {
            get
            {
                return new SCA.WPF.Utility.RelayCommand<int>(AddNewRecordExecute, null);
            }
        }
        public ICommand DownloadCommand
        {
            get
            {
                return new SCA.WPF.Utility.RelayCommand(DownloadExecute, null);
            }
        }
        //public ICommand UploadCommand
        //{ 
        
        //}
        /// <summary>
        /// 添加指定数量的标准组态信息
        /// </summary>
        /// <param name="rowsAmount"></param>
        public void AddNewRecordExecute(int rowsAmount)
        {
            
            _linkageConfigStandardService.TheController = this.TheController;
            List<LinkageConfigStandard> lstLinkageConfigStandard=_linkageConfigStandardService.Create(rowsAmount);
            foreach (var v in lstLinkageConfigStandard)
            { 
                EditableLinkageConfigStandard eLCS = new EditableLinkageConfigStandard();
                eLCS.Controller = v.Controller;
                eLCS.ControllerID = v.ControllerID;
                eLCS.ID = v.ID;
                eLCS.Code = v.Code;
                StandardLinkageConfigInfoObservableCollection.Add(eLCS);
            }
        }
        public void DownloadExecute()
        {
            _linkageConfigStandardService.TheController = this.TheController;
            _linkageConfigStandardService.DownloadExecute(LinkageConfigStandard);       
        }
        public void UploadExecute()
        { 
            
        }
        private void StandardLinkageConfigInfoObservableCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                foreach (var item in e.OldItems)
                {
                    string s = "Fired";
                }
            }
        }
        #region 作废->改为实现IEditableObject接口的集合
        //public ObservableCollection<LinkageConfigStandard> StandardLinkageConfigInfoObservableCollection
        //{
        //    get
        //    {
        //        if (_standardLinkageConfigInfoObservableCollection == null)
        //        {
        //            _standardLinkageConfigInfoObservableCollection = new ObservableCollection<LinkageConfigStandard>();
        //        }
        //        return _standardLinkageConfigInfoObservableCollection;
        //    }
        //    set
        //    {
        //        _standardLinkageConfigInfoObservableCollection = value;
        //        NotifyOfPropertyChange(MethodBase.GetCurrentMethod().GetPropertyName());

        //    }
        //}
        #endregion
        //移至BussinessLogic的Service中
        //private int GetMaxCode(EditableLinkageConfigStandards ocLCS)
        //{
        //    int result = 0;
        //    if (ocLCS != null)
        //    {
        //        var query = from input in ocLCS   select input.Code;
        //        if (query != null)
        //        {
        //            foreach (var i in query)
        //            {
        //                if (Convert.ToInt32(i) > result)
        //                {
        //                    result = Convert.ToInt32(i);
        //                }
        //            }
        //        }
        //    }
        //    return result;
        //}

    }
}
