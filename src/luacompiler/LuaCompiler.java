/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package luacompiler;

import java.io.File;

/**
 *
 * @author rpamaral
 */
public class LuaCompiler {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       String filename = "lexical_analyser";
       //gera um arquivo .java que é o scanner da linguagem
       jflex.Main.generate(new File (filename));
       
       /* Start the parser */
        
    }
    
}
