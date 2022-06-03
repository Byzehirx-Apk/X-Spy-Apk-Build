.class Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatApi24Impl"
.end annotation


# instance fields
.field private mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object v1, v0

    new-instance v2, Landroid/os/LocaleList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/Locale;

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v2, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    move-object v3, v1

    check-cast v3, Landroidx/core/os/LocaleListCompat;

    invoke-virtual {v3}, Landroidx/core/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    .line 163
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .line 165
    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 4
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .locals 7
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, p1

    .local v1, "list":[Ljava/util/Locale;
    move-object v2, v0

    new-instance v3, Landroid/os/LocaleList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v3, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    .line 110
    return-void
.end method

.method public size()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;
    return-object v0
.end method
