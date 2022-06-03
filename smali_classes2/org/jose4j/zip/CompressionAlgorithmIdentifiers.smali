.class public Lorg/jose4j/zip/CompressionAlgorithmIdentifiers;
.super Ljava/lang/Object;
.source "CompressionAlgorithmIdentifiers.java"


# static fields
.field public static final DEFLATE:Ljava/lang/String; = "DEF"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/zip/CompressionAlgorithmIdentifiers;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
