.class public Lcom/google/appinventor/components/runtime/util/BiggerFuture;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V
    .locals 18

    .prologue
    .line 20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object v8, v0

    new-instance v9, Ljava/lang/ThreadGroup;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string/jumbo v11, "biggerthreads"

    invoke-direct {v10, v11}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    new-instance v10, Lgnu/mapping/RunnableClosure;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    move-object v11, v5

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 27
    move-object v1, v3

    const-string/jumbo v3, "#<future "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 28
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/BiggerFuture;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 29
    move-object v2, v1

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 30
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
