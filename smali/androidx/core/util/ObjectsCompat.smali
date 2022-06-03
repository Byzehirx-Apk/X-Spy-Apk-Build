.class public Landroidx/core/util/ObjectsCompat;
.super Ljava/lang/Object;
.source "ObjectsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/ObjectsCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 53
    .end local v0    # "a":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local v0    # "a":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 3
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "values":[Ljava/lang/Object;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 93
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 95
    .end local v0    # "values":[Ljava/lang/Object;
    :goto_0
    return v0

    .restart local v0    # "values":[Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "o":Ljava/lang/Object;
    return v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
