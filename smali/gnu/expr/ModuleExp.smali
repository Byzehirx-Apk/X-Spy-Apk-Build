.class public Lgnu/expr/ModuleExp;
.super Lgnu/expr/LambdaExp;
.source "ModuleExp.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EXPORT_SPECIFIED:I = 0x4000

.field public static final IMMEDIATE:I = 0x100000

.field public static final LAZY_DECLARATIONS:I = 0x80000

.field public static final NONSTATIC_SPECIFIED:I = 0x10000

.field public static final STATIC_RUN_SPECIFIED:I = 0x40000

.field public static final STATIC_SPECIFIED:I = 0x8000

.field public static final SUPERTYPE_SPECIFIED:I = 0x20000

.field public static alwaysCompile:Z

.field public static compilerAvailable:Z

.field public static dumpZipPrefix:Ljava/lang/String;

.field public static interactiveCounter:I

.field static lastZipCounter:I

.field public static neverCompile:Z


# instance fields
.field info:Lgnu/expr/ModuleInfo;

.field interfaces:[Lgnu/bytecode/ClassType;

.field superType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 173
    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/LambdaExp;-><init>()V

    .line 28
    return-void
.end method

.method public static final evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object/from16 v3, p3

    .local v3, "url":Ljava/net/URL;
    move-object/from16 v4, p4

    .local v4, "msg":Lgnu/mapping/OutPort;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v8

    move-object v5, v8

    .line 197
    .local v5, "mexp":Lgnu/expr/ModuleExp;
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    move-object v6, v8

    .line 198
    .local v6, "language":Lgnu/expr/Language;
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static {v8, v9, v10, v11}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 199
    .local v7, "inst":Ljava/lang/Object;
    move-object v8, v7

    if-nez v8, :cond_0

    .line 200
    const/4 v8, 0x0

    move v0, v8

    .line 202
    .end local v0    # "env":Lgnu/mapping/Environment;
    :goto_0
    return v0

    .line 201
    .restart local v0    # "env":Lgnu/mapping/Environment;
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    move-object v11, v5

    move-object v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V

    .line 202
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0
.end method

.method public static final evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 214
    move-object/from16 v0, p0

    .local v0, "env":Lgnu/mapping/Environment;
    move-object/from16 v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object/from16 v2, p2

    .local v2, "url":Ljava/net/URL;
    move-object/from16 v3, p3

    .local v3, "msg":Lgnu/mapping/OutPort;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v13

    move-object v4, v13

    .line 215
    .local v4, "mexp":Lgnu/expr/ModuleExp;
    move-object v13, v4

    move-object v14, v1

    iget-object v14, v14, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v14, v13, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 216
    move-object v13, v0

    invoke-static {v13}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v13

    move-object v5, v13

    .line 217
    .local v5, "orig_env":Lgnu/mapping/Environment;
    move-object v13, v1

    invoke-static {v13}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v13

    move-object v6, v13

    .line 218
    .local v6, "orig_comp":Lgnu/expr/Compilation;
    move-object v13, v1

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v13

    move-object v7, v13

    .line 219
    .local v7, "messages":Lgnu/text/SourceMessages;
    const/4 v13, 0x0

    move-object v8, v13

    .line 220
    .local v8, "savedLoader":Ljava/lang/ClassLoader;
    const/4 v13, 0x0

    move-object v9, v13

    .line 227
    .local v9, "thread":Ljava/lang/Thread;
    sget-boolean v13, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-eqz v13, :cond_0

    sget-boolean v13, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v13, :cond_0

    .line 229
    new-instance v13, Ljava/lang/RuntimeException;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    const-string/jumbo v15, "alwaysCompile and neverCompile are both true!"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 231
    :cond_0
    sget-boolean v13, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-eqz v13, :cond_1

    .line 232
    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lgnu/expr/Compilation;->mustCompile:Z

    .line 237
    :cond_1
    move-object v13, v1

    const/4 v14, 0x6

    :try_start_0
    invoke-virtual {v13, v14}, Lgnu/expr/Compilation;->process(I)V

    .line 238
    move-object v13, v1

    iget-object v13, v13, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 240
    move-object v13, v3

    if-eqz v13, :cond_4

    move-object v13, v7

    move-object v14, v3

    const/16 v15, 0x14

    invoke-virtual {v13, v14, v15}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_5

    .line 241
    :cond_2
    const/4 v13, 0x0

    move-object v10, v13

    .line 285
    move-object v13, v5

    invoke-static {v13}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    move-object v13, v9

    if-eqz v13, :cond_3

    .line 288
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    move-object v13, v10

    move-object v0, v13

    .end local v0    # "env":Lgnu/mapping/Environment;
    :goto_0
    return-object v0

    .line 240
    .restart local v0    # "env":Lgnu/mapping/Environment;
    :cond_4
    move-object v13, v7

    :try_start_1
    invoke-virtual {v13}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v13

    if-nez v13, :cond_2

    .line 247
    :cond_5
    move-object v13, v1

    iget-boolean v13, v13, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v13, :cond_8

    .line 250
    sget-boolean v13, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v13, :cond_6

    move-object v13, v3

    if-eqz v13, :cond_6

    .line 252
    move-object v13, v3

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[Evaluating final module \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v15}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 253
    move-object v13, v4

    move-object v14, v3

    invoke-virtual {v13, v14}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 254
    move-object v13, v3

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Lgnu/mapping/OutPort;->println(C)V

    .line 255
    move-object v13, v3

    invoke-virtual {v13}, Lgnu/mapping/OutPort;->flush()V

    .line 257
    :cond_6
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v13

    .line 285
    move-object v13, v5

    invoke-static {v13}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    move-object v13, v9

    if-eqz v13, :cond_7

    .line 288
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_7
    move-object v13, v10

    move-object v0, v13

    goto :goto_0

    .line 261
    :cond_8
    move-object v13, v1

    move-object v14, v2

    :try_start_2
    invoke-static {v13, v14}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    move-object v10, v13

    .line 262
    .local v10, "clas":Ljava/lang/Class;
    move-object v13, v10

    if-nez v13, :cond_a

    .line 263
    const/4 v13, 0x0

    move-object v11, v13

    .line 285
    move-object v13, v5

    invoke-static {v13}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    move-object v13, v9

    if-eqz v13, :cond_9

    .line 288
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    move-object v13, v11

    move-object v0, v13

    goto/16 :goto_0

    .line 266
    :cond_a
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    move-object v9, v13

    .line 267
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    move-object v8, v13

    .line 268
    move-object v13, v9

    move-object v14, v10

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    .line 275
    :goto_1
    move-object v13, v4

    const/4 v14, 0x0

    :try_start_4
    iput-object v14, v13, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 276
    move-object v13, v4

    const/4 v14, 0x0

    iput-object v14, v13, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 277
    move-object v13, v3

    if-eqz v13, :cond_d

    move-object v13, v7

    move-object v14, v3

    const/16 v15, 0x14

    invoke-virtual {v13, v14, v15}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 279
    :cond_b
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v13

    move-object v11, v13

    .line 285
    move-object v13, v5

    invoke-static {v13}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    move-object v13, v9

    if-eqz v13, :cond_c

    .line 288
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_c
    move-object v13, v11

    move-object v0, v13

    goto/16 :goto_0

    .line 270
    :catch_0
    move-exception v13

    move-object v11, v13

    .line 272
    .local v11, "ex":Ljava/lang/Throwable;
    const/4 v13, 0x0

    move-object v9, v13

    goto :goto_1

    .line 277
    .end local v11    # "ex":Ljava/lang/Throwable;
    :cond_d
    move-object v13, v7

    :try_start_5
    invoke-virtual {v13}, Lgnu/text/SourceMessages;->seenErrors()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v13

    if-nez v13, :cond_b

    .line 280
    :cond_e
    move-object v13, v10

    move-object v11, v13

    .line 285
    move-object v13, v5

    invoke-static {v13}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    move-object v13, v9

    if-eqz v13, :cond_f

    .line 288
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_f
    move-object v13, v11

    move-object v0, v13

    goto/16 :goto_0

    .line 285
    .end local v10    # "clas":Ljava/lang/Class;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v5

    invoke-static {v13}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    move-object v13, v6

    invoke-static {v13}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    move-object v13, v9

    if-eqz v13, :cond_10

    .line 288
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_10
    move-object v13, v12

    throw v13
.end method

.method public static final evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 297
    move-object/from16 v2, p0

    .local v2, "env":Lgnu/mapping/Environment;
    move-object/from16 v3, p1

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object/from16 v4, p2

    .local v4, "language":Lgnu/expr/Language;
    move-object/from16 v5, p3

    .local v5, "mexp":Lgnu/expr/ModuleExp;
    move-object/from16 v6, p4

    .local v6, "inst":Ljava/lang/Object;
    move-object/from16 v18, v2

    invoke-static/range {v18 .. v18}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v18

    move-object/from16 v7, v18

    .line 298
    .local v7, "orig_env":Lgnu/mapping/Environment;
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 299
    .local v8, "savedLoader":Ljava/lang/ClassLoader;
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 302
    .local v9, "thread":Ljava/lang/Thread;
    move-object/from16 v18, v6

    :try_start_0
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 304
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 383
    :cond_0
    :goto_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    move-object/from16 v18, v9

    if-eqz v18, :cond_1

    .line 389
    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 391
    :cond_1
    return-void

    .line 308
    :cond_2
    move-object/from16 v18, v6

    :try_start_1
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 309
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v18

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/Class;

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    .line 311
    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Runnable;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 313
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/ModuleBody;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 315
    move-object/from16 v18, v6

    check-cast v18, Lgnu/expr/ModuleBody;

    move-object/from16 v10, v18

    .line 316
    .local v10, "mb":Lgnu/expr/ModuleBody;
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lgnu/expr/ModuleBody;->runDone:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 318
    move-object/from16 v18, v10

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lgnu/expr/ModuleBody;->runDone:Z

    .line 319
    move-object/from16 v18, v10

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 321
    .line 326
    .end local v10    # "mb":Lgnu/expr/ModuleBody;
    :cond_4
    :goto_1
    move-object/from16 v18, v5

    if-nez v18, :cond_7

    .line 327
    move-object/from16 v18, v6

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    invoke-static/range {v18 .. v20}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    goto :goto_0

    .line 323
    :cond_5
    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/Runnable;

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 387
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    move-object/from16 v18, v9

    if-eqz v18, :cond_6

    .line 389
    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    move-object/from16 v18, v17

    throw v18

    .line 331
    :cond_7
    move-object/from16 v18, v5

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v18

    move-object/from16 v10, v18

    .line 332
    .local v10, "decl":Lgnu/expr/Declaration;
    :goto_2
    move-object/from16 v18, v10

    if-eqz v18, :cond_0

    .line 334
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    .line 335
    .local v11, "dname":Ljava/lang/Object;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v18, v11

    if-nez v18, :cond_9

    .line 336
    .line 332
    :cond_8
    :goto_3
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v18

    move-object/from16 v10, v18

    goto :goto_2

    .line 337
    :cond_9
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 338
    .local v12, "fld":Lgnu/bytecode/Field;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v18, v11

    check-cast v18, Lgnu/mapping/Symbol;

    :goto_4
    move-object/from16 v13, v18

    .line 340
    .local v13, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v18, v4

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 341
    .local v14, "property":Ljava/lang/Object;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v18

    move-object/from16 v15, v18

    .line 346
    .local v15, "dvalue":Lgnu/expr/Expression;
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v18

    const/16 v19, 0x10

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_10

    .line 349
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v18, v15

    sget-object v19, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 351
    move-object/from16 v18, v15

    check-cast v18, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v16, v18

    .line 360
    .local v16, "value":Ljava/lang/Object;
    :cond_a
    :goto_5
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 361
    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v16

    check-cast v21, Lgnu/mapping/Location;

    invoke-virtual/range {v18 .. v21}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v18

    .line 364
    :goto_6
    goto :goto_3

    .line 338
    .end local v13    # "sym":Lgnu/mapping/Symbol;
    .end local v14    # "property":Ljava/lang/Object;
    .end local v15    # "dvalue":Lgnu/expr/Expression;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_b
    const-string/jumbo v18, ""

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v18

    goto :goto_4

    .line 354
    .restart local v13    # "sym":Lgnu/mapping/Symbol;
    .restart local v14    # "property":Ljava/lang/Object;
    .restart local v15    # "dvalue":Lgnu/expr/Expression;
    :cond_c
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v16, v18

    .line 355
    .restart local v16    # "value":Ljava/lang/Object;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v18

    if-nez v18, :cond_d

    .line 356
    move-object/from16 v18, v10

    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_5

    .line 357
    :cond_d
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 358
    :cond_e
    move-object/from16 v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_5

    .line 363
    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v16

    invoke-virtual/range {v18 .. v21}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 367
    .end local v16    # "value":Ljava/lang/Object;
    :cond_10
    new-instance v18, Lgnu/kawa/reflect/StaticFieldLocation;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object/from16 v16, v18

    .line 370
    .local v16, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object/from16 v18, v16

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 371
    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v16

    invoke-virtual/range {v18 .. v21}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v18

    .line 372
    move-object/from16 v18, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public static evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 50
    move-object/from16 v0, p0

    .local v0, "comp":Lgnu/expr/Compilation;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v13

    move-object v2, v13

    .line 51
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v13

    move-object v3, v13

    .line 55
    .local v3, "messages":Lgnu/text/SourceMessages;
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 57
    move-object v13, v3

    invoke-virtual {v13}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 58
    const/4 v13, 0x0

    move-object v0, v13

    .line 148
    .end local v0    # "comp":Lgnu/expr/Compilation;
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "comp":Lgnu/expr/Compilation;
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object v4, v13

    .line 61
    .local v4, "loader":Lgnu/bytecode/ArrayClassLoader;
    move-object v13, v1

    if-nez v13, :cond_1

    .line 62
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v13

    invoke-virtual {v13}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v13

    move-object v1, v13

    .line 63
    :cond_1
    move-object v13, v4

    move-object v14, v1

    invoke-virtual {v13, v14}, Lgnu/bytecode/ArrayClassLoader;->setResourceContext(Ljava/net/URL;)V

    .line 65
    const/4 v13, 0x0

    move-object v5, v13

    .line 66
    .local v5, "zout":Ljava/util/zip/ZipOutputStream;
    sget-object v13, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 68
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    sget-object v15, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v13

    .line 70
    .local v6, "zipname":Ljava/lang/StringBuffer;
    sget v13, Lgnu/expr/ModuleExp;->lastZipCounter:I

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    sput v13, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 71
    sget v13, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sget v14, Lgnu/expr/ModuleExp;->lastZipCounter:I

    if-le v13, v14, :cond_2

    .line 72
    sget v13, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sput v13, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 73
    :cond_2
    move-object v13, v6

    sget v14, Lgnu/expr/ModuleExp;->lastZipCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 74
    move-object v13, v6

    const-string/jumbo v14, ".zip"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 75
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v13

    .line 77
    .local v7, "zfout":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v7

    invoke-direct {v14, v15}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v13

    .line 80
    .end local v6    # "zipname":Ljava/lang/StringBuffer;
    .end local v7    # "zfout":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v13, 0x0

    move v6, v13

    .local v6, "iClass":I
    :goto_1
    move v13, v6

    move-object v14, v0

    iget v14, v14, Lgnu/expr/Compilation;->numClasses:I

    if-ge v13, v14, :cond_5

    .line 82
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v14, v6

    aget-object v13, v13, v14

    move-object v7, v13

    .line 83
    .local v7, "clas":Lgnu/bytecode/ClassType;
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 84
    .local v8, "className":Ljava/lang/String;
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v13

    move-object v9, v13

    .line 85
    .local v9, "classBytes":[B
    move-object v13, v4

    move-object v14, v8

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    .line 87
    move-object v13, v5

    if-eqz v13, :cond_4

    .line 89
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v8

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 90
    .local v10, "clname":Ljava/lang/String;
    new-instance v13, Ljava/util/zip/ZipEntry;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v10

    invoke-direct {v14, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    move-object v11, v13

    .line 92
    .local v11, "zent":Ljava/util/zip/ZipEntry;
    move-object v13, v11

    move-object v14, v9

    array-length v14, v14

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    new-instance v13, Ljava/util/zip/CRC32;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/zip/CRC32;-><init>()V

    move-object v12, v13

    .line 94
    .local v12, "crc":Ljava/util/zip/CRC32;
    move-object v13, v12

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/util/zip/CRC32;->update([B)V

    .line 95
    move-object v13, v11

    move-object v14, v12

    invoke-virtual {v14}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 96
    move-object v13, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 97
    move-object v13, v5

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    move-object v13, v5

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 80
    .end local v10    # "clname":Ljava/lang/String;
    .end local v11    # "zent":Ljava/util/zip/ZipEntry;
    .end local v12    # "crc":Ljava/util/zip/CRC32;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 101
    .end local v7    # "clas":Lgnu/bytecode/ClassType;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "classBytes":[B
    :cond_5
    move-object v13, v5

    if-eqz v13, :cond_6

    .line 103
    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 111
    :cond_6
    const/4 v13, 0x0

    move-object v6, v13

    .line 115
    .local v6, "clas":Ljava/lang/Class;
    move-object v13, v4

    move-object v7, v13

    .line 116
    .local v7, "context":Lgnu/bytecode/ArrayClassLoader;
    :goto_2
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v13

    instance-of v13, v13, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v13, :cond_7

    .line 117
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v13

    check-cast v13, Lgnu/bytecode/ArrayClassLoader;

    move-object v7, v13

    goto :goto_2

    .line 118
    :cond_7
    const/4 v13, 0x0

    move v8, v13

    .local v8, "iClass":I
    :goto_3
    move v13, v8

    move-object v14, v0

    iget v14, v14, Lgnu/expr/Compilation;->numClasses:I

    if-ge v13, v14, :cond_a

    .line 120
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    .line 121
    .local v9, "ctype":Lgnu/bytecode/ClassType;
    move-object v13, v4

    move-object v14, v9

    invoke-virtual {v14}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v10, v13

    .line 122
    .local v10, "cclass":Ljava/lang/Class;
    move-object v13, v9

    move-object v14, v10

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->setReflectClass(Ljava/lang/Class;)V

    .line 123
    move-object v13, v9

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 124
    move v13, v8

    if-nez v13, :cond_9

    .line 125
    move-object v13, v10

    move-object v6, v13

    .line 118
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 130
    :cond_9
    move-object v13, v7

    move-object v14, v4

    if-eq v13, v14, :cond_8

    .line 131
    move-object v13, v7

    move-object v14, v10

    invoke-virtual {v13, v14}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    .line 150
    .end local v4    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .end local v5    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local v6    # "clas":Ljava/lang/Class;
    .end local v7    # "context":Lgnu/bytecode/ArrayClassLoader;
    .end local v8    # "iClass":I
    .end local v9    # "ctype":Lgnu/bytecode/ClassType;
    .end local v10    # "cclass":Ljava/lang/Class;
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 152
    .local v4, "ex":Ljava/io/IOException;
    new-instance v13, Lgnu/mapping/WrappedException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string/jumbo v15, "I/O error in lambda eval"

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 134
    .local v4, "loader":Lgnu/bytecode/ArrayClassLoader;
    .restart local v5    # "zout":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "clas":Ljava/lang/Class;
    .restart local v7    # "context":Lgnu/bytecode/ArrayClassLoader;
    .restart local v8    # "iClass":I
    :cond_a
    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object v8, v13

    .line 135
    .local v8, "minfo":Lgnu/expr/ModuleInfo;
    move-object v13, v8

    move-object v14, v6

    invoke-virtual {v13, v14}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 136
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 137
    move-object v13, v8

    iget v13, v13, Lgnu/expr/ModuleInfo;->numDependencies:I

    move v9, v13

    .line 139
    .local v9, "ndeps":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "idep":I
    :goto_5
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_c

    .line 141
    move-object v13, v8

    iget-object v13, v13, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move v14, v10

    aget-object v13, v13, v14

    move-object v11, v13

    .line 142
    .local v11, "dep":Lgnu/expr/ModuleInfo;
    move-object v13, v11

    invoke-virtual {v13}, Lgnu/expr/ModuleInfo;->getModuleClassRaw()Ljava/lang/Class;

    move-result-object v13

    move-object v12, v13

    .line 143
    .local v12, "dclass":Ljava/lang/Class;
    move-object v13, v12

    if-nez v13, :cond_b

    .line 144
    move-object v13, v11

    iget-object v13, v13, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    move-result-object v13

    move-object v12, v13

    .line 145
    :cond_b
    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object v14, v12

    invoke-virtual {v13, v14}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 148
    .end local v11    # "dep":Lgnu/expr/ModuleInfo;
    .end local v12    # "dclass":Ljava/lang/Class;
    :cond_c
    move-object v13, v6

    move-object v0, v13

    goto/16 :goto_0

    .line 154
    .end local v4    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .end local v5    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local v6    # "clas":Ljava/lang/Class;
    .end local v7    # "context":Lgnu/bytecode/ArrayClassLoader;
    .end local v8    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v9    # "ndeps":I
    .end local v10    # "idep":I
    :catch_1
    move-exception v13

    move-object v4, v13

    .line 156
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v13, Lgnu/mapping/WrappedException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string/jumbo v15, "class not found in lambda eval"

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 158
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v13

    move-object v4, v13

    .line 160
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v13

    const/16 v14, 0x66

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "internal compile error - caught "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance v13, Lgnu/text/SyntaxException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    invoke-direct {v14, v15}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v13
.end method

.method public static mustAlwaysCompile()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 187
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 188
    return-void
.end method

.method public static mustNeverCompile()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 183
    return-void
.end method


# virtual methods
.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v2

    .line 427
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 430
    goto :goto_0
.end method

.method allocFields(Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 440
    move-object v1, p0

    .local v1, "this":Lgnu/expr/ModuleExp;
    move-object v2, p1

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    .line 441
    .local v3, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 443
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v5, :cond_2

    .line 444
    .line 441
    :cond_1
    :goto_1
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 445
    :cond_2
    move-object v5, v3

    const-wide/32 v6, 0x10000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    const-wide/16 v6, 0x6

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    move-object v5, v3

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_1

    .line 451
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    .line 452
    :goto_2
    move-object v5, v3

    if-eqz v5, :cond_b

    .line 454
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v5, :cond_5

    .line 455
    .line 452
    :cond_4
    :goto_3
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    .line 456
    :cond_5
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    move-object v4, v5

    .line 457
    .local v4, "value":Lgnu/expr/Expression;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v3

    const-wide/16 v6, 0x4000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    const-wide/16 v6, 0x6

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_6

    .line 462
    goto :goto_3

    .line 463
    :cond_6
    move-object v5, v3

    const-wide/32 v6, 0x10000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 464
    goto :goto_3

    .line 465
    :cond_7
    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_8

    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-nez v5, :cond_8

    move-object v5, v4

    instance-of v5, v5, Lgnu/expr/ClassExp;

    if-nez v5, :cond_8

    .line 469
    move-object v5, v4

    check-cast v5, Lgnu/expr/LambdaExp;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v5

    goto :goto_3

    .line 473
    :cond_8
    move-object v5, v3

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v7

    if-nez v7, :cond_9

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move-object v7, v4

    :goto_4
    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 478
    .end local v4    # "value":Lgnu/expr/Expression;
    :cond_b
    return-void
.end method

.method public classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 14

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v10, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v9, v10, :cond_0

    .line 533
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object v0, v9

    .line 590
    .end local v0    # "this":Lgnu/expr/ModuleExp;
    :goto_0
    return-object v0

    .line 534
    .restart local v0    # "this":Lgnu/expr/ModuleExp;
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 535
    .local v2, "fileName":Ljava/lang/String;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 536
    .local v3, "mname":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v4, v9

    .line 537
    .local v4, "className":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v5, v9

    .line 538
    .local v5, "path":Lgnu/text/Path;
    move-object v9, v3

    if-eqz v9, :cond_5

    .line 539
    move-object v9, v3

    move-object v2, v9

    .line 562
    :cond_1
    :goto_1
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 563
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 564
    :cond_2
    move-object v9, v2

    invoke-static {v9}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 565
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    move-object v9, v5

    if-eqz v9, :cond_a

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/text/Path;->isAbsolute()Z

    move-result v9

    if-nez v9, :cond_a

    move-object v9, v5

    invoke-virtual {v9}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v6, v10

    .local v6, "parentPath":Lgnu/text/Path;
    if-eqz v9, :cond_a

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v7, v10

    .local v7, "parent":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    move-object v9, v7

    const-string/jumbo v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a

    .line 572
    move-object v9, v7

    const-string/jumbo v10, "file.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 573
    move-object v9, v7

    const-string/jumbo v10, "./"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 574
    move-object v9, v7

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 575
    :cond_3
    move-object v9, v7

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v2

    :goto_2
    move-object v4, v9

    .line 580
    .end local v6    # "parentPath":Lgnu/text/Path;
    .end local v7    # "parent":Ljava/lang/String;
    :goto_3
    new-instance v9, Lgnu/bytecode/ClassType;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 581
    .local v8, "clas":Lgnu/bytecode/ClassType;
    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 582
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    move-object v10, v0

    if-ne v9, v10, :cond_4

    .line 584
    move-object v9, v1

    iget-object v9, v9, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v9, :cond_b

    .line 585
    move-object v9, v1

    move-object v10, v8

    iput-object v10, v9, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 590
    :cond_4
    :goto_4
    move-object v9, v8

    move-object v0, v9

    goto/16 :goto_0

    .line 540
    .end local v8    # "clas":Lgnu/bytecode/ClassType;
    :cond_5
    move-object v9, v2

    if-nez v9, :cond_6

    .line 542
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 543
    move-object v9, v2

    if-nez v9, :cond_1

    .line 544
    const-string/jumbo v9, "$unnamed_input_file$"

    move-object v2, v9

    goto/16 :goto_1

    .line 546
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    move-object v9, v0

    iget-object v9, v9, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string/jumbo v10, "/dev/stdin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 548
    :cond_7
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 549
    move-object v9, v2

    if-nez v9, :cond_1

    .line 550
    const-string/jumbo v9, "$stdin$"

    move-object v2, v9

    goto/16 :goto_1

    .line 554
    :cond_8
    move-object v9, v2

    invoke-static {v9}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v9

    move-object v5, v9

    .line 555
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 556
    move-object v9, v2

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    move v6, v9

    .line 557
    .local v6, "dotIndex":I
    move v9, v6

    if-lez v9, :cond_1

    .line 558
    move-object v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    goto/16 :goto_1

    .line 575
    .local v6, "parentPath":Lgnu/text/Path;
    .restart local v7    # "parent":Ljava/lang/String;
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v7

    invoke-static {v10}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 579
    .end local v6    # "parentPath":Lgnu/text/Path;
    .end local v7    # "parent":Ljava/lang/String;
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    iget-object v10, v10, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto/16 :goto_3

    .line 586
    .restart local v8    # "clas":Lgnu/bytecode/ClassType;
    :cond_b
    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 587
    move-object v9, v1

    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "inconsistent main class name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - old name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_4
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 6

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 521
    move-object v3, v0

    const/high16 v4, 0x80000

    :try_start_0
    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 523
    :cond_0
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleExp;->decls:Lgnu/expr/Declaration;

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return-object v0

    .line 523
    .restart local v0    # "this":Lgnu/expr/ModuleExp;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public final getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return-object v0
.end method

.method public final getSuperType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return-object v0
.end method

.method public final isStatic()Z
    .locals 3

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, v0

    const v2, 0x8000

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lgnu/expr/Compilation;->moduleStatic:I

    if-gez v1, :cond_0

    move-object v1, v0

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v1, v0

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ModuleExp;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 8

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v4, v1

    const-string/jumbo v5, "(Module/"

    const-string/jumbo v6, ")"

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ModuleExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 489
    .local v2, "sym":Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 491
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 492
    move-object v4, v1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 494
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/expr/ModuleExp;->id:I

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(I)V

    .line 495
    move-object v4, v1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 496
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 497
    move-object v4, v1

    const-string/jumbo v5, "("

    const/4 v6, 0x0

    const-string/jumbo v7, ")"

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 498
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 499
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 501
    move-object v4, v1

    const-string/jumbo v5, "Declarations:"

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 502
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 504
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 505
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 502
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 508
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 509
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 510
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    if-nez v4, :cond_2

    .line 511
    move-object v4, v1

    const-string/jumbo v5, "<null body>"

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 514
    :goto_1
    move-object v4, v1

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 515
    return-void

    .line 513
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 616
    .local v2, "name":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    .line 618
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, v3, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 619
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 623
    :goto_0
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/ModuleExp;->flags:I

    .line 624
    return-void

    .line 622
    :cond_0
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "s":[Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setSuperType(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "s":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public staticInitRun()Z
    .locals 3

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return v0

    .restart local v0    # "this":Lgnu/expr/ModuleExp;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ModuleExp;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    const/4 v3, 0x0

    move-object v2, v3

    .line 596
    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 605
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 606
    :cond_1
    move-object v3, v2

    if-nez v3, :cond_2

    .line 607
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 608
    :cond_2
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
