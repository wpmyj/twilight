﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SCA.Interface;
using SCA.Model;
/* ==============================
*
* Author     : William
* Create Date: 2017/3/2 15:08:51
* FileName   : ControllerConfig8001
* Description:
* Version：V1
* ===============================
*/
namespace SCA.BusinessLib.BusinessLogic
{
    public class ControllerConfig8001 : ControllerConfigBase,IControllerConfig
    {
        private int _defaultDeviceTypeCode = 4;
        public Model.ControllerNodeModel[] GetNodes()
        {
            return new ControllerNodeModel[]
                {
                    new ControllerNodeModel(ControllerNodeType.Loop,"回路",3, @"Resources\Icon\Style1\Loop.jpg"),
                    new ControllerNodeModel(ControllerNodeType.Standard,"标准组态",3, @"Resources\Icon\Style1\Linkage.jpg"),                    
                    new ControllerNodeModel(ControllerNodeType.Mixed,"混合组态",3, @"Resources\Icon\Style1\Linkage.jpg"),
                    new ControllerNodeModel(ControllerNodeType.General,"通用组态",3, @"Resources\Icon\Style1\Linkage.jpg"),
                    new ControllerNodeModel(ControllerNodeType.Board,"网络手控盘",3, @"Resources\Icon\Style1\Linkage.jpg"),                    
                };
        }
        
        public Model.ColumnConfigInfo[] GetDeviceColumns()
        {
            throw new NotImplementedException();
        }

        public Model.ColumnConfigInfo[] GetStandardLinkageConfigColumns()
        {
            throw new NotImplementedException();
        }

        public Model.ColumnConfigInfo[] GetGeneralLinkageConfigColumns()
        {
            throw new NotImplementedException();
        }

        public Model.ColumnConfigInfo[] GetMixedLinkageConfigColumns()
        {
            throw new NotImplementedException();
        }
        public List<DeviceType> GetDeviceTypeInfo()
        {

            string deviceType = GetDeviceTypeCodeInfo();
            return base.ConvertDeviceTypeCodeToDeviceType(deviceType);
        }
        public List<DeviceType> GetAllowedDeviceTypeInfoForAnyAlarm()
        {
            string deviceType = GetAllowedDeviceTypeCodeInfoForAnyAlarm();
            return base.ConvertDeviceTypeCodeToDeviceType(deviceType);
        }
        public List<DeviceType> GetAllowedDeviceTypeInfoForLinkageGroup8000()
        {
            string deviceType = GetAllowedDeviceTypeCodeInfoForLinkageGroup8000();
            return base.ConvertDeviceTypeCodeToDeviceType(deviceType);
        }

        /// <summary>
        /// 此控制器允许的器件类型
        /// </summary>
        /// <returns></returns>
        public string GetDeviceTypeCodeInfo()
        {
            string strMatchingDeviceNo = "0,1,4,5,6,7,9,10,11,12,13,14,15,24,25,26,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88";
            return strMatchingDeviceNo;
        }
        /// <summary>
        /// 通用组态，在任意火警时，可作为报警器件的器件类型(但不可作为TypeC中的启动器件)
        /// </summary>
        /// <returns></returns>
        private string GetAllowedDeviceTypeCodeInfoForAnyAlarm()
        {
            //string strMatchingDeviceNo = "0,1,4,5,6,7,9,10,11,12,13,14,15,24,25,26";去掉14信号输入，不作为火警
            string strMatchingDeviceNo = "0,1,4,5,6,7,9,10,11,12,13,15,24,25,26";
            return strMatchingDeviceNo;        
        }
        /// <summary>
        /// 联动组号为8000时，可启动的器件类型
        /// </summary>
        /// <returns></returns>
        private string GetAllowedDeviceTypeCodeInfoForLinkageGroup8000()
        {
            string strMatchingDeviceNo = "31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,74,75,76,77,78";
            return strMatchingDeviceNo;

        }

        public short GetMaxLoopAmountValue()
        {
            return 64;
        }

