.class Lgnu/xquery/util/DistinctValuesHashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "DistinctValues.java"


# instance fields
.field collator:Lgnu/xquery/util/NamedCollator;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesHashTable;
    move-object v1, p1

    .local v1, "collator":Lgnu/xquery/util/NamedCollator;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 79
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/xquery/util/DistinctValuesHashTable;->collator:Lgnu/xquery/util/NamedCollator;

    .line 80
    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesHashTable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 85
    const/4 v3, 0x0

    move v0, v3

    .line 96
    .end local v0    # "this":Lgnu/xquery/util/DistinctValuesHashTable;
    :goto_0
    return v0

    .line 86
    .restart local v0    # "this":Lgnu/xquery/util/DistinctValuesHashTable;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_3

    move-object v3, v1

    instance-of v3, v3, Lgnu/math/RealNum;

    if-nez v3, :cond_1

    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Numeric;

    if-nez v3, :cond_3

    .line 89
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    move v2, v3

    .line 90
    .local v2, "hash":I
    move v3, v2

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    .line 91
    const/4 v3, 0x0

    move v2, v3

    .line 92
    :cond_2
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 96
    .end local v2    # "hash":I
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/DistinctValuesHashTable;
    move-object v1, p1

    .local v1, "value1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value2":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 102
    const/4 v3, 0x1

    move v0, v3

    .line 105
    .end local v0    # "this":Lgnu/xquery/util/DistinctValuesHashTable;
    :goto_0
    return v0

    .line 103
    .restart local v0    # "this":Lgnu/xquery/util/DistinctValuesHashTable;
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-static {v3}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 105
    :cond_1
    const/16 v3, 0x48

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lgnu/xquery/util/DistinctValuesHashTable;->collator:Lgnu/xquery/util/NamedCollator;

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method
