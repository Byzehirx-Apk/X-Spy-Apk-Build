.class Landroidx/lifecycle/ClassesInfoCache$MethodReference;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodReference"
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 5

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    move v1, p1

    .local v1, "callType":I
    move-object v2, p2

    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 205
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    .line 206
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 207
    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 234
    const/4 v3, 0x1

    move v0, v3

    .line 241
    .end local v0    # "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    :goto_0
    return v0

    .line 236
    .restart local v0    # "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 237
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 240
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    move-object v2, v3

    .line 241
    .local v2, "that":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    move-object v3, v0

    iget v3, v3, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    move-object v4, v2

    iget v4, v4, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    iget-object v4, v4, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    const/16 v1, 0x1f

    move-object v2, v0

    iget v2, v2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    mul-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    return v0
.end method

.method invokeCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    move-object v1, p1

    .local v1, "source":Landroidx/lifecycle/LifecycleOwner;
    move-object v2, p2

    .local v2, "event":Landroidx/lifecycle/Lifecycle$Event;
    move-object v3, p3

    .local v3, "target":Ljava/lang/Object;
    move-object v5, v0

    :try_start_0
    iget v5, v5, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    packed-switch v5, :pswitch_data_0

    .line 228
    .line 229
    :goto_0
    return-void

    .line 215
    :pswitch_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    move-object v6, v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 216
    goto :goto_0

    .line 218
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    move-object v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 219
    goto :goto_0

    .line 221
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    move-object v6, v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 224
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 225
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string/jumbo v7, "Failed to call observer method"

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 226
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 227
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
