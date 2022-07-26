package io.company.wbs.entity;

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
@Table(name = "FOLLOW")
public class Follow {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "FOLLOW_ID")
    private Long followId;

    @Column(name = "USER_ID")
    private Long userId;

    @Column(name = "FOLLOWER_ID")
    private Long followerId;

    @Column(name = "CREATED_DATE")
    private Date createdDate;

    @Column(name = "CREATED_BY")
    private Long createdBy;

    @Column(name = "MODIFIED_DATE")
    private Date modifiedDate;

    @Column(name = "MODIFIED_BY")
    private Long modifiedBy;
}
