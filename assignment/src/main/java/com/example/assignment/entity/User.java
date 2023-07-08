package com.example.assignment.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Table(name = "User1")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class User {
    @Id
    @Column(name = "id")
    private int id;

    @NotNull
    @Size(min = 4, max =500)
    @NotBlank(message = "Name is required")
   @Column(name = "username")
    private String username;

    @NotNull(message = "Password not null")
    @Size(min = 5, message = "Password must be at least 6 characters long")
    @Column(name = "password")
    private String password;

    public User(String username, String password) {
    }
}
