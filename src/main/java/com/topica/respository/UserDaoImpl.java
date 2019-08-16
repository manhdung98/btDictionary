package com.topica.respository;

import com.topica.model.EngtovieEntity;
import com.topica.model.UserEntity;
import com.topica.model.VietoengEntity;
import org.hibernate.Session;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.Dictionary;
import java.util.List;

@Repository
@Transactional
public class UserDaoImpl implements UserDao{

    @PersistenceContext
    private EntityManager entityManager;

    public List<UserEntity> getUser(String username) {
        TypedQuery<UserEntity> query;
         query = entityManager.createQuery(" FROM UserEntity  WHERE username = :username",UserEntity.class);
        query.setParameter("username", username);
        return query.getResultList();
    }

    public void saveEng(EngtovieEntity e) {
        entityManager.persist(e);
    }

    public void saveVie(VietoengEntity v) {
        entityManager.persist(v);
    }

    @SuppressWarnings("unchecked")
    public List<EngtovieEntity> getallEng(Integer offset, Integer maxResults) {
        return entityManager
                .createQuery("FROM EngtovieEntity ", EngtovieEntity.class)
//                .createCriteria(EngtovieEntity.class)
                .setFirstResult(offset!=null?offset:0)
                .setMaxResults(maxResults!=null?maxResults:5)
                .getResultList();
//        Session session = sessionFactory.openSession();
//        return session.createQuery("FROM EngtovieEntity ", EngtovieEntity.class).getResultList();
    }

    public List<VietoengEntity> getallVie() {

        return entityManager.createQuery("FROM VietoengEntity ", VietoengEntity.class).getResultList();

    }

    public List<EngtovieEntity> searchWord(String word) {

        return entityManager.createQuery("FROM EngtovieEntity WHERE word = :word", EngtovieEntity.class).setParameter("word", word).getResultList();
    }


    public void deleteWord(int id) {
        EngtovieEntity w = entityManager.find(EngtovieEntity.class, id);
        System.out.println(w.getWord());
        entityManager.remove(w);
    }
    public  EngtovieEntity getEng(int id) {
        return entityManager.find(EngtovieEntity.class, id);
    }

    @SuppressWarnings("unchecked")
    public Long count() {
        return (Long) entityManager
                .createQuery("Select COUNT(*) FROM EngtovieEntity ")
                .getSingleResult();
    }
//    public Long count() {
//        return ((Number) (TypedQuery<EngtovieEntity>)entityManager
//                .createQuery("FROM EngtovieEntity ")
//                .getSingleResult()).longValue();
////        return (Long)sessionFactory.openSession()
////                .createCriteria(EngtovieEntity.class)
////                .setProjection(Projections.rowCount())
////                .uniqueResult();
//    }

    public void upDateEng(EngtovieEntity e) {
        Query query = entityManager.createQuery("update EngtovieEntity as e set e.mean = :mean where e.id = :id");
        query.setParameter("mean", e.getMean());
        query.setParameter("id", e.getId());
        query.executeUpdate();
    }
}
