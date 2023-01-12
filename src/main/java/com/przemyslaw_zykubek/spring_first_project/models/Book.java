package com.przemyslaw_zykubek.spring_first_project.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private long id;

    private String title;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override public String toString() {
        return "Book [id=" + id + ", title=" + title + "]";
    }
}
