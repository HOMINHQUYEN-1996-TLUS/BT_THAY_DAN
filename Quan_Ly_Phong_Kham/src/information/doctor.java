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
public class doctor extends person{
    public String idDoctorString;

    public doctor(String idString,String nameString, String birthDayString, String sdtString, String addressString) {        
        super(nameString, birthDayString, sdtString, addressString);
        this.idDoctorString = idString;
    }

    public String getIdDoctorString() {
        return idDoctorString;
    }

    public void setIdDoctorString(String idDoctorString) {
        this.idDoctorString = idDoctorString;
    }
    
}
