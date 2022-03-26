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
public class person {
    public String nameString;
    public String birthDayString;
    public String sdtString;
    public String addressString;

    public String getNameString() {
        return nameString;
    }

    public void setNameString(String nameString) {
        this.nameString = nameString;
    }

    public String getBirthDayString() {
        return birthDayString;
    }

    public void setBirthDayString(String birthDayString) {
        this.birthDayString = birthDayString;
    }

    public String getSdtString() {
        return sdtString;
    }

    public void setSdtString(String sdtString) {
        this.sdtString = sdtString;
    }

    public String getAddressString() {
        return addressString;
    }

    public void setAddressString(String addressString) {
        this.addressString = addressString;
    }

    public person(String nameString, String birthDayString, String sdtString, String addressString) {
        this.nameString = nameString;
        this.birthDayString = birthDayString;
        this.sdtString = sdtString;
        this.addressString = addressString;
    }

    @Override
    public String toString() {
        return "person{" + "nameString=" + nameString + ", birthDayString=" + birthDayString + ", sdtString=" + sdtString + ", addressString=" + addressString + '}';
    }
    
    
}
