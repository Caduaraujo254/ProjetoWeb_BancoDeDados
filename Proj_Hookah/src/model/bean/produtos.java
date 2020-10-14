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
public class produtos {



    private int Quant, Cod;
    private String Descricao;
    private float Preco;
    
    
    public produtos() {
    }

    public produtos(int Cod, String Descricao, int Quant, float Preco) {
        this.Quant = Quant;
        this.Descricao = Descricao;
        this.Preco = Preco;
    }    

    public int getCod() {
        return Cod;
    }

    public void setCod(int Cod) {
        this.Cod = Cod;
    }
    
    public int getQuant() {
        return Quant;
    }

    public void setQuant(int Quant) {
        this.Quant = Quant;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String Descricao) {
        this.Descricao = Descricao;
    }
    
     public float getPreco() {
        return Preco;
    }

    public void setPreco(float Preco) {
        this.Preco = Preco;
    }
}
