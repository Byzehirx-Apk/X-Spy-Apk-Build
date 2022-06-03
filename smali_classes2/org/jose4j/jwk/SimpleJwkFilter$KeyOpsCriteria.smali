.class Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/SimpleJwkFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyOpsCriteria"
.end annotation


# instance fields
.field noValueOk:Z

.field values:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
    move-object v1, p1

    .local v1, "values":[Ljava/lang/String;
    move v2, p2

    .local v2, "noValueOk":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 172
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->values:[Ljava/lang/String;

    .line 173
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->noValueOk:Z

    .line 174
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
    move-object v1, p1

    .local v1, "x0":[Ljava/lang/String;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    .local v3, "x2":Lorg/jose4j/jwk/SimpleJwkFilter$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;-><init>([Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public meetsCriteria(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
    move-object v1, p1

    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 180
    move-object v6, v0

    iget-boolean v6, v6, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->noValueOk:Z

    move v0, v6

    .line 191
    .end local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
    :goto_0
    return v0

    .line 184
    .restart local v0    # "this":Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->values:[Ljava/lang/String;

    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 186
    .local v5, "value":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 184
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method
