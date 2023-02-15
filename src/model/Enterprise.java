package model;

public class Enterprise {
    private String Ent_id;
    private String Ent_name;
    private String Begin_date;
    private String Addr;
    private double Reg_capital;

    public String getEnt_id() {
        return Ent_id;
    }

    public void setEnt_id(String ent_id) {
        Ent_id = ent_id;
    }

    public String getEnt_name() {
        return Ent_name;
    }

    public void setEnt_name(String ent_name) {
        Ent_name = ent_name;
    }

    public String getBegin_date() {
        return Begin_date;
    }

    public void setBegin_date(String begin_date) {
        Begin_date = begin_date;
    }

    public String getAddr() {
        return Addr;
    }

    public void setAddr(String addr) {
        Addr = addr;
    }

    public double getReg_capital() {
        return Reg_capital;
    }

    public void setReg_capital(double reg_capital) {
        Reg_capital = reg_capital;
    }
}