        public short GetMaxMachineAmountValue()
        {
            //如果控制器位数为7位，最大机号63
            //8位，最大机号199
            return 63;
        }

        public short GetMaxDeviceAmountValue()
        {
            return 252;
        }


       public  List<int> GetDeviceCodeLength()
       {
            List<int> lstDeviceCode = new List<int>();
            lstDeviceCode.Add(7);
            lstDeviceCode.Add(8);            
            return lstDeviceCode;
       }

       public short GetMaxAmountForStandardLinkageConfig()
       {
           return 8000;
       }

       public virtual Dictionary<string, RuleAndErrorMessage> GetDeviceInfoRegularExpression(int addressLength)
       {
           Dictionary<string, RuleAndErrorMessage> dictDeviceInfoRE = new Dictionary<string, RuleAndErrorMessage>();
           //器件编码 自动生成，不需要验证
           //if (addressLength == 7)
           //{
           //    dictDeviceInfoRE.Add("DeviceCode", new RuleAndErrorMessage("^([06][0-3])$","器件编码为0~63"));
           //}
           //else
           //{
           //    dictDeviceInfoRE.Add("DeviceCode", new RuleAndErrorMessage("^([01][0-9][0-9])$", "器件编码为0~199"));
           //}
           //器件类型为“下拉框”，不需要验证


           //特性(如果为老版控制器，只能取0,1)
           dictDeviceInfoRE.Add("Feature", new RuleAndErrorMessage("^([0-3])$", "特性取值范围为0,1,2,3"));

           //屏蔽
           dictDeviceInfoRE.Add("Disable", new RuleAndErrorMessage("^([01])$", "屏蔽取值范围为0或1"));

           //灵敏度
           dictDeviceInfoRE.Add("SensitiveLevel", new RuleAndErrorMessage("^([123])$", "灵敏度取值范围为1,2,3"));


           //延时
           dictDeviceInfoRE.Add("DelayValue", new RuleAndErrorMessage("^([1-9]|[1-9][1-9]|1[0-7][0-9]|180)$", "延时取值范围为1~180"));

           //输出组 0001~8000
           dictDeviceInfoRE.Add("StandardLinkageGroup", new RuleAndErrorMessage("^([0-7][0-9][0-9][1-9]|[0-7][0-9][1-9][0-9]|8000)$", "输出组取值范围为0001~8000"));
           //广播分区 说明书的有效范围为1~240【上一版软件的有效范围0~240】。仅“广播模块”可设置此项属性（如“070常规广播”），其余模块一律置0。
           //对于广播模块为0的状态，移至整体验证中
           dictDeviceInfoRE.Add("BroadcastZone", new RuleAndErrorMessage("^([0-9]|[1-9][0-9]|1[0-7][0-9]|180)$", "输出组取值范围为000~180"));

           //允许楼、区、层、房间号同时为0，如果单独为0时，在其它规则里检查2017-04-20
           //楼 1~63
           dictDeviceInfoRE.Add("BuildingNo", new RuleAndErrorMessage("^([1-9]|[0-5][0-9]|[0-6][0-3]|0)$", "楼号取值范围为1~63"));
           //区1~99
           dictDeviceInfoRE.Add("ZoneNo", new RuleAndErrorMessage("^([1-9]|[0-9][0-9]|0)$", "区号取值范围为1~99"));
           //层 -9~-1 1~63
           dictDeviceInfoRE.Add("FloorNo", new RuleAndErrorMessage("^(-[1-9]|([1-9]|[1-5][0-9]|6[0-3]))$", "层号取值范围为-9~63(不包括0)"));
           //房间号  1~255
           dictDeviceInfoRE.Add("RoomNo", new RuleAndErrorMessage("^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]|0)$", "房间号取值范围为1~255"));
           //安装地点 26个字母+数字+中文
           dictDeviceInfoRE.Add("Location", new RuleAndErrorMessage("^[A-Za-z0-9\u4E00-\u9FFF]{0,16}$", "安装地点为字母或汉字或中文,最长16位"));
           return dictDeviceInfoRE;
       }
       public virtual Dictionary<string, RuleAndErrorMessage> GetStandardLinkageConfigRegularExpression()
       {
           Dictionary<string, RuleAndErrorMessage> dictExpressionAndInfo = new Dictionary<string, RuleAndErrorMessage>();
           //输出组号
           dictExpressionAndInfo.Add("Code", new RuleAndErrorMessage("^([0-7][0-9][0-9][1-9]|[0-7][0-9][1-9][0-9]|8000)$", "输出组取值范围为0001~8000"));

           //联动模块 考虑是手输还是选择，如果选择就不需要验证

           //动作常数
           dictExpressionAndInfo.Add("ActionCoefficient", new RuleAndErrorMessage("^([1-5])$", "动作常数为1~5"));
           //联动组 与输出组号相同            

           //备注
           return dictExpressionAndInfo;
       }
       public Dictionary<string, RuleAndErrorMessage> GetGeneralLinkageConfigRegularExpression(int addressLength)
       {
           Dictionary<string, RuleAndErrorMessage> dictExpressionAndInfo = new Dictionary<string, RuleAndErrorMessage>();
           //输出组号
           dictExpressionAndInfo.Add("Code", new RuleAndErrorMessage("^([0-1][0-9][0-9][0-9]|2000)$", "输出组取值范围为0001~2000"));
           //联动模块 考虑是手输还是选择，如果选择就不需要验证
           //动作常数
           dictExpressionAndInfo.Add("ActionCoefficient", new RuleAndErrorMessage("^([0-5])$", "动作常数为0~5"));
           //A楼
           dictExpressionAndInfo.Add("Building", new RuleAndErrorMessage("^([0-9]|[1-5][0-9]|6[0-3])$", "楼号范围为1~63 (0代表任意)"));
           //A区
           dictExpressionAndInfo.Add("Zone", new RuleAndErrorMessage("^([0-9]|[1-9][0-9])$", "区号范围为1~99 (0代表任意)"));
           //A层1
           dictExpressionAndInfo.Add("FloorNo", new RuleAndErrorMessage("^(-[1-9]|([1-9]|[1-5][0-9]|6[0-3]|0))$", "层号取值范围为-9~63 (0代表任意)"));
           //A层2

           //类型A

           //C分类

           //C楼

           //C区

           //C层

           //C机号
           if (addressLength == 7) //7位地址，机号范围0~63  
           {
               dictExpressionAndInfo.Add("MachineNo", new RuleAndErrorMessage("^([06][0-3])$", "机号范围为00~63"));
           }
           else //8位地址 机号范围0~199
           {
               dictExpressionAndInfo.Add("MachineNo", new RuleAndErrorMessage("^([01][0-9][0-9])$", "机号范围为000~199"));
           }
           //C回路
           dictExpressionAndInfo.Add("Loop", new RuleAndErrorMessage("^([1-9]|[1-5][0-9]|6[0-4])$", "路号范围为1~64"));
           //C编号
           dictExpressionAndInfo.Add("Device", new RuleAndErrorMessage("^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-2]|0)$", "器件编号范围为1~252"));
           //类型C


           
           return dictExpressionAndInfo;
       }

