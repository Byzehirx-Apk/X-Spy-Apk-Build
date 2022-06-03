.class public Lgnu/xquery/util/SubList;
.super Lgnu/mapping/MethodProc;
.source "SubList.java"


# static fields
.field public static final subList:Lgnu/xquery/util/SubList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lgnu/xquery/util/SubList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xquery/util/SubList;-><init>()V

    sput-object v0, Lgnu/xquery/util/SubList;->subList:Lgnu/xquery/util/SubList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/SubList;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V
    .locals 17

    .prologue
    .line 20
    move-object/from16 v1, p0

    .local v1, "seq":Ljava/lang/Object;
    move-wide/from16 v2, p1

    .local v2, "start":D
    move-wide/from16 v4, p3

    .local v4, "end":D
    move-object/from16 v6, p5

    .local v6, "out":Lgnu/lists/Consumer;
    move-object v12, v1

    instance-of v12, v12, Lgnu/mapping/Values;

    if-eqz v12, :cond_5

    .line 22
    move-object v12, v1

    check-cast v12, Lgnu/mapping/Values;

    move-object v7, v12

    .line 23
    .local v7, "vals":Lgnu/mapping/Values;
    const/4 v12, 0x0

    move v8, v12

    .line 24
    .local v8, "n":I
    const/4 v12, 0x0

    move v9, v12

    .line 25
    .local v9, "i":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    move v12, v8

    int-to-double v12, v12

    move-wide v14, v2

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 27
    move-object v12, v7

    move v13, v9

    invoke-virtual {v12, v13}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v12

    move v9, v12

    .line 28
    move v12, v9

    if-gez v12, :cond_0

    .line 29
    .line 47
    .end local v7    # "vals":Lgnu/mapping/Values;
    .end local v8    # "n":I
    .end local v9    # "i":I
    :goto_0
    return-void

    .line 31
    .restart local v7    # "vals":Lgnu/mapping/Values;
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    :cond_1
    move v12, v9

    move v10, v12

    .line 32
    .local v10, "startPosition":I
    move v12, v9

    move v11, v12

    .line 33
    .local v11, "endPosition":I
    :goto_1
    move v12, v8

    add-int/lit8 v8, v8, 0x1

    int-to-double v12, v12

    move-wide v14, v4

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 35
    move-object v12, v7

    move v13, v9

    invoke-virtual {v12, v13}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v12

    move v9, v12

    .line 36
    move v12, v9

    if-gez v12, :cond_4

    .line 37
    .line 40
    :cond_2
    move-object v12, v7

    move v13, v10

    move v14, v11

    move-object v15, v6

    invoke-virtual {v12, v13, v14, v15}, Lgnu/mapping/Values;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v12

    .line 41
    .line 47
    .end local v7    # "vals":Lgnu/mapping/Values;
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "startPosition":I
    .end local v11    # "endPosition":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 38
    .restart local v7    # "vals":Lgnu/mapping/Values;
    .restart local v8    # "n":I
    .restart local v9    # "i":I
    .restart local v10    # "startPosition":I
    .restart local v11    # "endPosition":I
    :cond_4
    move v12, v9

    move v11, v12

    goto :goto_1

    .line 44
    .end local v7    # "vals":Lgnu/mapping/Values;
    .end local v8    # "n":I
    .end local v9    # "i":I
    .end local v10    # "startPosition":I
    .end local v11    # "endPosition":I
    :cond_5
    move-wide v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_3

    move-wide v12, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    .line 45
    move-object v12, v6

    move-object v13, v1

    invoke-interface {v12, v13}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 17

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/xquery/util/SubList;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v10, v1

    iget-object v10, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v10

    .line 52
    .local v2, "consumer":Lgnu/lists/Consumer;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    .line 53
    .local v3, "seq":Ljava/lang/Object;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    move-wide v4, v10

    .line 54
    .local v4, "d1":D
    sget-object v10, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v6, v10

    .line 55
    .local v6, "eof":Ljava/lang/Object;
    move-object v10, v1

    move-object v11, v6

    invoke-virtual {v10, v11}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    .line 56
    .local v7, "arg2":Ljava/lang/Object;
    move-object v10, v1

    invoke-virtual {v10}, Lgnu/mapping/CallContext;->lastArg()V

    .line 57
    move-object v10, v7

    move-object v11, v6

    if-eq v10, v11, :cond_0

    move-object v10, v7

    invoke-static {v10}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    :goto_0
    move-wide v8, v10

    .line 59
    .local v8, "d2":D
    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v4

    move-wide v15, v8

    add-double/2addr v13, v15

    move-object v15, v2

    invoke-static/range {v10 .. v15}, Lgnu/xquery/util/SubList;->subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V

    .line 60
    return-void

    .line 57
    .end local v8    # "d2":D
    :cond_0
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/SubList;
    const/16 v1, 0x3002

    move v0, v1

    .end local v0    # "this":Lgnu/xquery/util/SubList;
    return v0
.end method
