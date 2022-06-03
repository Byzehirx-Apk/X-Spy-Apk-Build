.class public Lgnu/kawa/functions/CountValues;
.super Lgnu/mapping/Procedure1;
.source "CountValues.java"


# static fields
.field public static final countValues:Lgnu/kawa/functions/CountValues;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/functions/CountValues;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/CountValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/CountValues;->countValues:Lgnu/kawa/functions/CountValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CountValues;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->size()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CountValues;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v4

    .line 27
    .local v2, "consumer":Lgnu/lists/Consumer;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 28
    .local v3, "arg":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->lastArg()V

    .line 29
    move-object v4, v2

    move-object v5, v3

    invoke-static {v5}, Lgnu/kawa/functions/CountValues;->countValues(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 30
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CountValues;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/kawa/functions/CountValues;->countValues(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/CountValues;
    return-object v0
.end method
