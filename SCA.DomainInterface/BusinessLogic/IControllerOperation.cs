﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SCA.Model;
using SCA.Interface.DatabaseAccess;
/* ==============================
*
* Author     : William
* Create Date: 2016/11/10 17:16:51
* FileName   : IControllerOperation
* Description:
* Version：V1
* ===============================
*/
namespace SCA.Interface
{
    /// <summary>
    /// 关于Controller的操作分为两部分：
    /// 1.与串口通讯无关的操作
    /// 2.与串口通讯有关的操作（接收、处理来自控制器的命令）
    ///  
    /// 此类作为Controller的通用操作部分
    /// </summary>
    public interface IControllerOperation
    {
        #region 控制器节点
        /// <summary>
        /// 获取控制器的导航节点
        /// </summary>
        /// <returns></returns>
        ControllerNodeModel[] GetNodes();

        /// <summary>
        ///  获取控制器节点类型
        /// </summary>
        /// <returns>控制器节点枚举值</returns>
        ControllerNodeType GetControllerNodeType();
        #endregion
        #region 控制器信息操作
        /// <summary>
        /// 获取控制器下的所有回路信息
        /// </summary>
        /// <returns></returns>
        List<LoopModel> GetLoops(int controllerID);
        /// <summary>
        /// 创建指定数量的回路信息
        /// </summary>
        /// <param name="amount">回路数量</param>
        /// <returns></returns>
        List<LoopModel> CreateLoops(int amount);

        bool DeleteControllerBySpecifiedControllerID(int  controllerID);

        //bool DeleteControllerBySpecifiedCode(string strLoopCode);

        List<Model.LoopModel> CreateLoops(int loopsAmount, int deviceAmount, ControllerModel controller);
        /// <summary>
        /// 根据协议格式组织器件信息待下传的数据
        /// </summary>
        /// <returns></returns>
        //List<DeviceInfoBase> OrganizeDeviceInfoForSettingController();
        List<IDevice> OrganizeDeviceInfoForSettingController();

        /// <summary>
        /// 取得控制器的器件信息
        /// </summary>
        /// <returns></returns>
        //List<DeviceInfoBase> GetDevicesInfo(int loopID);
        List<IDevice> GetDevicesInfo(int loopID);
        /// <summary>
        /// 根据协议格式组织“标准组态”待下传的数据
        /// </summary>
        /// <returns></returns>
        List<LinkageConfigStandard> OrganizeLikageStandardInfoForSettingController();
        /// <summary>
        /// 获取器件列的配置信息
        /// </summary>
        /// <returns></returns>
        ColumnConfigInfo[] GetDeviceColumns();
        /// <summary>
        /// 取得最大的器件ID
        /// </summary>
        /// <returns></returns>
        int GetMaxDeviceID();
        /// <summary>
        /// 创建控制器
        /// 2017-02-08
        /// </summary>
        /// <returns></returns>
        bool CreateController(Model.ControllerModel model);
        /// <summary>
        /// 在项目中增加控制器
        /// </summary>
        /// <returns></returns>
        bool AddControllerToProject(ControllerModel controller);
        /// <summary>
        /// 获取控制器内的全部楼号信息
        /// </summary>
        /// <param name="controllerID"></param>
        /// <returns></returns>
        List<short?> GetBuildingNoCollection(int controllerID);

        /// <summary>
        /// 获取数据中已经配置的“器件类型”
        /// </summary>
        /// <param name="controllerID"></param>
        /// <returns></returns>
        List<DeviceType> GetConfiguredDeviceTypeCollection(int controllerID);

        
        List<DeviceInfoForSimulator> GetSimulatorDevices(ControllerModel controller);
        List<DeviceInfoForSimulator> GetSimulatorDevicesByDeviceCode(List<string> lstDeviceCode,ControllerModel controller,List<DeviceInfoForSimulator> lstAllDevicesOfOtherMachine);
        #endregion
        #region 低版本数据升级
        /// <summary>        
        /// 将老版本(2.0版本系列)数据转换为当前版本软件数据        
        /// </summary>
        /// <param name="sourceVersion">源版本号</param>
        /// <param name="destVersion">目的版本号</param>
        /// <returns></returns>
        ControllerModel OrganizeControllerInfoFromOldVersionSoftwareDataFile(IOldVersionSoftwareDBService oldVersionSoftwareDBService);
        #endregion        
        ControllerType GetControllerType();
        //OrganizeControllerInfoFromOldVersionSoftwareDataFile
    }
}