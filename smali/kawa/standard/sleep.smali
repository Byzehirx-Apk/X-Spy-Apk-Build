.class public Lkawa/standard/sleep;
.super Ljava/lang/Object;
.source "sleep.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lkawa/standard/sleep;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 15

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "q":Lgnu/math/Quantity;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v8

    move-object v1, v8

    .line 14
    .local v1, "u":Lgnu/math/Unit;
    move-object v8, v1

    sget-object v9, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v8, v9, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v8

    sget-object v9, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {v9}, Lgnu/math/NamedUnit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 16
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v8

    move-wide v2, v8

    .line 19
    .local v2, "seconds":D
    move-wide v8, v2

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    move-wide v4, v8

    .line 20
    .local v4, "millis":J
    move-wide v8, v2

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v8, v10

    move-wide v10, v4

    long-to-double v10, v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v8, v8

    move v6, v8

    .line 23
    .local v6, "nanos":I
    move-wide v8, v4

    move v10, v6

    :try_start_0
    invoke-static {v8, v9, v10}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-void

    .line 18
    .end local v2    # "seconds":D
    .end local v4    # "millis":J
    .end local v6    # "nanos":I
    :cond_1
    new-instance v8, Lkawa/lang/GenericError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "bad unit for sleep"

    invoke-direct {v9, v10}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 25
    .restart local v2    # "seconds":D
    .restart local v4    # "millis":J
    .restart local v6    # "nanos":I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 27
    .local v7, "ex":Ljava/lang/InterruptedException;
    new-instance v8, Lkawa/lang/GenericError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "sleep was interrupted"

    invoke-direct {v9, v10}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v8
.end method
