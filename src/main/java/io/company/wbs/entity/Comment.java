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
@Table(name = "COMMENT")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "COMMENT_ID")
    private Long commentId;

    @Column(name = "COMMENT_GROUP_ID")
    private Long commentGroupId;

    @Column(name = "COMMENT_CONTENT")
    private String commentContent;

    @Column(name = "USER_ID")
    private Long userId;

    @Column(name = "POST_ID")
    private Long postId;

    @Column(name = "CREATED_DATE")
    private Date createdDate;

    @Column(name = "CREATED_BY")
    private Long createdBy;

    @Column(name = "MODIFIED_DATE")
    private Date modifiedDate;

    @Column(name = "MODIFIED_BY")
    private Long modifiedBy;
}
