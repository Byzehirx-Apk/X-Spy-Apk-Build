.class public Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final character:C

.field private final fontFamily:Ljava/lang/String;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final size:D

.field private final style:Ljava/lang/String;

.field private final width:D


# direct methods
.method public constructor <init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;CDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v1, p1

    .local v1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    move v2, p2

    .local v2, "character":C
    move-wide/from16 v3, p3

    .local v3, "size":D
    move-wide/from16 v5, p5

    .local v5, "width":D
    move-object/from16 v7, p7

    .local v7, "style":Ljava/lang/String;
    move-object/from16 v8, p8

    .local v8, "fontFamily":Ljava/lang/String;
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    .line 32
    move-object v9, v0

    move v10, v2

    iput-char v10, v9, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    .line 33
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/airbnb/lottie/model/FontCharacter;->size:D

    .line 34
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 35
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    .line 36
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 15
    move v0, p0

    .local v0, "character":C
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/String;
    move-object v2, p2

    .local v2, "style":Ljava/lang/String;
    const/4 v4, 0x0

    move v3, v4

    .line 16
    .local v3, "result":I
    const/16 v4, 0x1f

    move v5, v3

    mul-int/2addr v4, v5

    move v5, v0

    add-int/2addr v4, v5

    move v3, v4

    .line 17
    const/16 v4, 0x1f

    move v5, v3

    mul-int/2addr v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 18
    const/16 v4, 0x1f

    move v5, v3

    mul-int/2addr v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 19
    move v4, v3

    move v0, v4

    .end local v0    # "character":C
    return v0
.end method


# virtual methods
.method public getShapes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ShapeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/FontCharacter;
    return-object v0
.end method

.method getSize()D
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v1, v0

    iget-wide v1, v1, Lcom/airbnb/lottie/model/FontCharacter;->size:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/FontCharacter;
    return-wide v0
.end method

.method getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/FontCharacter;
    return-object v0
.end method

.method public getWidth()D
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v1, v0

    iget-wide v1, v1, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/FontCharacter;
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/FontCharacter;
    move-object v1, v0

    iget-char v1, v1, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/FontCharacter;
    return v0
.end method
