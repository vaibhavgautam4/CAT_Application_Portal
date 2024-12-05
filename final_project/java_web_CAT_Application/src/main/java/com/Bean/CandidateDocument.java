package com.Bean;

public class CandidateDocument {
	  
	 private int candidateId;

	  private byte[] profilePhoto;

	  private byte[] aadharCard;

	  private byte[] signaturePhoto;
	  



	  public CandidateDocument(int candidateId, byte[] profilePhoto, byte[] aadharCard, byte[] signaturePhoto) {

	    this.candidateId = candidateId;

	    this.profilePhoto = profilePhoto;

	    this.aadharCard = aadharCard;

	    this.signaturePhoto = signaturePhoto;

	  }



	  public int getCandidateId() {

	    return candidateId;

	  }



	  public void setCandidateId(int candidateId) {

	    this.candidateId = candidateId;

	  }



	  public byte[] getProfilePhoto() {

	    return profilePhoto;

	  }



	  public void setProfilePhoto(byte[] profilePhoto) {

	    this.profilePhoto = profilePhoto;

	  }



	  public byte[] getAadharCard() {

	    return aadharCard;

	  }



	  public void setAadharCard(byte[] aadharCard) {

	    this.aadharCard = aadharCard;

	  }



	  public byte[] getSignaturePhoto() {

	    return signaturePhoto;

	  }



	  public void setSignaturePhoto(byte[] signaturePhoto) {

	    this.signaturePhoto = signaturePhoto;

	  }



}
