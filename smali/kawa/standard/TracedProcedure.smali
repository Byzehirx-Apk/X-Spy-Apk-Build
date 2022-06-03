.class public Lkawa/standard/TracedProcedure;
.super Lgnu/mapping/ProcedureN;
.source "TracedProcedure.java"


# static fields
.field static curIndentSym:Lgnu/mapping/Symbol;

.field static indentationStep:I


# instance fields
.field enabled:Z

.field public proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    sput v0, Lkawa/standard/TracedProcedure;->indentationStep:I

    .line 15
    const-string/jumbo v0, "current-indentation"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lkawa/standard/TracedProcedure;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "enable":Z
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 19
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    .line 20
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 21
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 22
    .local v3, "name":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 23
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lkawa/standard/TracedProcedure;->setName(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static doTrace(Lgnu/mapping/Procedure;Z)Lgnu/mapping/Procedure;
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    instance-of v2, v2, Lkawa/standard/TracedProcedure;

    if-eqz v2, :cond_0

    .line 116
    move-object v2, v0

    check-cast v2, Lkawa/standard/TracedProcedure;

    move v3, v1

    iput-boolean v3, v2, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 117
    move-object v2, v0

    move-object v0, v2

    .line 120
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    :goto_0
    return-object v0

    .restart local v0    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    new-instance v2, Lkawa/standard/TracedProcedure;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/standard/TracedProcedure;-><init>(Lgnu/mapping/Procedure;Z)V

    move-object v0, v2

    goto :goto_0
.end method

.method static indent(ILjava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 43
    move v0, p0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    if-ltz v2, :cond_0

    .line 44
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/io/PrintWriter;)V
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Ljava/io/PrintWriter;
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x32

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    move-object v3, v1

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 35
    .local v2, "ex":Ljava/io/IOException;
    move-object v3, v1

    const-string/jumbo v4, "<caught "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 37
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/TracedProcedure;
    move-object/from16 v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v14, v0

    iget-boolean v14, v14, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v14, :cond_4

    .line 51
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v14

    move-object v2, v14

    .line 52
    .local v2, "env":Lgnu/mapping/Environment;
    move-object v14, v2

    sget-object v15, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    invoke-virtual {v14, v15}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v14

    move-object v3, v14

    .line 53
    .local v3, "curIndentLoc":Lgnu/mapping/Location;
    move-object v14, v3

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v4, v14

    .line 55
    .local v4, "oldIndent":Ljava/lang/Object;
    move-object v14, v4

    instance-of v14, v14, Lgnu/math/IntNum;

    if-nez v14, :cond_2

    .line 57
    const/4 v14, 0x0

    move v5, v14

    .line 58
    .local v5, "curIndent":I
    move-object v14, v3

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v15

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 62
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v14

    move-object v6, v14

    .line 63
    .local v6, "out":Ljava/io/PrintWriter;
    move-object v14, v0

    invoke-virtual {v14}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 64
    .local v7, "name":Ljava/lang/String;
    move-object v14, v7

    if-nez v14, :cond_0

    .line 65
    const-string/jumbo v14, "??"

    move-object v7, v14

    .line 68
    :cond_0
    move v14, v5

    move-object v15, v6

    invoke-static {v14, v15}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 69
    move-object v14, v6

    const-string/jumbo v15, "call to "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    move-object v14, v6

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    move-object v14, v1

    array-length v14, v14

    move v8, v14

    .line 72
    .local v8, "len":I
    move-object v14, v6

    const-string/jumbo v15, " ("

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_1
    move v14, v9

    move v15, v8

    if-ge v14, v15, :cond_3

    .line 75
    move v14, v9

    if-lez v14, :cond_1

    .line 76
    move-object v14, v6

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    :cond_1
    move-object v14, v1

    move v15, v9

    aget-object v14, v14, v15

    move-object v15, v6

    invoke-static {v14, v15}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 73
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 61
    .end local v5    # "curIndent":I
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "len":I
    .end local v9    # "i":I
    :cond_2
    move-object v14, v4

    check-cast v14, Lgnu/math/IntNum;

    invoke-virtual {v14}, Lgnu/math/IntNum;->intValue()I

    move-result v14

    move v5, v14

    .restart local v5    # "curIndent":I
    goto :goto_0

    .line 79
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "len":I
    .restart local v9    # "i":I
    :cond_3
    move-object v14, v6

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    move v14, v5

    sget v15, Lkawa/standard/TracedProcedure;->indentationStep:I

    add-int/2addr v14, v15

    invoke-static {v14}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v14

    move-object v9, v14

    .line 84
    .local v9, "newIndentation":Lgnu/math/IntNum;
    move-object v14, v3

    move-object v15, v9

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 87
    .local v11, "save":Ljava/lang/Object;
    move-object v14, v0

    :try_start_0
    iget-object v14, v14, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    move-object v15, v1

    invoke-virtual {v14, v15}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    move-object v10, v14

    .line 97
    .local v10, "result":Ljava/lang/Object;
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 98
    .line 101
    move v14, v5

    move-object v15, v6

    invoke-static {v14, v15}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 102
    move-object v14, v6

    const-string/jumbo v15, "return from "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    move-object v14, v6

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    move-object v14, v6

    const-string/jumbo v15, " => "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    move-object v14, v10

    move-object v15, v6

    invoke-static {v14, v15}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 106
    move-object v14, v6

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 107
    move-object v14, v10

    move-object v0, v14

    .line 109
    .end local v0    # "this":Lkawa/standard/TracedProcedure;
    .end local v2    # "env":Lgnu/mapping/Environment;
    .end local v3    # "curIndentLoc":Lgnu/mapping/Location;
    .end local v4    # "oldIndent":Ljava/lang/Object;
    .end local v5    # "curIndent":I
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "len":I
    .end local v9    # "newIndentation":Lgnu/math/IntNum;
    .end local v10    # "result":Ljava/lang/Object;
    .end local v11    # "save":Ljava/lang/Object;
    :goto_2
    return-object v0

    .line 89
    .restart local v0    # "this":Lkawa/standard/TracedProcedure;
    .restart local v2    # "env":Lgnu/mapping/Environment;
    .restart local v3    # "curIndentLoc":Lgnu/mapping/Location;
    .restart local v4    # "oldIndent":Ljava/lang/Object;
    .restart local v5    # "curIndent":I
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "len":I
    .restart local v9    # "newIndentation":Lgnu/math/IntNum;
    .restart local v11    # "save":Ljava/lang/Object;
    :catch_0
    move-exception v14

    move-object v12, v14

    .line 91
    .local v12, "e":Ljava/lang/RuntimeException;
    move v14, v5

    move-object v15, v6

    :try_start_1
    invoke-static {v14, v15}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 92
    move-object v14, v6

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "procedure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " throws exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    move-object v14, v12

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    move-object v14, v13

    throw v14

    .line 109
    .end local v2    # "env":Lgnu/mapping/Environment;
    .end local v3    # "curIndentLoc":Lgnu/mapping/Location;
    .end local v4    # "oldIndent":Ljava/lang/Object;
    .end local v5    # "curIndent":I
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "len":I
    .end local v9    # "newIndentation":Lgnu/math/IntNum;
    .end local v11    # "save":Ljava/lang/Object;
    :cond_4
    move-object v14, v0

    iget-object v14, v14, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    move-object v15, v1

    invoke-virtual {v14, v15}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    goto :goto_2
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lkawa/standard/TracedProcedure;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v3, v1

    const-string/jumbo v4, "#<procedure "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 127
    .local v2, "n":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 128
    move-object v3, v1

    const-string/jumbo v4, "<unnamed>"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :goto_0
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, ", traced>"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    return-void

    .line 130
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    const-string/jumbo v4, ">"

    goto :goto_1
.end method
