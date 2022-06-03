.class public Lorg/jose4j/jwt/consumer/SubValidator;
.super Ljava/lang/Object;
.source "SubValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# static fields
.field private static final MISSING_SUB:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;


# instance fields
.field private expectedSubject:Ljava/lang/String;

.field private requireSubject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    const-string/jumbo v3, "No Subject (sub) claim is present."

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwt/consumer/SubValidator;->MISSING_SUB:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/SubValidator;
    move-object v1, p1

    .local v1, "expectedSubject":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/jose4j/jwt/consumer/SubValidator;-><init>(Z)V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/SubValidator;
    move v1, p1

    .local v1, "requireSubject":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/jose4j/jwt/consumer/SubValidator;->requireSubject:Z

    .line 35
    return-void
.end method


# virtual methods
.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/MalformedClaimException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/SubValidator;
    move-object v1, p1

    .local v1, "jwtContext":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v5, v1

    invoke-virtual {v5}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v5

    move-object v2, v5

    .line 47
    .local v2, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    move-object v5, v2

    invoke-virtual {v5}, Lorg/jose4j/jwt/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 48
    .local v3, "subject":Ljava/lang/String;
    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lorg/jose4j/jwt/consumer/SubValidator;->requireSubject:Z

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Lorg/jose4j/jwt/consumer/SubValidator;->MISSING_SUB:Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v0, v5

    .line 58
    .end local v0    # "this":Lorg/jose4j/jwt/consumer/SubValidator;
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "this":Lorg/jose4j/jwt/consumer/SubValidator;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Subject (sub) claim value ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") doesn\'t match expected value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwt/consumer/SubValidator;->expectedSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 55
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0xf

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 58
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method
