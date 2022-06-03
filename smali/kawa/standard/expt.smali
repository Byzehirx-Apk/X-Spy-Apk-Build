.class public Lkawa/standard/expt;
.super Lgnu/mapping/Procedure2;
.source "expt.java"


# static fields
.field public static final expt:Lkawa/standard/expt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/expt;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "expt"

    invoke-direct {v1, v2}, Lkawa/standard/expt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lkawa/standard/expt;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static expt(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "x":Lgnu/math/IntNum;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/IntNum;
    return-object v0
.end method

.method public static expt(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 24
    move-object v2, v0

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v1

    check-cast v3, Lgnu/math/IntNum;

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v2

    move-object v0, v2

    .line 25
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/math/Complex;

    move-object v3, v1

    check-cast v3, Lgnu/math/Complex;

    invoke-static {v2, v3}, Lgnu/math/Complex;->power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lkawa/standard/expt;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lkawa/standard/expt;->expt(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/expt;
    return-object v0
.end method
