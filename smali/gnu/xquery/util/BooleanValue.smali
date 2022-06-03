.class public Lgnu/xquery/util/BooleanValue;
.super Lgnu/mapping/Procedure1;
.source "BooleanValue.java"


# static fields
.field public static final booleanValue:Lgnu/xquery/util/BooleanValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lgnu/xquery/util/BooleanValue;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "boolean-value"

    invoke-direct {v1, v2}, Lgnu/xquery/util/BooleanValue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/BooleanValue;->booleanValue:Lgnu/xquery/util/BooleanValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/BooleanValue;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 20
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.xquery.util.CompileMisc:validateBooleanValue"

    invoke-virtual {v2, v3, v4}, Lgnu/xquery/util/BooleanValue;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 11

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 27
    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v0, v4

    .line 50
    .end local v0    # "value":Ljava/lang/Object;
    .local v1, "values":Lgnu/mapping/Values;
    .local v2, "value1":Ljava/lang/Object;
    :goto_0
    return v0

    .line 28
    .end local v1    # "values":Lgnu/mapping/Values;
    .end local v2    # "value1":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_3

    move-object v4, v0

    instance-of v4, v4, Lgnu/math/RealNum;

    if-nez v4, :cond_1

    move-object v4, v0

    instance-of v4, v4, Lgnu/math/Numeric;

    if-nez v4, :cond_3

    .line 31
    :cond_1
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-wide v1, v4

    .line 32
    .local v1, "d":D
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 34
    .end local v1    # "d":D
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Lgnu/lists/SeqPosition;

    if-eqz v4, :cond_4

    .line 35
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 36
    :cond_4
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v4, v0

    instance-of v4, v4, Lgnu/text/Path;

    if-nez v4, :cond_5

    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v4, :cond_7

    .line 39
    :cond_5
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 40
    :cond_7
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/Values;

    if-eqz v4, :cond_a

    .line 42
    move-object v4, v0

    check-cast v4, Lgnu/mapping/Values;

    move-object v1, v4

    .line 43
    .local v1, "values":Lgnu/mapping/Values;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 44
    .restart local v2    # "value1":Ljava/lang/Object;
    move-object v4, v2

    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v4, v5, :cond_8

    .line 45
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 46
    :cond_8
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v4

    move v3, v4

    .line 47
    .local v3, "next":I
    move v4, v3

    if-gez v4, :cond_9

    .line 48
    move-object v4, v2

    invoke-static {v4}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 49
    :cond_9
    move-object v4, v2

    instance-of v4, v4, Lgnu/lists/SeqPosition;

    if-eqz v4, :cond_a

    .line 50
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    .line 52
    .end local v1    # "values":Lgnu/mapping/Values;
    .end local v2    # "value1":Ljava/lang/Object;
    .end local v3    # "next":I
    :cond_a
    new-instance v4, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "fn:boolean"

    const/4 v7, 0x1

    move-object v8, v0

    const-string/jumbo v9, "boolean-convertible-value"

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4
.end method

.method public static not(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/BooleanValue;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/util/BooleanValue;
    return-object v0

    .restart local v0    # "this":Lgnu/xquery/util/BooleanValue;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
