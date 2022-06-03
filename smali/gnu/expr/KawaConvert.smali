.class public Lgnu/expr/KawaConvert;
.super Lgnu/lists/Convert;
.source "KawaConvert.java"


# static fields
.field public static instance:Lgnu/lists/Convert;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/expr/KawaConvert;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/expr/KawaConvert;-><init>()V

    sput-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/lists/Convert;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/lists/Convert;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-object v0
.end method

.method public static setInstance(Lgnu/lists/Convert;)V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "value":Lgnu/lists/Convert;
    move-object v1, v0

    sput-object v1, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method


# virtual methods
.method public byteToObject(B)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":B
    move v2, v1

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public byteToObjectUnsigned(B)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":B
    move v2, v1

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public charToObject(C)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "ch":C
    move v2, v1

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public doubleToObject(D)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Lgnu/expr/KawaConvert;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    invoke-static {v4, v5}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lgnu/expr/KawaConvert;
    return-object v1
.end method

.method public floatToObject(F)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":F
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public intToObject(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public intToObjectUnsigned(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public longToObject(J)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 44
    move-object v1, p0

    .local v1, "this":Lgnu/expr/KawaConvert;
    move-wide v2, p1

    .local v2, "value":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lgnu/expr/KawaConvert;
    return-object v1
.end method

.method public longToObjectUnsigned(J)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Lgnu/expr/KawaConvert;
    move-wide v2, p1

    .local v2, "value":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lgnu/math/IntNum;->makeU(J)Lgnu/math/IntNum;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Lgnu/expr/KawaConvert;
    return-object v1
.end method

.method public objectToChar(Ljava/lang/Object;)C
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->charValue()C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return v0
.end method

.method public shortToObject(S)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":S
    move v2, v1

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method

.method public shortToObjectUnsigned(S)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/expr/KawaConvert;
    move v1, p1

    .local v1, "value":S
    move v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/KawaConvert;
    return-object v0
.end method
