.class public Lcom/airbnb/lottie/model/KeyPath;
.super Ljava/lang/Object;
.source "KeyPath.java"


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-object v5, v5, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 57
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    iput-object v3, v2, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 58
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "keys":[Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 50
    return-void
.end method

.method private endsWithGlobstar()Z
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return v0
.end method

.method private isContainer(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "__container"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return v0
.end method


# virtual methods
.method public addKey(Ljava/lang/String;)Lcom/airbnb/lottie/model/KeyPath;
    .locals 7
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    move-object v2, v3

    .line 71
    .local v2, "newKeyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v3, v2

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 72
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return-object v0
.end method

.method public fullyResolvesTo(Ljava/lang/String;I)Z
    .locals 10
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "depth":I
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 151
    const/4 v7, 0x0

    move v0, v7

    .line 177
    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :goto_0
    return v0

    .line 153
    .restart local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :cond_0
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v3, v7

    .line 154
    .local v3, "isLastDepth":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 155
    .local v4, "keyAtDepth":Ljava/lang/String;
    move-object v7, v4

    const-string/jumbo v8, "**"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v5, v7

    .line 157
    .local v5, "isGlobstar":Z
    move v7, v5

    if-nez v7, :cond_6

    .line 158
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v4

    const-string/jumbo v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    const/4 v7, 0x1

    :goto_2
    move v6, v7

    .line 159
    .local v6, "matches":Z
    move v7, v3

    if-nez v7, :cond_2

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ne v7, v8, :cond_5

    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/model/KeyPath;->endsWithGlobstar()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    move v7, v6

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    move v0, v7

    goto :goto_0

    .line 153
    .end local v3    # "isLastDepth":Z
    .end local v4    # "keyAtDepth":Ljava/lang/String;
    .end local v5    # "isGlobstar":Z
    .end local v6    # "matches":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 158
    .restart local v3    # "isLastDepth":Z
    .restart local v4    # "keyAtDepth":Ljava/lang/String;
    .restart local v5    # "isGlobstar":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 159
    .restart local v6    # "matches":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 162
    .end local v6    # "matches":Z
    :cond_6
    move v7, v3

    if-nez v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_4
    move v6, v7

    .line 163
    .local v6, "isGlobstarButNextKeyMatches":Z
    move v7, v6

    if-eqz v7, :cond_a

    .line 164
    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    if-eq v7, v8, :cond_7

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 165
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    add-int/lit8 v8, v8, -0x3

    if-ne v7, v8, :cond_9

    move-object v7, v0

    invoke-direct {v7}, Lcom/airbnb/lottie/model/KeyPath;->endsWithGlobstar()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_7
    const/4 v7, 0x1

    .line 164
    :goto_5
    move v0, v7

    goto/16 :goto_0

    .line 162
    .end local v6    # "isGlobstarButNextKeyMatches":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 165
    .restart local v6    # "isGlobstarButNextKeyMatches":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 168
    :cond_a
    move v7, v3

    if-eqz v7, :cond_b

    .line 169
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 171
    :cond_b
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_c

    .line 173
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 177
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v0, v7

    goto/16 :goto_0
.end method

.method public getResolvedElement()Lcom/airbnb/lottie/model/KeyPathElement;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return-object v0
.end method

.method public incrementDepthBy(Ljava/lang/String;I)I
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "depth":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;->isContainer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x0

    move v0, v3

    .line 141
    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :goto_0
    return v0

    .line 129
    .restart local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 133
    :cond_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 135
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 137
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    const/4 v3, 0x2

    move v0, v3

    goto :goto_0

    .line 141
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public keysToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return-object v0
.end method

.method public matches(Ljava/lang/String;I)Z
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "depth":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/model/KeyPath;->isContainer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const/4 v3, 0x1

    move v0, v3

    .line 113
    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :goto_0
    return v0

    .line 105
    .restart local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :cond_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 106
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 108
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v4, v2

    .line 109
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v4, v2

    .line 110
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 113
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public propagateToChildren(Ljava/lang/String;I)Z
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "depth":I
    const-string/jumbo v3, "__container"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/4 v3, 0x1

    move v0, v3

    .line 191
    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :cond_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "**"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public resolve(Lcom/airbnb/lottie/model/KeyPathElement;)Lcom/airbnb/lottie/model/KeyPath;
    .locals 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    move-object v1, p1

    .local v1, "element":Lcom/airbnb/lottie/model/KeyPathElement;
    new-instance v3, Lcom/airbnb/lottie/model/KeyPath;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/KeyPath;-><init>(Lcom/airbnb/lottie/model/KeyPath;)V

    move-object v2, v3

    .line 81
    .local v2, "keyPath":Lcom/airbnb/lottie/model/KeyPath;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 82
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/KeyPath;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyPath{keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resolved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    return-object v0

    .restart local v0    # "this":Lcom/airbnb/lottie/model/KeyPath;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
