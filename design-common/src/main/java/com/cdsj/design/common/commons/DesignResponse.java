package com.cdsj.design.common.commons;

import java.io.Serializable;

/**
 * @author teamsun_wangwei
 * @version V1.0.0
 * @Title:
 * @Package com.cdsj.design.common.commons
 * @Description:
 * @date 2018/9/26 16:40
 */
public class DesignResponse<T> implements Serializable{
    private static final long serialVersionUID = 6265751078934830339L;

    private String code = ResultEnum.SUCCESS.getCode();
    private String message = ResultEnum.SUCCESS.getMessage();
    private T data;

    public DesignResponse(){}

    public DesignResponse(ResultEnum resultEnum){
        this.code = resultEnum.getCode();
        this.message = resultEnum.getMessage();
    }

    public static<T> DesignResponse result(ResultEnum resultEnum, T data){
        DesignResponse designResponse = new DesignResponse(resultEnum);
        designResponse.setData(data);
        return designResponse;
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

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}