package com.Registration.portal.model;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.LinkedHashMap;
import java.util.Map;

public class Student {

    @NotNull(message = "please enter value")
    @Size(min = 1, message = "please enter value")
    private String firstName;
    @NotNull(message = "please enter value")
    @Size(min = 1, message = "please enter value")
    private String lastName;
    @NotNull(message = "please enter mail")
    @Size(min = 1, message ="please enter mail" )
    private String Email;
    private String country;
    private String language;
    private String [] operatingSystems;

    private Map<String, String> countryOptions;

    public Student(){
        countryOptions = new LinkedHashMap<>();
        countryOptions.put("IN", "India");
        countryOptions.put("US", "USA");
        countryOptions.put("CN", "Canada");
        countryOptions.put("GR", "Germany");
        countryOptions.put("UK", "United Kingdom");
        countryOptions.put("FR", "France");
    }

    public String[] getOperatingSystems() {
        return operatingSystems;
    }

    public void setOperatingSystems(String[] operatingSystems) {
        this.operatingSystems = operatingSystems;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Map<String, String> getCountryOptions() {
        return countryOptions;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

}