/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package information;

/**
 *
 * @author quyen
 */
public class customer extends person{
    public String idCustomerString;

    public customer(String idCustomerString,String nameString, String birthDayString, String sdtString, String addressString) {
        super(nameString, birthDayString, sdtString, addressString);
        this.idCustomerString = idCustomerString;
    }

    public String getIdCustomerString() {
        return idCustomerString;
    }

    public void setIdCustomerString(String idCustomerString) {
        this.idCustomerString = idCustomerString;
    }
    
    
}
