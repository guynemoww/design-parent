package com.cdsj.design.common.commons;

/**
 * @author teamsun_wangwei
 * @version V1.0.0
 * @Title:
 * @Package com.cdsj.design.common.commons
 * @Description: 返回码
 * @date 2018/9/26 116:11
 */
public enum ResultEnum {

    SUCCESS("000000", "操作成功"),
    PARAM_INVALID("100001", "参数无效"),
    PARAM_EMPTY("100002", "参数为空"),
    FAIL("999999", "操作失败");

    private String code;
    private String message;

    ResultEnum(String code, String message){
        this.code = code;
        this.message = message;
    }

    public static ResultEnum getByCode(String code){
        if(code == null || code.equals("")){
            return null;
        }
        for(ResultEnum item : ResultEnum.values()){
            if(item.getCode().equals(code)){
                return item;
            }
        }
        return null;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
