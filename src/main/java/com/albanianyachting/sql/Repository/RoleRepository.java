package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.Role;
import com.albanianyachting.sql.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    @Query(value = "SELECT r FROM Role r WHERE r.id = :id")
    Role findOne(@Param("id") Long id);
}
