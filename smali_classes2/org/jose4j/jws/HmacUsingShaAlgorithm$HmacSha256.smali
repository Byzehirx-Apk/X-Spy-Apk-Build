.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
.super Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.source "HmacUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
    move-object v1, v0

    const-string/jumbo v2, "HS256"

    const-string/jumbo v3, "HmacSHA256"

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    return-void
.end method
