.class public Lgnu/ecmascript/BinaryOp;
.super Lgnu/mapping/Procedure2;
.source "BinaryOp.java"


# instance fields
.field op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/BinaryOp;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "op":I
    move-object v3, v0

    invoke-direct {v3}, Lgnu/mapping/Procedure2;-><init>()V

    .line 9
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/ecmascript/BinaryOp;->setName(Ljava/lang/String;)V

    .line 10
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/ecmascript/BinaryOp;->op:I

    .line 11
    return-void
.end method


# virtual methods
.method public apply(DD)D
    .locals 11

    .prologue
    .line 25
    move-object v1, p0

    .local v1, "this":Lgnu/ecmascript/BinaryOp;
    move-wide v2, p1

    .local v2, "arg1":D
    move-wide v4, p3

    .local v4, "arg2":D
    move-object v6, v1

    iget v6, v6, Lgnu/ecmascript/BinaryOp;->op:I

    packed-switch v6, :pswitch_data_0

    .line 32
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-wide v1, v6

    .end local v1    # "this":Lgnu/ecmascript/BinaryOp;
    :goto_0
    return-wide v1

    .line 27
    .restart local v1    # "this":Lgnu/ecmascript/BinaryOp;
    :pswitch_0
    move-wide v6, v2

    move-wide v8, v4

    add-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 28
    :pswitch_1
    move-wide v6, v2

    move-wide v8, v4

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 29
    :pswitch_2
    move-wide v6, v2

    move-wide v8, v4

    mul-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 30
    :pswitch_3
    move-wide v6, v2

    double-to-int v6, v6

    move-wide v7, v4

    double-to-int v7, v7

    const/16 v8, 0x1f

    and-int/lit8 v7, v7, 0x1f

    shl-int/2addr v6, v7

    int-to-double v6, v6

    move-wide v1, v6

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 15
    move-object v1, p0

    .local v1, "this":Lgnu/ecmascript/BinaryOp;
    move-object v2, p1

    .local v2, "arg1":Ljava/lang/Object;
    move-object v3, p2

    .local v3, "arg2":Ljava/lang/Object;
    move-object v4, v1

    iget v4, v4, Lgnu/ecmascript/BinaryOp;->op:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 17
    move-object v4, v2

    invoke-static {v4}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    move-object v6, v3

    invoke-static {v6}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v1, v4

    .line 20
    .end local v1    # "this":Lgnu/ecmascript/BinaryOp;
    :goto_1
    return-object v1

    .line 17
    .restart local v1    # "this":Lgnu/ecmascript/BinaryOp;
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 20
    :cond_1
    new-instance v4, Ljava/lang/Double;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move-object v7, v2

    invoke-static {v7}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v7

    move-object v9, v3

    invoke-static {v9}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/ecmascript/BinaryOp;->apply(DD)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v1, v4

    goto :goto_1
.end method
