package io.company.wbs.repo;

import io.company.wbs.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepo extends JpaRepository<Role,Long> {
    Role findByRoleName(String name);
}
