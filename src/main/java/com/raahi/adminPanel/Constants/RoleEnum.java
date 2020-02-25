package com.raahi.adminPanel.Constants;

public enum RoleEnum {

	HEADOFFICER("Head Officer"),
	RAAHIADMIN("Raahi Admin"),
	Staff("Staff"),
	USer("User");

	private final String roles;
	
	private RoleEnum(String roles) {
        this.roles = roles;
    }

    public String getRoles() {
        return roles;
    }
}
