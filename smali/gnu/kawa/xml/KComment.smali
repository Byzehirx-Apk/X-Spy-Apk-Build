.class public Lgnu/kawa/xml/KComment;
.super Lgnu/kawa/xml/KCharacterData;
.source "KComment.java"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 6

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KComment;
    move-object v1, p1

    .local v1, "seq":Lgnu/xml/NodeTree;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KCharacterData;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/KComment;
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    new-instance v2, Lgnu/xml/NodeTree;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/xml/NodeTree;-><init>()V

    move-object v1, v2

    .line 32
    .local v1, "tree":Lgnu/xml/NodeTree;
    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lgnu/xml/NodeTree;->writeComment(Ljava/lang/String;II)V

    .line 33
    new-instance v2, Lgnu/kawa/xml/KComment;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KComment;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KComment;
    const-string/jumbo v1, "#comment"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KComment;
    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/KComment;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/KComment;
    return v0
.end method
