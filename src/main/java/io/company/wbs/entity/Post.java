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
@Table(name = "POST")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "POST_ID")
    private Long postId;

    @Column(name = "POST_DESCRIPTION")
    private String  postDescription;

    @Column(name = "POST_TITTLE")
    private String  postTittle;

    @Column(name = "POST_CONTENT")
    private String  postContent;

    @Column(name = "USER_ID")
    private Long userId;

    @Column(name = "POST_COMMENTS")
    private Long  postComments;

    @Column(name = "POST_THUMBNAIL")
    private String  postThumbnail;

    @Column(name = "POST_LIKES")
    private Long  postLikes;

    @Column(name = "CREATED_DATE")
    private Date createdDate;

    @Column(name = "CREATED_BY")
    private Long createdBy;

    @Column(name = "MODIFIED_DATE")
    private Date modifiedDate;

    @Column(name = "MODIFIED_BY")
    private Long modifiedBy;
}