        public Dictionary<string, RuleAndErrorMessage> GetMixedLinkageConfigRegularExpression(int addressLength)
        {
            Dictionary<string, RuleAndErrorMessage> dictExpressionAndInfo = new Dictionary<string, RuleAndErrorMessage>();
            //输出组号 0001-4000
            dictExpressionAndInfo.Add("Code", new RuleAndErrorMessage("^([0-3][0-9][0-9][0-9]|4000)$", "输出组取值范围为0001~4000"));
            //联动模块 考虑是手输还是选择，如果选择就不需要验证
            //动作常数
            dictExpressionAndInfo.Add("ActionCoefficient", new RuleAndErrorMessage("^([0-5])$", "动作常数为0~5"));
            //动作类型，以下拉框作限制，不需要验证

            //A分类 区层/地址

            //A楼
            dictExpressionAndInfo.Add("Building", new RuleAndErrorMessage("^([1-9]|[1-5][0-9]|6[0-3])$", "楼号范围为1~63"));
            //A区
            dictExpressionAndInfo.Add("Zone", new RuleAndErrorMessage("^([1-9]|[1-9][0-9])$", "区号范围为1~99"));
            //A层
            dictExpressionAndInfo.Add("FloorNo", new RuleAndErrorMessage("^(-[1-9]|([1-9]|[1-5][0-9]|6[0-3]))$", "层号取值范围为-9~63(不包括0)"));

            #region 字段标识
            //A路号

            //A编号

            //A类型

            //B楼
            
            //B区
            
            //B层

            //B路号

            //B编号

            //B类型

            //C分类

            //C楼

            //C区

            //C层
#endregion
            //C机号
            if (addressLength == 7) //7位地址，机号范围0~63  
            {
                dictExpressionAndInfo.Add("MachineNo", new RuleAndErrorMessage("^([06][0-3])$", "机号范围为0~63"));
            }
            else //8位地址 机号范围0~199
            {
                dictExpressionAndInfo.Add("MachineNo", new RuleAndErrorMessage("^([01][0-9][0-9])$", "机号范围为000~199"));
            }
            //C回路
            dictExpressionAndInfo.Add("Loop", new RuleAndErrorMessage("^([1-9]|[1-5][0-9]|6[0-4])$", "路号范围为1~64"));
            
            //C编号
            dictExpressionAndInfo.Add("Device", new RuleAndErrorMessage("^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-2]|0)$", "器件编号范围为1~252"));
            //C类型
            return dictExpressionAndInfo;
        }

