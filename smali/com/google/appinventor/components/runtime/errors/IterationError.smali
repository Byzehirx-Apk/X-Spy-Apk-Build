.class public Lcom/google/appinventor/components/runtime/errors/IterationError;
.super Lcom/google/appinventor/components/runtime/errors/DispatchableError;
.source "SourceFile"


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 13
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    .locals 8

    .prologue
    .line 29
    move v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 37
    :pswitch_0
    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/IterationError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/16 v4, 0xd4e

    move v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/errors/IterationError;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    .line 33
    :pswitch_2
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/IterationError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/16 v4, 0xd4f

    move v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/errors/IterationError;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    .line 35
    :pswitch_3
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/IterationError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/16 v4, 0xd50

    move v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/errors/IterationError;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0xd4d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9

    .prologue
    .line 42
    move v0, p0

    move-object v1, p1

    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 43
    move-object v2, v4

    const/4 v4, 0x0

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 44
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x1

    move-object v7, v1

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public getExpected()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getFound()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getIndex()I
    .locals 3

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    return v0
.end method
