package com.topica.respository;

import com.topica.model.EngtovieEntity;
import com.topica.model.UserEntity;
import com.topica.model.VietoengEntity;

import java.util.List;

public interface UserDao {
    public List<UserEntity> getUser(String username);
    public void saveEng(EngtovieEntity e);
    public void saveVie(VietoengEntity v);
    public List<EngtovieEntity> getallEng(Integer offset, Integer maxResult);
    public List<VietoengEntity> getallVie();
    public List<EngtovieEntity> searchWord(String word);
    public void deleteWord(int id);
    public  EngtovieEntity getEng(int id);
    public Long count();
    public void upDateEng(EngtovieEntity e);
}
