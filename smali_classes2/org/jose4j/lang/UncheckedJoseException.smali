.class public Lorg/jose4j/lang/UncheckedJoseException;
.super Ljava/lang/RuntimeException;
.source "UncheckedJoseException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/UncheckedJoseException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/UncheckedJoseException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
