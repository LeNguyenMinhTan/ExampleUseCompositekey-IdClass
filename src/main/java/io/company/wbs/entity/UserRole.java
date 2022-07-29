package io.company.wbs.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "USER_ROLE")
@IdClass(UserRoleKey.class)
public class UserRole {

    @Id
    @Column(name = "USER_ID")
    private Long userId;

    @Id
    @Column(name = "ROLE_ID")
    private Long roleId;


    @Column(name = "CREATED_DATE")
    private Date createdDate;

    @Column(name = "CREATED_BY")
    private Long createdBy;

    @Column(name = "MODIFIED_DATE")
    private Date modifiedDate;

    @Column(name = "MODIFIED_BY")
    private Long modifiedBy;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ID", nullable = false, insertable = false, updatable = false)
    //@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    @JsonBackReference
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ROLE_ID", nullable = false, insertable = false, updatable = false)
    //@JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    @JsonBackReference
    private Role role;
}
