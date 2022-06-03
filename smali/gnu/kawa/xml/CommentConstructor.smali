.class public Lgnu/kawa/xml/CommentConstructor;
.super Lgnu/mapping/MethodProc;
.source "CommentConstructor.java"


# static fields
.field public static final commentConstructor:Lgnu/kawa/xml/CommentConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/xml/CommentConstructor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/CommentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/CommentConstructor;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 18

    .prologue
    .line 18
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/xml/CommentConstructor;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v12, v1

    iget-object v12, v12, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v12

    .line 19
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v12, v1

    invoke-static {v12}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v12

    move-object v3, v12

    .line 22
    .local v3, "out":Lgnu/lists/XConsumer;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v12

    .line 23
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    sget-object v12, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v5, v12

    .line 24
    .local v5, "endMarker":Ljava/lang/String;
    const/4 v12, 0x1

    move v6, v12

    .line 25
    .local v6, "first":Z
    const/4 v12, 0x0

    move v7, v12

    .line 27
    .local v7, "i":I
    :goto_0
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    .line 28
    .local v8, "arg":Ljava/lang/Object;
    move-object v12, v8

    move-object v13, v5

    if-ne v12, v13, :cond_0

    .line 29
    .line 49
    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    move v7, v12

    .line 50
    .local v7, "len":I
    move v12, v7

    new-array v12, v12, [C

    move-object v8, v12

    .line 51
    .local v8, "buf":[C
    move-object v12, v4

    const/4 v13, 0x0

    move v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 52
    move-object v12, v3

    move-object v13, v8

    const/4 v14, 0x0

    move v15, v7

    invoke-interface {v12, v13, v14, v15}, Lgnu/lists/XConsumer;->writeComment([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    move-object v12, v2

    move-object v13, v1

    invoke-static {v12, v13}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 57
    .line 58
    return-void

    .line 30
    .local v7, "i":I
    .local v8, "arg":Ljava/lang/Object;
    :cond_0
    move-object v12, v8

    :try_start_1
    instance-of v12, v12, Lgnu/mapping/Values;

    if-eqz v12, :cond_3

    .line 32
    move-object v12, v8

    check-cast v12, Lgnu/mapping/Values;

    move-object v9, v12

    .line 33
    .local v9, "vals":Lgnu/mapping/Values;
    const/4 v12, 0x0

    move v10, v12

    .local v10, "it":I
    :goto_1
    move-object v12, v9

    move v13, v10

    invoke-virtual {v12, v13}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v12

    move/from16 v17, v12

    move/from16 v12, v17

    move/from16 v13, v17

    move v10, v13

    if-eqz v12, :cond_2

    .line 35
    move v12, v6

    if-nez v12, :cond_1

    .line 36
    move-object v12, v4

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 37
    :cond_1
    const/4 v12, 0x0

    move v6, v12

    .line 38
    move-object v12, v9

    move v13, v10

    invoke-virtual {v12, v13}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v4

    invoke-static {v12, v13}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 40
    .line 25
    .end local v9    # "vals":Lgnu/mapping/Values;
    .end local v10    # "it":I
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 43
    :cond_3
    move v12, v6

    if-nez v12, :cond_4

    .line 44
    move-object v12, v4

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 45
    :cond_4
    const/4 v12, 0x0

    move v6, v12

    .line 46
    move-object v12, v8

    move-object v13, v4

    invoke-static {v12, v13}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 56
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v5    # "endMarker":Ljava/lang/String;
    .end local v6    # "first":Z
    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/Object;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v2

    move-object v13, v1

    invoke-static {v12, v13}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v12, v11

    throw v12
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/CommentConstructor;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/CommentConstructor;
    return v0
.end method
