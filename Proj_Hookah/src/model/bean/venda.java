/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Carlos Eduardo
 */
public class venda {

    String item;
    int qtd;
    int id;

    public venda(int id, String item, int qtd) {
        this.item = item;
        this.qtd = qtd;
        this.id = id; 
    }
    
    public venda(String item, int qtd) {
        this.item = item;
        this.qtd = qtd;
    }

    public venda() {
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }  
}
