.class public abstract Lorg/jose4j/jwa/AlgorithmInfo;
.super Ljava/lang/Object;
.source "AlgorithmInfo.java"

# interfaces
.implements Lorg/jose4j/jwa/Algorithm;


# instance fields
.field private algorithmIdentifier:Ljava/lang/String;

.field private javaAlgorithm:Ljava/lang/String;

.field private keyPersuasion:Lorg/jose4j/keys/KeyPersuasion;

.field private keyType:Ljava/lang/String;

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    iput-object v2, v1, Lorg/jose4j/jwa/AlgorithmInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmInfo;->algorithmIdentifier:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmInfo;
    return-object v0
.end method

.method public getJavaAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmInfo;->javaAlgorithm:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmInfo;
    return-object v0
.end method

.method public getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmInfo;->keyPersuasion:Lorg/jose4j/keys/KeyPersuasion;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmInfo;
    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwa/AlgorithmInfo;->keyType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwa/AlgorithmInfo;
    return-object v0
.end method

.method public setAlgorithmIdentifier(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, p1

    .local v1, "algorithmIdentifier":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwa/AlgorithmInfo;->algorithmIdentifier:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setJavaAlgorithm(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, p1

    .local v1, "javaAlgorithm":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwa/AlgorithmInfo;->javaAlgorithm:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, p1

    .local v1, "keyPersuasion":Lorg/jose4j/keys/KeyPersuasion;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwa/AlgorithmInfo;->keyPersuasion:Lorg/jose4j/keys/KeyPersuasion;

    .line 62
    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwa/AlgorithmInfo;
    move-object v1, p1

    .local v1, "keyType":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwa/AlgorithmInfo;->keyType:Ljava/lang/String;

    .line 72
    return-void
.end method
