.class public abstract Lgnu/math/Unit;
.super Lgnu/math/Quantity;
.source "Unit.java"


# static fields
.field public static Empty:Lgnu/math/BaseUnit;

.field public static NON_COMBINABLE:D

.field public static final cm:Lgnu/math/Unit;

.field public static final date:Lgnu/math/NamedUnit;

.field public static final duration:Lgnu/math/BaseUnit;

.field public static final gram:Lgnu/math/BaseUnit;

.field public static final hour:Lgnu/math/Unit;

.field public static final in:Lgnu/math/Unit;

.field public static final meter:Lgnu/math/BaseUnit;

.field public static final minute:Lgnu/math/Unit;

.field public static final mm:Lgnu/math/Unit;

.field public static final month:Lgnu/math/NamedUnit;

.field public static final pica:Lgnu/math/Unit;

.field public static final pt:Lgnu/math/Unit;

.field public static final radian:Lgnu/math/Unit;

.field public static final second:Lgnu/math/NamedUnit;

.field static table:[Lgnu/math/NamedUnit;


# instance fields
.field base:Lgnu/math/Unit;

.field dims:Lgnu/math/Dimensions;

.field factor:D

.field products:Lgnu/math/MulUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 22
    const/16 v1, 0x64

    new-array v1, v1, [Lgnu/math/NamedUnit;

    sput-object v1, Lgnu/math/Unit;->table:[Lgnu/math/NamedUnit;

    .line 146
    new-instance v1, Lgnu/math/BaseUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/math/BaseUnit;-><init>()V

    sput-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    .line 147
    sget-object v1, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    iget-object v1, v1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    const/4 v2, 0x0

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v3, v1, v2

    .line 203
    const-wide/16 v1, 0x0

    sput-wide v1, Lgnu/math/Unit;->NON_COMBINABLE:D

    .line 205
    new-instance v1, Lgnu/math/BaseUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "m"

    const-string/jumbo v4, "Length"

    invoke-direct {v2, v3, v4}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    .line 206
    new-instance v1, Lgnu/math/BaseUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "duration"

    const-string/jumbo v4, "Time"

    invoke-direct {v2, v3, v4}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    .line 207
    new-instance v1, Lgnu/math/BaseUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "g"

    const-string/jumbo v4, "Mass"

    invoke-direct {v2, v3, v4}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgnu/math/Unit;->gram:Lgnu/math/BaseUnit;

    .line 208
    const-string/jumbo v1, "cm"

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    sget-object v4, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->cm:Lgnu/math/Unit;

    .line 209
    const-string/jumbo v1, "mm"

    const-wide v2, 0x3fb999999999999aL    # 0.1

    sget-object v4, Lgnu/math/Unit;->cm:Lgnu/math/Unit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->mm:Lgnu/math/Unit;

    .line 210
    const-string/jumbo v1, "in"

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    sget-object v4, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->in:Lgnu/math/Unit;

    .line 211
    const-string/jumbo v1, "pt"

    const-wide v2, 0x3f371ea11d1f0955L    # 3.527778E-4

    sget-object v4, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->pt:Lgnu/math/Unit;

    .line 212
    const-string/jumbo v1, "pica"

    const-wide v2, 0x3f7156f8ac9bf739L    # 0.004233333

    sget-object v4, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->pica:Lgnu/math/Unit;

    .line 213
    const-string/jumbo v1, "rad"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->radian:Lgnu/math/Unit;

    .line 215
    new-instance v1, Lgnu/math/NamedUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "date"

    sget-wide v4, Lgnu/math/Unit;->NON_COMBINABLE:D

    sget-object v6, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v1, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    .line 217
    new-instance v1, Lgnu/math/NamedUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "s"

    sget-wide v4, Lgnu/math/Unit;->NON_COMBINABLE:D

    sget-object v6, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    .line 219
    new-instance v1, Lgnu/math/NamedUnit;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "month"

    sget-wide v4, Lgnu/math/Unit;->NON_COMBINABLE:D

    sget-object v6, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    .line 221
    const-string/jumbo v1, "min"

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    sget-object v4, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->minute:Lgnu/math/Unit;

    .line 222
    const-string/jumbo v1, "hour"

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    sget-object v4, Lgnu/math/Unit;->minute:Lgnu/math/Unit;

    invoke-static {v1, v2, v3, v4}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v1

    sput-object v1, Lgnu/math/Unit;->hour:Lgnu/math/Unit;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Quantity;-><init>()V

    .line 110
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lgnu/math/Unit;->factor:D

    .line 111
    return-void
.end method

.method public static define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;
    .locals 13

    .prologue
    .line 125
    move-object v1, p0

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p1

    .local v2, "factor":D
    move-object/from16 v4, p3

    .local v4, "base":Lgnu/math/Unit;
    new-instance v5, Lgnu/math/NamedUnit;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    move-object v1, v5

    .end local v1    # "name":Ljava/lang/String;
    return-object v1
.end method

.method public static define(Ljava/lang/String;Lgnu/math/DQuantity;)Lgnu/math/Unit;
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Lgnu/math/DQuantity;
    new-instance v2, Lgnu/math/NamedUnit;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;Lgnu/math/DQuantity;)V

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "unit1":Lgnu/math/Unit;
    move-object v1, p1

    .local v1, "unit2":Lgnu/math/Unit;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "unit1":Lgnu/math/Unit;
    return-object v0
.end method

.method public static lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Lgnu/math/Quantity;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/math/NamedUnit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static pow(Lgnu/math/Unit;I)Lgnu/math/Unit;
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "unit":Lgnu/math/Unit;
    move v1, p1

    .local v1, "power":I
    move-object v2, v0

    move v3, v1

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "unit":Lgnu/math/Unit;
    return-object v0
.end method

.method static times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;
    .locals 12

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "unit1":Lgnu/math/Unit;
    move v1, p1

    .local v1, "power1":I
    move-object v2, p2

    .local v2, "unit2":Lgnu/math/Unit;
    move v3, p3

    .local v3, "power2":I
    move-object v6, v0

    move-object v7, v2

    if-ne v6, v7, :cond_0

    .line 37
    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    move v1, v6

    .line 38
    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move-object v2, v6

    .line 39
    const/4 v6, 0x0

    move v3, v6

    .line 41
    :cond_0
    move v6, v1

    if-eqz v6, :cond_1

    move-object v6, v0

    sget-object v7, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v6, v7, :cond_2

    .line 43
    :cond_1
    move-object v6, v2

    move-object v0, v6

    .line 44
    move v6, v3

    move v1, v6

    .line 45
    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move-object v2, v6

    .line 46
    const/4 v6, 0x0

    move v3, v6

    .line 48
    :cond_2
    move v6, v3

    if-eqz v6, :cond_3

    move-object v6, v2

    sget-object v7, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v6, v7, :cond_5

    .line 50
    :cond_3
    move v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 51
    move-object v6, v0

    move-object v0, v6

    .line 90
    .end local v0    # "unit1":Lgnu/math/Unit;
    :goto_0
    return-object v0

    .line 52
    .restart local v0    # "unit1":Lgnu/math/Unit;
    :cond_4
    move v6, v1

    if-nez v6, :cond_5

    .line 53
    sget-object v6, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    move-object v0, v6

    goto :goto_0

    .line 55
    :cond_5
    move-object v6, v0

    instance-of v6, v6, Lgnu/math/MulUnit;

    if-eqz v6, :cond_9

    .line 57
    move-object v6, v0

    check-cast v6, Lgnu/math/MulUnit;

    move-object v4, v6

    .line 58
    .local v4, "munit1":Lgnu/math/MulUnit;
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v2

    if-ne v6, v7, :cond_6

    .line 59
    move-object v6, v2

    move-object v7, v4

    iget v7, v7, Lgnu/math/MulUnit;->power1:I

    move v8, v1

    mul-int/2addr v7, v8

    move v8, v3

    add-int/2addr v7, v8

    move-object v8, v4

    iget-object v8, v8, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v9, v4

    iget v9, v9, Lgnu/math/MulUnit;->power2:I

    move v10, v1

    mul-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 61
    :cond_6
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v7, v2

    if-ne v6, v7, :cond_7

    .line 62
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v4

    iget v7, v7, Lgnu/math/MulUnit;->power1:I

    move v8, v1

    mul-int/2addr v7, v8

    move-object v8, v2

    move-object v9, v4

    iget v9, v9, Lgnu/math/MulUnit;->power2:I

    move v10, v1

    mul-int/2addr v9, v10

    move v10, v3

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 64
    :cond_7
    move-object v6, v2

    instance-of v6, v6, Lgnu/math/MulUnit;

    if-eqz v6, :cond_9

    .line 66
    move-object v6, v2

    check-cast v6, Lgnu/math/MulUnit;

    move-object v5, v6

    .line 67
    .local v5, "munit2":Lgnu/math/MulUnit;
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v5

    iget-object v7, v7, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v6, v7, :cond_8

    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v7, v5

    iget-object v7, v7, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v6, v7, :cond_8

    .line 68
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v4

    iget v7, v7, Lgnu/math/MulUnit;->power1:I

    move v8, v1

    mul-int/2addr v7, v8

    move-object v8, v5

    iget v8, v8, Lgnu/math/MulUnit;->power1:I

    move v9, v3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move-object v8, v4

    iget-object v8, v8, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v9, v4

    iget v9, v9, Lgnu/math/MulUnit;->power2:I

    move v10, v1

    mul-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Lgnu/math/MulUnit;->power2:I

    move v11, v3

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 72
    :cond_8
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v5

    iget-object v7, v7, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v6, v7, :cond_9

    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v7, v5

    iget-object v7, v7, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v6, v7, :cond_9

    .line 73
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v4

    iget v7, v7, Lgnu/math/MulUnit;->power1:I

    move v8, v1

    mul-int/2addr v7, v8

    move-object v8, v5

    iget v8, v8, Lgnu/math/MulUnit;->power2:I

    move v9, v3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move-object v8, v4

    iget-object v8, v8, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v9, v4

    iget v9, v9, Lgnu/math/MulUnit;->power2:I

    move v10, v1

    mul-int/2addr v9, v10

    move-object v10, v5

    iget v10, v10, Lgnu/math/MulUnit;->power1:I

    move v11, v3

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 79
    .end local v4    # "munit1":Lgnu/math/MulUnit;
    .end local v5    # "munit2":Lgnu/math/MulUnit;
    :cond_9
    move-object v6, v2

    instance-of v6, v6, Lgnu/math/MulUnit;

    if-eqz v6, :cond_b

    .line 81
    move-object v6, v2

    check-cast v6, Lgnu/math/MulUnit;

    move-object v4, v6

    .line 82
    .local v4, "munit2":Lgnu/math/MulUnit;
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v0

    if-ne v6, v7, :cond_a

    .line 83
    move-object v6, v0

    move v7, v1

    move-object v8, v4

    iget v8, v8, Lgnu/math/MulUnit;->power1:I

    move v9, v3

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    move-object v8, v4

    iget-object v8, v8, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v9, v4

    iget v9, v9, Lgnu/math/MulUnit;->power2:I

    move v10, v3

    mul-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 85
    :cond_a
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    move-object v7, v0

    if-ne v6, v7, :cond_b

    .line 86
    move-object v6, v4

    iget-object v6, v6, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    move-object v7, v4

    iget v7, v7, Lgnu/math/MulUnit;->power1:I

    move v8, v3

    mul-int/2addr v7, v8

    move-object v8, v0

    move v9, v1

    move-object v10, v4

    iget v10, v10, Lgnu/math/MulUnit;->power2:I

    move v11, v3

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0

    .line 90
    .end local v4    # "munit2":Lgnu/math/MulUnit;
    :cond_b
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Lgnu/math/MulUnit;->make(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public static times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "unit1":Lgnu/math/Unit;
    move-object v1, p1

    .local v1, "unit2":Lgnu/math/Unit;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "unit1":Lgnu/math/Unit;
    return-object v0
.end method


# virtual methods
.method public final dimensions()Lgnu/math/Dimensions;
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return-object v0
.end method

.method public final doubleValue()D
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, v0

    iget-wide v1, v1, Lgnu/math/Unit;->factor:D

    move-wide v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    invoke-virtual {v1}, Lgnu/math/Dimensions;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return v0
.end method

.method public isExact()Z
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return v0
.end method

.method public final isZero()Z
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    invoke-static {}, Lgnu/math/DFloNum;->one()Lgnu/math/DFloNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, p1

    .local v1, "y":Lgnu/math/IntNum;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/IntNum;->words:[I

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/ArithmeticException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Unit raised to bignum power"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v3}, Lgnu/math/Unit;->pow(Lgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/Unit;
    return-object v0
.end method

.method public sqrt()Lgnu/math/Unit;
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, v0

    sget-object v2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v1, v2, :cond_0

    .line 142
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return-object v0

    .line 143
    .restart local v0    # "this":Lgnu/math/Unit;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "unimplemented Unit.sqrt"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 182
    move-object v1, p0

    .local v1, "this":Lgnu/math/Unit;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 183
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v2

    move-object v1, v3

    .line 188
    .end local v1    # "this":Lgnu/math/Unit;
    :goto_0
    return-object v1

    .line 185
    .restart local v1    # "this":Lgnu/math/Unit;
    :cond_0
    move-object v3, v1

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v3, v4, :cond_1

    .line 186
    const-string/jumbo v3, "unit"

    move-object v1, v3

    goto :goto_0

    .line 188
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    iget-wide v4, v4, Lgnu/math/Unit;->factor:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "<unnamed unit>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public toString(D)Ljava/lang/String;
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-wide v1, p1

    .local v1, "val":D
    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 157
    .local v3, "str":Ljava/lang/String;
    move-object v4, v0

    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_0

    .line 158
    move-object v4, v3

    move-object v0, v4

    .line 160
    .end local v0    # "this":Lgnu/math/Unit;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/math/Unit;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public toString(Lgnu/math/RealNum;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 165
    move-object v1, p0

    .local v1, "this":Lgnu/math/Unit;
    move-object v2, p1

    .local v2, "val":Lgnu/math/RealNum;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lgnu/math/Unit;->toString(D)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lgnu/math/Unit;
    return-object v1
.end method

.method public unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lgnu/math/Unit;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/Unit;
    return-object v0
.end method
