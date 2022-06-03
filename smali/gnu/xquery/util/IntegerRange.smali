.class public Lgnu/xquery/util/IntegerRange;
.super Lgnu/mapping/MethodProc;
.source "IntegerRange.java"


# static fields
.field public static final MAX_INT:Lgnu/math/IntNum;

.field public static final MIN_INT:Lgnu/math/IntNum;

.field public static final integerRange:Lgnu/xquery/util/IntegerRange;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lgnu/xquery/util/IntegerRange;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "to"

    invoke-direct {v1, v2}, Lgnu/xquery/util/IntegerRange;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/IntegerRange;->integerRange:Lgnu/xquery/util/IntegerRange;

    .line 20
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/IntegerRange;->MIN_INT:Lgnu/math/IntNum;

    .line 21
    const v0, 0x7fffffff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/IntegerRange;->MAX_INT:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/IntegerRange;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/xquery/util/IntegerRange;->setName(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static integerRange(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/lists/Consumer;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "first":Lgnu/math/IntNum;
    move-object v1, p1

    .local v1, "last":Lgnu/math/IntNum;
    move-object v2, p2

    .local v2, "out":Lgnu/lists/Consumer;
    move-object v5, v0

    sget-object v6, Lgnu/xquery/util/IntegerRange;->MIN_INT:Lgnu/math/IntNum;

    invoke-static {v5, v6}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v5

    if-ltz v5, :cond_2

    move-object v5, v1

    sget-object v6, Lgnu/xquery/util/IntegerRange;->MAX_INT:Lgnu/math/IntNum;

    invoke-static {v5, v6}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 42
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/IntNum;->intValue()I

    move-result v5

    move v3, v5

    .line 43
    .local v3, "fst":I
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/math/IntNum;->intValue()I

    move-result v5

    move v4, v5

    .line 44
    .local v4, "lst":I
    move v5, v3

    move v6, v4

    if-gt v5, v6, :cond_0

    .line 48
    :goto_0
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 49
    move v5, v3

    move v6, v4

    if-ne v5, v6, :cond_1

    .line 50
    .line 54
    .line 61
    .end local v3    # "fst":I
    .end local v4    # "lst":I
    :cond_0
    :goto_1
    return-void

    .line 51
    .restart local v3    # "fst":I
    .restart local v4    # "lst":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "fst":I
    .end local v4    # "lst":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 58
    move-object v5, v2

    move-object v6, v0

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 59
    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    move-object v0, v5

    goto :goto_2

    .line 61
    :cond_3
    goto :goto_1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/IntegerRange;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 66
    .local v2, "first":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 67
    .local v3, "last":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->lastArg()V

    .line 68
    move-object v4, v2

    invoke-static {v4}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 69
    move-object v4, v3

    invoke-static {v4}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 70
    move-object v4, v2

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v3

    if-nez v4, :cond_1

    .line 72
    .line 78
    .end local v2    # "first":Ljava/lang/Object;
    .end local v3    # "last":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v2    # "first":Ljava/lang/Object;
    .restart local v3    # "last":Ljava/lang/Object;
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v4, :cond_2

    .line 74
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v2, v4

    .line 75
    .end local v2    # "first":Ljava/lang/Object;
    :cond_2
    move-object v4, v3

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v4, :cond_3

    .line 76
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v3, v4

    .line 77
    .end local v3    # "last":Ljava/lang/Object;
    :cond_3
    move-object v4, v2

    check-cast v4, Lgnu/math/IntNum;

    move-object v5, v3

    check-cast v5, Lgnu/math/IntNum;

    move-object v6, v1

    iget-object v6, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v4, v5, v6}, Lgnu/xquery/util/IntegerRange;->integerRange(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/lists/Consumer;)V

    .line 78
    goto :goto_0
.end method
