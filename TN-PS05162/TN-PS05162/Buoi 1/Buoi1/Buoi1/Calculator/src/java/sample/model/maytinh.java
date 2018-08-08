/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.model;

import java.io.Serializable;

/**
 *
 * @author Administrator
 */
public class maytinh implements Serializable{ 
    public maytinh() {       
    }
    public double cong(int a, int b){
        return a+b;
    }
    public double tru(int a, int b){
        return a-b;
    }
    public double nhan(int a, int b){
        return a*b;
    }
    public double chia(int a, int b){
        return a/b;
    }
}
