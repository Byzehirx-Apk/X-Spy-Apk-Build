.class public Lorg/jose4j/jwt/consumer/JwtContext;
.super Ljava/lang/Object;
.source "JwtContext.java"


# instance fields
.field private joseObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;"
        }
    .end annotation
.end field

.field private jwt:Ljava/lang/String;

.field private jwtClaims:Lorg/jose4j/jwt/JwtClaims;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jose4j/jwt/JwtClaims;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v1, p1

    .local v1, "jwt":Ljava/lang/String;
    move-object v2, p2

    .local v2, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    move-object v3, p3

    .local v3, "joseObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/JwtContext;->jwt:Ljava/lang/String;

    .line 42
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    .line 43
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwt/JwtClaims;",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v1, p1

    .local v1, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    move-object v2, p2

    .local v2, "joseObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwx/JsonWebStructure;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    .line 36
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getJoseObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtContext;
    return-object v0
.end method

.method public getJwt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/JwtContext;->jwt:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtContext;
    return-object v0
.end method

.method public getJwtClaims()Lorg/jose4j/jwt/JwtClaims;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/jwt/consumer/JwtContext;
    return-object v0
.end method

.method setJwtClaims(Lorg/jose4j/jwt/JwtClaims;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwt/consumer/JwtContext;
    move-object v1, p1

    .local v1, "jwtClaims":Lorg/jose4j/jwt/JwtClaims;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    .line 58
    return-void
.end method
