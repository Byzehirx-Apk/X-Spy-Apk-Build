.class public Lorg/jose4j/jwx/CompactSerialization;
.super Ljava/lang/Object;
.source "CompactSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwx/CompactSerialization;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "cs":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/jwx/CompactSerializer;->deserialize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "cs":Ljava/lang/String;
    return-object v0
.end method

.method public static varargs serialize([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "parts":[Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "parts":[Ljava/lang/String;
    return-object v0
.end method
