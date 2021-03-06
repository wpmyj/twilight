﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SCA.Model;
namespace SCA.Interface
{
    /// <summary>
    /// 不同的控制器节点与可设置字段不同,可通过此接口实现具体的控制器配置信息
    /// 2016-10-17
    /// </summary>
   public interface IControllerConfig
    {
       /// <summary>
       /// 默认器件类型编码
       /// </summary>
       int DefaultDeviceTypeCode { get; set; }
       /// <summary>
       /// 根据器件类型编码取得器件类型
       /// </summary>
       /// <param name="deviceTypeCode"></param>
       /// <returns></returns>
       DeviceType GetDeviceTypeViaDeviceCode(int deviceTypeCode);
       ControllerNodeModel[] GetNodes();
       ColumnConfigInfo[] GetDeviceColumns();
       ColumnConfigInfo[] GetStandardLinkageConfigColumns();
       ColumnConfigInfo[] GetGeneralLinkageConfigColumns();
       ColumnConfigInfo[] GetMixedLinkageConfigColumns();
       string  GetDeviceTypeCodeInfo();
       /// <summary>
        /// 取得回路最大数量值 
       /// </summary>
       /// <returns></returns>
       Int16 GetMaxLoopAmountValue();
       /// <summary>
        /// 取得机号最大数量值 
       /// </summary>
       /// <returns></returns>
       Int16 GetMaxMachineAmountValue();
       /// <summary>
       /// 取得设备最大数量值 
       /// </summary>
       /// <returns></returns>
       Int16 GetMaxDeviceAmountValue();
       /// <summary>
       /// 取得控制器可配置的器件长度
       /// </summary>
       /// <returns></returns>
       List<int> GetDeviceCodeLength();
       /// <summary>
       /// 获取可添加标准组态的最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForStandardLinkageConfig();
       /// <summary>
       /// 获取可添加混合组态的最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForMixedLinkageConfig();
       /// <summary>
       /// 获取可添加通用组态的最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForGeneralLinkageConfig();
       /// <summary>
       /// 获取可添加网络手动盘的最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForManualControlBoardConfig();

       /// <summary>
       /// 获取可添加网络手动盘的"板卡号"最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForBoardNoInManualControlBoardConfig();

       /// <summary>
       /// 获取可添加网络手动盘的"手盘号"最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForSubBoardNoInManualControlBoardConfig();
       /// <summary>
       /// 获取可添加网络手动盘的"手键号"最大数量
       /// </summary>
       /// <returns></returns>
       short GetMaxAmountForKeyNoInManualControlBoardConfig();
       /// <summary>
       /// 获取器件信息有效性验证表达式及错误信息
       /// </summary>
       /// <returns></returns>
       Dictionary<string, RuleAndErrorMessage> GetDeviceInfoRegularExpression(int addressLength);

       /// <summary>
       /// 获取标准组态有效性验证表达式及错误信息
       /// </summary>
       /// <returns></returns>
       Dictionary<string, SCA.Model.RuleAndErrorMessage> GetStandardLinkageConfigRegularExpression();
       //Dictionary<string, RuleAndErrorMessage> GetMixedLinkageConfigRegularExpression(int addressLength); //由于仅8001需要此配置，暂不需要接口
       //Dictionary<string, RuleAndErrorMessage> GetManualControlBoardRegularExpression(int addressLength); //由于仅8001需要此配置，暂不需要接口
       List<Model.DeviceType> GetALLDeviceTypeInfo(int? projectID);
       //获取控制器可用器件类型
       List<DeviceType> GetDeviceTypeInfo();
       List<DeviceType> GetAllowedDeviceTypeInfoForAnyAlarm(); 
       List<DeviceType> GetAllowedDeviceTypeInfoForLinkageGroup8000();
       
    }
}
