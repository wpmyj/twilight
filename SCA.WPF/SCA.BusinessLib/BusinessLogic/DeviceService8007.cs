﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SCA.Interface;
using SCA.Interface.DatabaseAccess;
using SCA.DatabaseAccess.DBContext;
using SCA.Model;
/* ==============================
*
* Author     : William
* Create Date: 2017/4/7 9:39:17
* FileName   : DeviceService8007
* Description:
* Version：V1
* ===============================
*/
namespace SCA.BusinessLib.BusinessLogic
{
    public class DeviceService8007:IDeviceService<DeviceInfo8007>
    {
        public LoopModel TheLoop
        {
            get;
            set;
        }

        public List<DeviceInfo8007> InitializeDevices(int deviceAmount)
        {
            //List<DeviceInfo8007> lstDevInfo = new List<DeviceInfo8007>();
            //for (int j = 0; j < deviceAmount; j++) //创建器件
            //{
            //    DeviceInfo8007 devInfo = new DeviceInfo8007();
            //    devInfo.Code = j.ToString("#000");
            //    devInfo.TypeCode = 9; //此处默认值可为各个控制器进行配置。
            //    devInfo.Disable = 0;
            //    lstDevInfo.Add(devInfo);
            //}
            //return lstDevInfo;
            throw new NotImplementedException();
        }

        public List<DeviceInfo8007> Create(int amount)
        {
            List<DeviceInfo8007> lstDeviceInfo8007 = new List<DeviceInfo8007>();
            int currentMaxCode = GetMaxCode();
            for (int i = 0; i < amount; i++)
            {
                currentMaxCode++;
                DeviceInfo8007 dev = new DeviceInfo8007();
                dev.Loop = TheLoop;
                //需要根据器件编码指定编码位数
                dev.Code = currentMaxCode.ToString();
                lstDeviceInfo8007.Add(dev);
            }
            return lstDeviceInfo8007;
        }

        public bool Update(DeviceInfo8007 deviceInfo)
        {
            try
            {
                DeviceInfo8007 result = TheLoop.GetDevices<DeviceInfo8007>().Find(
                    delegate(DeviceInfo8007 x)
                    {
                        return x.Code == deviceInfo.Code;
                    }
                    );
                if (result != null)
                {
                    result.Loop = deviceInfo.Loop;
                    result.LoopID = deviceInfo.LoopID;
                    result.ID = deviceInfo.ID;
                    //result.Code = deviceInfo.Code;
                    // result.SimpleCode = deviceInfo.SimpleCode;
                    result.TypeCode = deviceInfo.TypeCode;
                    result.Disable = deviceInfo.Disable;
                    result.LinkageGroup1 = deviceInfo.LinkageGroup1;
                    result.LinkageGroup2 = deviceInfo.LinkageGroup2;
                    result.Feature = deviceInfo.Feature;
                    result.SensitiveLevel = deviceInfo.SensitiveLevel;                    
                    result.BuildingNo = deviceInfo.BuildingNo;
                    result.ZoneNo = deviceInfo.ZoneNo;
                    result.FloorNo = deviceInfo.FloorNo;
                    result.RoomNo = deviceInfo.RoomNo;
                    result.Location = deviceInfo.Location;
                }
                else
                {
                    TheLoop.SetDevice<DeviceInfo8007>(deviceInfo);
                }
            }
            catch
            {
                return false;
            }
            this.TheLoop.IsDeviceDataDirty = true;
            return true;
        }

        public bool DeleteBySpecifiedID(int id)
        {
            try
            {
                var result = from dev in TheLoop.GetDevices<DeviceInfo8007>() where dev.ID == id select dev;
                DeviceInfo8007 o = result.FirstOrDefault();
                if (o != null)
                {
                    TheLoop.GetDevices<DeviceInfo8007>().Remove(o);
                    DeleteDeviceFromDB(id);
                }

            }
            catch
            {
                return false;
            }
            return true;
        }
        private bool DeleteDeviceFromDB(int id)
        {
            try
            {
                IFileService _fileService = new SCA.BusinessLib.Utility.FileService();
                ILogRecorder logger = null;
                IDatabaseService _databaseService = new SCA.DatabaseAccess.SQLiteDatabaseAccess(TheLoop.Controller.Project.SavePath, logger, _fileService);

                IDeviceDBServiceTest deviceDBService = SCA.DatabaseAccess.DBContext.DeviceManagerDBServiceTest.GetDeviceDBContext(TheLoop.Controller.Type, _databaseService);

                deviceDBService.DeleteDeviceByID(id);


            }
            catch (Exception ex)
            {
                return false;
            }
            return true;

        }
        private int GetMaxCode()
        {
            int result = 0;
            if (TheLoop != null)
            {
                var query = from r in TheLoop.GetDevices<DeviceInfo8007>() select r.Code;
                if (query != null)
                {
                    foreach (var i in query)
                    {
                        if (Convert.ToInt32(i) > result)
                        {
                            result = Convert.ToInt32(i);
                        }
                    }
                }
            }
            return result;
        }
    }
}
