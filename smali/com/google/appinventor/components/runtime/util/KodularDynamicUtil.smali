.class public Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularDynamicUtil$ComponentReturnHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getChildViewHolderById(ILjava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 41
    move v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 42
    move-object v2, v4

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v3

    move v4, v0

    if-ne v3, v4, :cond_0

    .line 43
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getChildViewHolder()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 46
    :goto_1
    return-object v0

    .line 45
    :cond_0
    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static getObjectById(ILjava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 23
    move v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 24
    move-object v2, v4

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v3

    move v4, v0

    if-ne v3, v4, :cond_0

    .line 25
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getObject()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 28
    :goto_1
    return-object v0

    .line 27
    :cond_0
    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static getViewHolderById(ILjava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 32
    move v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 33
    move-object v2, v4

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v3

    move v4, v0

    if-ne v3, v4, :cond_0

    .line 34
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getViewHolder()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 37
    :goto_1
    return-object v0

    .line 36
    :cond_0
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static removeItemById(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    move v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    .line 51
    move-object v3, v5

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->getId()I

    move-result v4

    move v5, v0

    if-ne v4, v5, :cond_0

    .line 52
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 54
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method
