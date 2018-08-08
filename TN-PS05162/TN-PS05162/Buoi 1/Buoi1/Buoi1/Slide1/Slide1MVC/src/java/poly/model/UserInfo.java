/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.model;

/**
 *
 * @author Tu Ech
 */
public class UserInfo {
    private String username;
    private String password;
    public UserInfo() {
        this.username="";
        this.password="";
    }
    public UserInfo(String username, String password) {
        this.username = username;
        this.password = password;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean CheckLogin(){
        if(username.equals("fpt")&&password.equals("poly"))
            return true;
        return false;
    }
}
