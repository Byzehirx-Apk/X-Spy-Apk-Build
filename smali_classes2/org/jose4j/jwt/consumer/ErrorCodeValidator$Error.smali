.class public Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
.super Ljava/lang/Object;
.source "ErrorCodeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwt/consumer/ErrorCodeValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    move v1, p1

    .local v1, "errorCode":I
    move-object v2, p2

    .local v2, "errorMessage":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->errorCode:I

    .line 61
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->errorMessage:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->errorCode:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->errorMessage:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    return-object v0
.end method
