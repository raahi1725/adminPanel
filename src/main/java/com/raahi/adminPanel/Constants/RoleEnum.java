package com.raahi.adminPanel.Constants;

public enum RoleEnum {

	SUPERADMIN("Super Admin"),
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
