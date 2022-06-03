.class public Lkawa/standard/char_ready_p;
.super Ljava/lang/Object;
.source "char_ready_p.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lkawa/standard/char_ready_p;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ready(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v2, v0

    :try_start_0
    instance-of v2, v2, Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 9
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 17
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_1
    return v0

    .line 9
    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/io/Reader;

    if-eqz v2, :cond_2

    .line 11
    move-object v2, v0

    check-cast v2, Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v2

    move v0, v2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "invalid argument to char-ready?"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 17
    .local v1, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
