public class Apartment {
  private String add;
  private String aptNum;
  private String aptCity;
  private String zipCode;
  private double rentCost;
  private double sqFoot;

  Apartment() {
    this("", "", "", "", 0, 0);
  }

  Apartment(String address, String num, String city, String zip, double rent, double size) {
    setAdd(address);
    setAptNum(num);
    setAptCity(city);
    setZipCode(zip);
    setRentCost(rent);
    setSqFoot(size);
  }

  Apartment(Apartment other) {
    this.setAdd(other.getAdd());
    this.setAptNum(other.getAptNum());
    this.setAptCity(other.getAptCity());
    this.setZipCode(other.getZipCode());
    this.setRentCost(other.getRentCost());
    this.setSqFoot(other.getSqFoot());
  }

  public void setAdd(String address) {
    add = address;
    return;
  }

  public String getAdd() {
    return add;
  }

  public void setAptNum(String num) {
    aptNum = num;
    return;
  }

  public String getAptNum() {
    return aptNum;
  }

  public void setAptCity(String city) {
    aptCity = city;
    return;
  }

  public String getAptCity() {
    return aptCity;
  }

  public void setZipCode(String zip) {
    zipCode = zip;
    return;
  }

  public String getZipCode() {
    return zipCode;
  }

  public void setRentCost(double rent) {
    rentCost = rent;
    return;
  }

  public double getRentCost() {
    return rentCost;
  }

  public void setSqFoot(double size) {
    sqFoot = size;
    return;
  }

  public double getSqFoot() {
    return sqFoot;
  }
}
