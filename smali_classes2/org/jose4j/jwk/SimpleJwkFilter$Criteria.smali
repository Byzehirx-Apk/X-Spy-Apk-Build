.class Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/SimpleJwkFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Criteria"
.end annotation


# instance fields
.field noValueOk:Z

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move v2, p2

    .local v2, "noValueOk":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 148
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->value:Ljava/lang/String;

    .line 149
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->noValueOk:Z

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    .local v3, "x2":Lorg/jose4j/jwk/SimpleJwkFilter$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public meetsCriteria(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 156
    move-object v2, v0

    iget-boolean v2, v2, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->noValueOk:Z

    move v0, v2

    .line 160
    .end local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method
