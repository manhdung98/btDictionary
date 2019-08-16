package com.topica.model;

import javax.persistence.*;

@Entity
@Table(name = "vietoeng", schema = "dictionary")
public class VietoengEntity {
    private int id;
    private String word;
    private String mean;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "word", nullable = true, length = 30)
    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    @Basic
    @Column(name = "mean", nullable = true, length = 30)
    public String getMean() {
        return mean;
    }

    public void setMean(String mean) {
        this.mean = mean;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VietoengEntity that = (VietoengEntity) o;

        if (id != that.id) return false;
        if (word != null ? !word.equals(that.word) : that.word != null) return false;
        if (mean != null ? !mean.equals(that.mean) : that.mean != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (word != null ? word.hashCode() : 0);
        result = 31 * result + (mean != null ? mean.hashCode() : 0);
        return result;
    }
}
