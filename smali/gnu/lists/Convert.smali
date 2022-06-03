.class public Lgnu/lists/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# static fields
.field public static instance:Lgnu/lists/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lgnu/lists/Convert;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/lists/Convert;-><init>()V

    sput-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/lists/Convert;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-wide v0
.end method

.method public static setInstance(Lgnu/lists/Convert;)V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "value":Lgnu/lists/Convert;
    move-object v1, v0

    sput-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToBoolean(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toByte(Ljava/lang/Object;)B
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToByte(Ljava/lang/Object;)B

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toByteUnsigned(Ljava/lang/Object;)B
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToByteUnsigned(Ljava/lang/Object;)B

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toChar(Ljava/lang/Object;)C
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToChar(Ljava/lang/Object;)C

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToDouble(Ljava/lang/Object;)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-wide v0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToFloat(Ljava/lang/Object;)F

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToInt(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toIntUnsigned(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToIntUnsigned(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toLong(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToLong(Ljava/lang/Object;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-wide v0
.end method

.method public static toLongUnsigned(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToLongUnsigned(Ljava/lang/Object;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-wide v0
.end method

.method public static toObject(B)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 72
    move v0, p0

    .local v0, "value":B
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->byteToObject(B)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":B
    return-object v0
.end method

.method public static toObject(C)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 52
    move v0, p0

    .local v0, "ch":C
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->charToObject(C)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "ch":C
    return-object v0
.end method

.method public static toObject(D)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 255
    move-wide v0, p0

    .local v0, "value":D
    sget-object v2, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/Convert;->doubleToObject(D)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":D
    return-object v0
.end method

.method public static toObject(F)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 235
    move v0, p0

    .local v0, "value":F
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->floatToObject(F)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":F
    return-object v0
.end method

.method public static toObject(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 152
    move v0, p0

    .local v0, "value":I
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->intToObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":I
    return-object v0
.end method

.method public static toObject(J)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 195
    move-wide v0, p0

    .local v0, "value":J
    sget-object v2, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/Convert;->longToObject(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":J
    return-object v0
.end method

.method public static toObject(S)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 112
    move v0, p0

    .local v0, "value":S
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->shortToObject(S)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":S
    return-object v0
.end method

.method public static toObject(Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    move v0, p0

    .local v0, "value":Z
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->booleanToObject(Z)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Z
    return-object v0
.end method

.method public static toObjectUnsigned(B)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 92
    move v0, p0

    .local v0, "value":B
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->byteToObjectUnsigned(B)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":B
    return-object v0
.end method

.method public static toObjectUnsigned(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 175
    move v0, p0

    .local v0, "value":I
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->intToObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":I
    return-object v0
.end method

.method public static toObjectUnsigned(J)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 215
    move-wide v0, p0

    .local v0, "value":J
    sget-object v2, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lgnu/lists/Convert;->longToObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "value":J
    return-object v0
.end method

.method public static toObjectUnsigned(S)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 132
    move v0, p0

    .local v0, "value":S
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->shortToObjectUnsigned(S)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":S
    return-object v0
.end method

.method public static toShort(Ljava/lang/Object;)S
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToShort(Ljava/lang/Object;)S

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static toShortUnsigned(Ljava/lang/Object;)S
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/Convert;->instance:Lgnu/lists/Convert;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/Convert;->objectToShortUnsigned(Ljava/lang/Object;)S

    move-result v1

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method


# virtual methods
.method public booleanToObject(Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0

    .restart local v0    # "this":Lgnu/lists/Convert;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public byteToObject(B)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":B
    new-instance v2, Ljava/lang/Byte;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method

.method public byteToObjectUnsigned(B)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":B
    new-instance v2, Ljava/lang/Integer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v1

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method

.method public charToObject(C)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "ch":C
    new-instance v2, Ljava/lang/Character;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method

.method public doubleToObject(D)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 245
    move-object v1, p0

    .local v1, "this":Lgnu/lists/Convert;
    move-wide v2, p1

    .local v2, "value":D
    new-instance v4, Ljava/lang/Double;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v1, v4

    .end local v1    # "this":Lgnu/lists/Convert;
    return-object v1
.end method

.method public floatToObject(F)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":F
    new-instance v2, Ljava/lang/Float;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method

.method public intToObject(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":I
    new-instance v2, Ljava/lang/Integer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method

.method public intToObjectUnsigned(I)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/Integer;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v2

    .line 165
    .end local v0    # "this":Lgnu/lists/Convert;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/lists/Convert;
    :cond_0
    new-instance v2, Ljava/lang/Long;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move v4, v1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v2

    goto :goto_0
.end method

.method public longToObject(J)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 185
    move-object v1, p0

    .local v1, "this":Lgnu/lists/Convert;
    move-wide v2, p1

    .local v2, "value":J
    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lgnu/lists/Convert;
    return-object v1
.end method

.method public longToObjectUnsigned(J)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 205
    move-object v1, p0

    .local v1, "this":Lgnu/lists/Convert;
    move-wide v2, p1

    .local v2, "value":J
    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lgnu/lists/Convert;
    return-object v1
.end method

.method public objectToBoolean(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0

    .restart local v0    # "this":Lgnu/lists/Convert;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public objectToByte(Ljava/lang/Object;)B
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToByteUnsigned(Ljava/lang/Object;)B
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToChar(Ljava/lang/Object;)C
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToDouble(Ljava/lang/Object;)D
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-wide v0
.end method

.method public objectToFloat(Ljava/lang/Object;)F
    .locals 3

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToInt(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToIntUnsigned(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToLong(Ljava/lang/Object;)J
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-wide v0
.end method

.method public objectToLongUnsigned(Ljava/lang/Object;)J
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-wide v0
.end method

.method public objectToShort(Ljava/lang/Object;)S
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public objectToShortUnsigned(Ljava/lang/Object;)S
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return v0
.end method

.method public shortToObject(S)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":S
    new-instance v2, Ljava/lang/Short;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method

.method public shortToObjectUnsigned(S)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lgnu/lists/Convert;
    move v1, p1

    .local v1, "value":S
    new-instance v2, Ljava/lang/Integer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/lists/Convert;
    return-object v0
.end method
