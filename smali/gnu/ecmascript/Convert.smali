.class public Lgnu/ecmascript/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    move-object v0, p0

    .local v0, "this":Lgnu/ecmascript/Convert;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInteger(D)D
    .locals 6

    .prologue
    .line 31
    move-wide v0, p0

    .local v0, "x":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 33
    .end local v0    # "x":D
    :goto_0
    return-wide v0

    .restart local v0    # "x":D
    :cond_0
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    goto :goto_1
.end method

.method public static toInteger(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/ecmascript/Convert;->toInteger(D)D

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "x":Ljava/lang/Object;
    return-wide v1
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-wide v0, v2

    .line 26
    .end local v0    # "x":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .line 11
    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 12
    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 13
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 18
    move-object v2, v0

    :try_start_0
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 22
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move-wide v0, v2

    goto :goto_0

    .line 26
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public toInt32(D)I
    .locals 7

    .prologue
    .line 43
    move-object v1, p0

    .local v1, "this":Lgnu/ecmascript/Convert;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    .line 46
    .end local v1    # "this":Lgnu/ecmascript/Convert;
    :goto_0
    return v1

    .restart local v1    # "this":Lgnu/ecmascript/Convert;
    :cond_1
    move-wide v4, v2

    double-to-int v4, v4

    move v1, v4

    goto :goto_0
.end method

.method public toInt32(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Lgnu/ecmascript/Convert;
    move-object v2, p1

    .local v2, "x":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v4}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lgnu/ecmascript/Convert;->toInt32(D)I

    move-result v3

    move v1, v3

    .end local v1    # "this":Lgnu/ecmascript/Convert;
    return v1
.end method
