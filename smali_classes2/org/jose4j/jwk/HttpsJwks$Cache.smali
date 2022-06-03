.class Lorg/jose4j/jwk/HttpsJwks$Cache;
.super Ljava/lang/Object;
.source "HttpsJwks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/HttpsJwks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final created:J

.field private final exp:J

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 302
    move-object v1, p0

    .local v1, "this":Lorg/jose4j/jwk/HttpsJwks$Cache;
    move-object v2, p1

    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/jose4j/jwk/JsonWebKey;>;"
    move-wide v3, p2

    .local v3, "exp":J
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 299
    move-object v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/jose4j/jwk/HttpsJwks$Cache;->created:J

    .line 303
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lorg/jose4j/jwk/HttpsJwks$Cache;->keys:Ljava/util/List;

    .line 304
    move-object v5, v1

    move-wide v6, v3

    iput-wide v6, v5, Lorg/jose4j/jwk/HttpsJwks$Cache;->exp:J

    .line 305
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;JLorg/jose4j/jwk/HttpsJwks$1;)V
    .locals 10

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/HttpsJwks$Cache;
    move-object v1, p1

    .local v1, "x0":Ljava/util/List;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lorg/jose4j/jwk/HttpsJwks$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/jose4j/jwk/HttpsJwks$Cache;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$100(Lorg/jose4j/jwk/HttpsJwks$Cache;)J
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "x0":Lorg/jose4j/jwk/HttpsJwks$Cache;
    move-object v1, v0

    iget-wide v1, v1, Lorg/jose4j/jwk/HttpsJwks$Cache;->exp:J

    move-wide v0, v1

    .end local v0    # "x0":Lorg/jose4j/jwk/HttpsJwks$Cache;
    return-wide v0
.end method

.method static synthetic access$200(Lorg/jose4j/jwk/HttpsJwks$Cache;)Ljava/util/List;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "x0":Lorg/jose4j/jwk/HttpsJwks$Cache;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/jwk/HttpsJwks$Cache;->keys:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lorg/jose4j/jwk/HttpsJwks$Cache;
    return-object v0
.end method

.method static synthetic access$300(Lorg/jose4j/jwk/HttpsJwks$Cache;)J
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "x0":Lorg/jose4j/jwk/HttpsJwks$Cache;
    move-object v1, v0

    iget-wide v1, v1, Lorg/jose4j/jwk/HttpsJwks$Cache;->created:J

    move-wide v0, v1

    .end local v0    # "x0":Lorg/jose4j/jwk/HttpsJwks$Cache;
    return-wide v0
.end method
