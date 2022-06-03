.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;
.super Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.source "HmacUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;
    move-object v1, v0

    const-string/jumbo v2, "HS512"

    const-string/jumbo v3, "HmacSHA512"

    const/16 v4, 0x200

    invoke-direct {v1, v2, v3, v4}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
.end method
