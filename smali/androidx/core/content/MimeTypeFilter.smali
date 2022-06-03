.class public final Landroidx/core/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/MimeTypeFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "mimeType":Ljava/lang/String;
    move-object v1, p1

    .local v1, "filters":[Ljava/lang/String;
    move-object v8, v0

    if-nez v8, :cond_0

    .line 94
    const/4 v8, 0x0

    move-object v0, v8

    .line 105
    .end local v0    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 97
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    move-object v8, v0

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 98
    .local v2, "mimeTypeParts":[Ljava/lang/String;
    move-object v8, v1

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 99
    .local v6, "filter":Ljava/lang/String;
    move-object v8, v6

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 100
    .local v7, "filterParts":[Ljava/lang/String;
    move-object v8, v2

    move-object v9, v7

    invoke-static {v8, v9}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 98
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 105
    .end local v6    # "filter":Ljava/lang/String;
    .end local v7    # "filterParts":[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "mimeTypes":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "filter":Ljava/lang/String;
    move-object v8, v0

    if-nez v8, :cond_0

    .line 116
    const/4 v8, 0x0

    move-object v0, v8

    .line 127
    .end local v0    # "mimeTypes":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 119
    .restart local v0    # "mimeTypes":[Ljava/lang/String;
    :cond_0
    move-object v8, v1

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 120
    .local v2, "filterParts":[Ljava/lang/String;
    move-object v8, v0

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 121
    .local v6, "mimeType":Ljava/lang/String;
    move-object v8, v6

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 122
    .local v7, "mimeTypeParts":[Ljava/lang/String;
    move-object v8, v7

    move-object v9, v2

    invoke-static {v8, v9}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    move-object v8, v6

    move-object v0, v8

    goto :goto_0

    .line 120
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 127
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "mimeTypeParts":[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "mimeType":Ljava/lang/String;
    move-object v1, p1

    .local v1, "filter":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 77
    const/4 v4, 0x0

    move v0, v4

    .line 83
    .end local v0    # "mimeType":Ljava/lang/String;
    :goto_0
    return v0

    .line 80
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 81
    .local v2, "mimeTypeParts":[Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 83
    .local v3, "filterParts":[Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "mimeTypes":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "filter":Ljava/lang/String;
    move-object v9, v0

    if-nez v9, :cond_0

    .line 138
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    move-object v0, v9

    .line 150
    .end local v0    # "mimeTypes":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 141
    .restart local v0    # "mimeTypes":[Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v9

    .line 142
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v9, v1

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 143
    .local v3, "filterParts":[Ljava/lang/String;
    move-object v9, v0

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_2

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 144
    .local v7, "mimeType":Ljava/lang/String;
    move-object v9, v7

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 145
    .local v8, "mimeTypeParts":[Ljava/lang/String;
    move-object v9, v8

    move-object v10, v3

    invoke-static {v9, v10}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 143
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 150
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "mimeTypeParts":[Ljava/lang/String;
    :cond_2
    move-object v9, v2

    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    goto :goto_0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "mimeTypeParts":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "filterParts":[Ljava/lang/String;
    move-object v2, v1

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Ill-formatted MIME type filter. Must be type/subtype."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Ill-formatted MIME type filter. Type or subtype empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_2
    move-object v2, v0

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 57
    const/4 v2, 0x0

    move v0, v2

    .line 68
    .end local v0    # "mimeTypeParts":[Ljava/lang/String;
    :goto_0
    return v0

    .line 59
    .restart local v0    # "mimeTypeParts":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "*"

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 61
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 63
    :cond_4
    const-string/jumbo v2, "*"

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 65
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 68
    :cond_5
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method
