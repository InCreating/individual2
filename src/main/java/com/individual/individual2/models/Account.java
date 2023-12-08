package com.individual.individual2.models;

import jakarta.persistence.*;
import lombok.ToString;

@Entity
@ToString
@Table(name = "accounts")
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "accountID")
    private Integer accountId;

    @Column(name = "balance")
    private double balance;

    @Column(name = "available")
    private boolean available;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "userID")
    private User user;

    public Account() {
    }

    public Account(User user, double balance, boolean available) {
        this.user = user;
        this.balance = balance;
        this.available = available;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) { // Изменен тип параметра
        this.user = user;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountId=" + accountId +
                ", balance=" + balance +
                ", available=" + available +
                '}';
    }
}
