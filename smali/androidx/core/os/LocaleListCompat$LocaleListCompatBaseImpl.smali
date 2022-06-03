.class Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatBaseImpl"
.end annotation


# instance fields
.field private mLocaleList:Landroidx/core/os/LocaleListHelper;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v1, v0

    new-instance v2, Landroidx/core/os/LocaleListHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/Locale;

    invoke-direct {v3, v4}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v2, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v3, v1

    check-cast v3, Landroidx/core/os/LocaleListCompat;

    invoke-virtual {v3}, Landroidx/core/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListHelper;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    if-eqz v2, :cond_0

    .line 97
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListHelper;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .line 99
    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListHelper;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 4
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListHelper;->indexOf(Ljava/util/Locale;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListHelper;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .locals 7
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, p1

    .local v1, "list":[Ljava/util/Locale;
    move-object v2, v0

    new-instance v3, Landroidx/core/os/LocaleListHelper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v3, v2, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 44
    return-void
.end method

.method public size()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListHelper;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListHelper;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListHelper;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    return-object v0
.end method
