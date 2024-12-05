package com.Bean;

public class dataFilled {
    private int cid;
    private boolean academicsDone = false;
    private boolean candidateDone = false;
    private boolean photoDone = false;
    private boolean regiserDone = false;
    private boolean cityDone = false;
    private boolean workDone = false;
    private boolean paymentDone = false;
    private boolean admitDone = false;
    private boolean admin = false;
    
    

    public dataFilled() {
        super();
        this.academicsDone = false;
        this.candidateDone = false;
        this.photoDone = false;
        this.regiserDone = false;
        this.cityDone = false;
        this.workDone = false;
        this.paymentDone = false;
        this.admin = false;
    }

    public dataFilled(int cid,boolean regiserDone, boolean candidateDone, boolean academicsDone, boolean workDone, boolean photoDone, 
            boolean cityDone,  boolean paymentDone, boolean admitDone, boolean admin) {
        super();
        this.cid = cid;
        this.academicsDone = academicsDone;
        this.candidateDone = candidateDone;
        this.photoDone = photoDone;
        this.regiserDone = regiserDone;
        this.cityDone = cityDone;
        this.workDone = workDone;
        this.paymentDone = paymentDone;
        this.admitDone = admitDone;
        this.admin = admin;
    }


    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public boolean getRegiserDone() {
        return regiserDone;
    }

    public void setRegiserDone(boolean regiserDone) {
        this.regiserDone = regiserDone;
    }



    public boolean getCandidateDone() {
        return candidateDone;
    }


    public void setCandidateDone(boolean candidateDone) {
        this.candidateDone = candidateDone;
    }
    
    
    public boolean getAcademicsDone() {
        return academicsDone;
    }

    public void setAcademicsDone(boolean academicsDone) {
        this.academicsDone = academicsDone;
    }
    

    public boolean getWorkDone() {
        return workDone;
    }
    public void setWorkDone(boolean workDone) {
        this.workDone = workDone;
    }

    public boolean getPhotoDone() {
        return photoDone;
    }



    public void setPhotoDone(boolean photoDone) {
        this.photoDone = photoDone;
    }
    
    public boolean getCityDone() {
        return cityDone;
    }


    public void setCityDone(boolean cityDone) {
        this.cityDone = cityDone;
    }
    
    

    public boolean getPaymentDone() {
        return paymentDone;
    }

    public void setPaymentDone(boolean paymentDone) {
        this.paymentDone = paymentDone;
    }
    
    public void setAdmitDone(boolean admitDone)
    {
        this.admitDone = admitDone;
    }
    public boolean getAdmitDone()
    {
        return admitDone;
    }

    public boolean getAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    
}