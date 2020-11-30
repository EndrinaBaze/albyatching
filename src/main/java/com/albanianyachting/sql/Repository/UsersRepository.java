package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface UsersRepository extends SoftDeleteRepository<Users, Long> {
    @Query(value = "SELECT u FROM Users u WHERE u.id = :id")
    Users findOne(@Param("id") Long id);

//    @Query(value = "SELECT u FROM Users u WHERE u.role = :role")
//    List<Users> findUsersByRole(@Param("role") Long role);

    boolean existsByUsername(String username);

    boolean existsByUsernameAndIdIsNot(String username,Long id);


    Users findByUsername(String username);

    @Transactional
    void deleteByUsername(String username);
}
