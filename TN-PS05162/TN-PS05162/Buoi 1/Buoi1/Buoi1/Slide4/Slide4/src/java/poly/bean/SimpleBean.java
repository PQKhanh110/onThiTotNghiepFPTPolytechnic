/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.bean;

/**
 *
 * @author Administrator
 */
public class SimpleBean {
    private String message ="First Bean";
    public String getMessage()
    {
        return message;
    }
    public void setMessage(String message){
            this.message=message;
    }
    public SimpleBean() {
    }    
}
