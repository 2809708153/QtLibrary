#pragma once
#include "BorrowList.h"

class ReturnList:public BorrowList{
private:
    int returnListId;   //还书单编号
    int adminId;        //处理归还申请的管理员账号
    tm returnedTime;    //归还时间
    bool isOverdue;     //是否超期

public:
    ReturnList(){}
    ReturnList(int id,BorrowList &borrowList,tm &time,int adminId=0):BorrowList(borrowList),returnListId(id),adminId(adminId),returnedTime(time){
        isOverdue=IsOverdue();
    }
    bool operator==(const ReturnList &returnList)const{         //对"=="进行操作符重载
        if (returnListId == returnList.returnListId) {
            return true;
        } else {
            return false;
        }
    }
    ~ReturnList(){}
    int get_returnListId(){        //返回还书单编号
        return returnListId;
    }
    int get_adminId(){             //返回读者id（学号）
        return adminId;
    }
    string get_returnedTime(){     //返回还书时间
        string time = asctime(&returnedTime);
        return time;
    }
    void PermitReturn(int id){     //借书许可
        adminId=id;
    }
    bool IsPermitted(){            //借书许可
        return adminId;
    }
    bool IsOverdue(){              //是否超期
        tm* returnTime=get_returnTime_tm();
        time_t timeToReturn=mktime(returnTime);
        time_t timeReturn = mktime(&returnedTime);
        return timeToReturn < timeReturn;
    }
};


//index