        public Dictionary<string, RuleAndErrorMessage> GetManualControlBoardRegularExpression(int addressLength)
        {
            Dictionary<string, RuleAndErrorMessage> dictExpressionAndInfo = new Dictionary<string, RuleAndErrorMessage>();
            //编号 1-6804
            dictExpressionAndInfo.Add("Code", new RuleAndErrorMessage("^([0-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-6][0-7][0-9][0-9]|680[0-4])$", "输出组取值范围为0000~6804"));
            
            //板卡号
            dictExpressionAndInfo.Add("BoardNo", new RuleAndErrorMessage("^([0-8])$", "动作常数为0~8"));            
            
            //手盘号
            dictExpressionAndInfo.Add("SubBoardNo", new RuleAndErrorMessage("^([1-9]|1[0-2])$", "手盘号范围为1~12"));

            //手键号
            dictExpressionAndInfo.Add("KeyNo", new RuleAndErrorMessage("^([1-9]|[1-5][0-9]|6[0-3])$", "手键号范围为1~63"));

            if (addressLength == 7) //7位地址
            {
                dictExpressionAndInfo.Add("DeviceCode", new RuleAndErrorMessage("^[0-9]{7}$", "地编号最长7位"));
            }
            else //8位地址
            {
                //地编号
                dictExpressionAndInfo.Add("DeviceCode", new RuleAndErrorMessage("^[0-9]{8}$", "地编号最长8位"));
            }

            
            
            return dictExpressionAndInfo;
        
        }


        public short GetMaxAmountForMixedLinkageConfig()
        {
            return 4000;
        }

        public short GetMaxAmountForGeneralLinkageConfig()
        {
            return 2000;
        }


        public short GetMaxAmountForManualControlBoardConfig()
        {
            return 6804;
        }


        public short GetMaxAmountForBoardNoInManualControlBoardConfig()
        {
            return 8;
        }

        public short GetMaxAmountForSubBoardNoInManualControlBoardConfig()
        {
            return 12;
        }

        public short GetMaxAmountForKeyNoInManualControlBoardConfig()
        {
            return 63;
        }

        public int DefaultDeviceTypeCode
        {
            get
            {
                return _defaultDeviceTypeCode;
            }
            set
            {
                _defaultDeviceTypeCode = value;
            }
        }
  
    }
}
