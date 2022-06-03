.class public Lgnu/expr/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleInfo$ClassToInfoMap;
    }
.end annotation


# static fields
.field static mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;


# instance fields
.field private className:Ljava/lang/String;

.field comp:Lgnu/expr/Compilation;

.field dependencies:[Lgnu/expr/ModuleInfo;

.field exp:Lgnu/expr/ModuleExp;

.field public lastCheckedTime:J

.field public lastModifiedTime:J

.field moduleClass:Ljava/lang/Class;

.field numDependencies:I

.field sourceAbsPath:Lgnu/text/Path;

.field sourceAbsPathname:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lgnu/expr/ModuleInfo$ClassToInfoMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/expr/ModuleInfo$ClassToInfoMap;-><init>()V

    sput-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method public static absPath(Ljava/lang/String;)Lgnu/text/Path;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "path":Ljava/lang/String;
    return-object v0
.end method

.method public static find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/ClassType;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 254
    .end local v0    # "type":Lgnu/bytecode/ClassType;
    :goto_0
    return-object v0

    .line 250
    .restart local v0    # "type":Lgnu/bytecode/ClassType;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 254
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "instance":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleContext;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "instance":Ljava/lang/Object;
    return-object v0
.end method

.method static makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V
    .locals 13

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "mod":Lgnu/expr/ModuleExp;
    move-object v1, p1

    .local v1, "fdecl":Lgnu/expr/Declaration;
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    .line 278
    .local v2, "fvalue":Ljava/lang/Object;
    move-object v9, v2

    instance-of v9, v9, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v9, :cond_2

    .line 280
    move-object v9, v2

    check-cast v9, Lgnu/kawa/reflect/FieldLocation;

    move-object v3, v9

    .line 281
    .local v3, "floc":Lgnu/kawa/reflect/FieldLocation;
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v9

    move-object v4, v9

    .line 282
    .local v4, "vdecl":Lgnu/expr/Declaration;
    new-instance v9, Lgnu/expr/ReferenceExp;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v5, v9

    .line 283
    .local v5, "fref":Lgnu/expr/ReferenceExp;
    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 284
    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 285
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 286
    move-object v9, v4

    invoke-virtual {v9}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 287
    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 288
    :cond_0
    move-object v9, v4

    const-wide/32 v10, 0x8000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 289
    move-object v9, v1

    invoke-virtual {v9}, Lgnu/expr/Declaration;->setSyntax()V

    .line 290
    :cond_1
    move-object v9, v1

    const-wide/16 v10, 0x800

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-nez v9, :cond_2

    .line 292
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v9

    move-object v6, v9

    .line 293
    .local v6, "vtype":Lgnu/bytecode/ClassType;
    move-object v9, v6

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 294
    .local v7, "vname":Ljava/lang/String;
    move-object v9, v0

    invoke-virtual {v9}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    .line 295
    .local v8, "xdecl":Lgnu/expr/Declaration;
    :goto_0
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 297
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v8

    const-wide/32 v10, 0x40000000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 300
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 301
    .line 306
    .end local v3    # "floc":Lgnu/kawa/reflect/FieldLocation;
    .end local v4    # "vdecl":Lgnu/expr/Declaration;
    .end local v5    # "fref":Lgnu/expr/ReferenceExp;
    .end local v6    # "vtype":Lgnu/bytecode/ClassType;
    .end local v7    # "vname":Ljava/lang/String;
    .end local v8    # "xdecl":Lgnu/expr/Declaration;
    :cond_2
    return-void

    .line 295
    .restart local v3    # "floc":Lgnu/kawa/reflect/FieldLocation;
    .restart local v4    # "vdecl":Lgnu/expr/Declaration;
    .restart local v5    # "fref":Lgnu/expr/ReferenceExp;
    .restart local v6    # "vtype":Lgnu/bytecode/ClassType;
    .restart local v7    # "vname":Ljava/lang/String;
    .restart local v8    # "xdecl":Lgnu/expr/Declaration;
    :cond_3
    move-object v9, v8

    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v9

    move-object v8, v9

    goto :goto_0
.end method

.method public static register(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "instance":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 260
    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(Lgnu/expr/ModuleInfo;)V
    .locals 11

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, p1

    .local v1, "dep":Lgnu/expr/ModuleInfo;
    move-object v8, p0

    monitor-enter v8

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    if-nez v3, :cond_1

    .line 105
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [Lgnu/expr/ModuleInfo;

    iput-object v4, v3, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 112
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/expr/ModuleInfo;->numDependencies:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/expr/ModuleInfo;->numDependencies:I

    move-object v5, v1

    aput-object v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v8

    return-void

    .line 106
    :cond_1
    move-object v3, v0

    :try_start_1
    iget v3, v3, Lgnu/expr/ModuleInfo;->numDependencies:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 108
    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lgnu/expr/ModuleInfo;->numDependencies:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Lgnu/expr/ModuleInfo;

    move-object v2, v3

    .line 109
    .local v2, "deps":[Lgnu/expr/ModuleInfo;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/expr/ModuleInfo;->numDependencies:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v2    # "deps":[Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    throw v0
.end method

.method public checkCurrent(Lgnu/expr/ModuleManager;J)Z
    .locals 18

    .prologue
    .line 378
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object/from16 v1, p1

    .local v1, "manager":Lgnu/expr/ModuleManager;
    move-wide/from16 v2, p2

    .local v2, "now":J
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    if-nez v12, :cond_0

    .line 379
    const/4 v12, 0x1

    move v0, v12

    .line 439
    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    :goto_0
    return v0

    .line 380
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v12, v0

    iget-wide v12, v12, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    move-object v14, v1

    iget-wide v14, v14, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    add-long/2addr v12, v14

    move-wide v14, v2

    cmp-long v12, v12, v14

    if-ltz v12, :cond_2

    .line 381
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_1
    move v0, v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 382
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    invoke-virtual {v12}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v12

    move-wide v4, v12

    .line 383
    .local v4, "lastModifiedTime":J
    move-object v12, v0

    iget-wide v12, v12, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    move-wide v6, v12

    .line 384
    .local v6, "oldModifiedTime":J
    move-object v12, v0

    move-wide v13, v4

    iput-wide v13, v12, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 385
    move-object v12, v0

    move-wide v13, v2

    iput-wide v13, v12, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    .line 386
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v12, :cond_3

    .line 387
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 388
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-nez v12, :cond_4

    .line 392
    move-object v12, v0

    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v13}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    iput-object v13, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .line 399
    :cond_4
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v12, :cond_7

    .line 401
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v8, v12

    .line 402
    .local v8, "classFilename":Ljava/lang/String;
    move-object v12, v8

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    move v9, v12

    .line 403
    .local v9, "dot":I
    move v12, v9

    if-ltz v12, :cond_5

    .line 404
    move-object v12, v8

    move v13, v9

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 405
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".class"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 406
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    move-object v10, v12

    .line 407
    .local v10, "resource":Ljava/net/URL;
    move-object v12, v10

    if-eqz v12, :cond_6

    .line 411
    move-object v12, v10

    :try_start_1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    move-wide v6, v12

    .line 416
    .line 418
    :cond_6
    :goto_2
    move-object v12, v10

    if-nez v12, :cond_7

    .line 422
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0

    .line 394
    .end local v8    # "classFilename":Ljava/lang/String;
    .end local v9    # "dot":I
    .end local v10    # "resource":Ljava/net/URL;
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 396
    .local v8, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v12, 0x0

    move v0, v12

    goto/16 :goto_0

    .line 413
    .local v8, "classFilename":Ljava/lang/String;
    .restart local v9    # "dot":I
    .restart local v10    # "resource":Ljava/net/URL;
    :catch_1
    move-exception v12

    move-object v11, v12

    .line 415
    .local v11, "ex":Ljava/io/IOException;
    const/4 v12, 0x0

    move-object v10, v12

    goto :goto_2

    .line 425
    .end local v8    # "classFilename":Ljava/lang/String;
    .end local v9    # "dot":I
    .end local v10    # "resource":Ljava/net/URL;
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_7
    move-wide v12, v4

    move-wide v14, v6

    cmp-long v12, v12, v14

    if-lez v12, :cond_8

    .line 427
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 428
    const/4 v12, 0x0

    move v0, v12

    goto/16 :goto_0

    .line 430
    :cond_8
    move-object v12, v0

    iget v12, v12, Lgnu/expr/ModuleInfo;->numDependencies:I

    move v8, v12

    .local v8, "i":I
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_a

    .line 432
    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move v13, v8

    aget-object v12, v12, v13

    move-object v9, v12

    .line 433
    .local v9, "dep":Lgnu/expr/ModuleInfo;
    move-object v12, v9

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v12, :cond_9

    move-object v12, v9

    move-object v13, v1

    move-wide v14, v2

    invoke-virtual {v12, v13, v14, v15}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v12

    if-nez v12, :cond_9

    .line 435
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 436
    const/4 v12, 0x0

    move v0, v12

    goto/16 :goto_0

    .line 438
    :cond_9
    goto :goto_3

    .line 439
    .end local v9    # "dep":Lgnu/expr/ModuleInfo;
    :cond_a
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method public cleanupAfterCompilation()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v1, :cond_0

    .line 54
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 55
    :cond_0
    return-void
.end method

.method public clearClass()V
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 367
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 368
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 369
    return-void
.end method

.method public declared-synchronized getClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 128
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 129
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 133
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    monitor-exit v3

    return-object v0

    .line 130
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_1
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    .line 131
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    throw v0
.end method

.method public declared-synchronized getClassType()Lgnu/bytecode/ClassType;
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 118
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 121
    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 119
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_1

    .line 120
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v0, v1

    goto :goto_0

    .line 121
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    throw v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public declared-synchronized getModuleClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 218
    .local v1, "mclass":Ljava/lang/Class;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 219
    move-object v2, v1

    move-object v0, v2

    .line 222
    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    :goto_0
    monitor-exit v4

    return-object v0

    .line 220
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 221
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 217
    .end local v1    # "mclass":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    throw v0
.end method

.method public getModuleClassRaw()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public declared-synchronized getModuleExp()Lgnu/expr/ModuleExp;
    .locals 8

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    move-object v1, v3

    .line 144
    .local v1, "m":Lgnu/expr/ModuleExp;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 146
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v3, :cond_0

    .line 147
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v3, v3, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 156
    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    :goto_0
    monitor-exit v6

    return-object v0

    .line 148
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v2, v3

    .line 149
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    new-instance v3, Lgnu/expr/ModuleExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lgnu/expr/ModuleExp;-><init>()V

    move-object v1, v3

    .line 150
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 151
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 152
    move-object v3, v1

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Lgnu/expr/ModuleExp;->flags:I

    .line 153
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 154
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v2    # "ctype":Lgnu/bytecode/ClassType;
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 143
    .end local v1    # "m":Lgnu/expr/ModuleExp;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    throw v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public getRunInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 270
    .local v1, "inst":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 271
    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 272
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public getSourceAbsPath()Lgnu/text/Path;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public getSourceAbsPathname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    move-object v1, v2

    .line 94
    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 97
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 99
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v1, :cond_0

    const/16 v1, 0xe

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return v0

    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public loadByStages(I)V
    .locals 9

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move v1, p1

    .local v1, "wantedState":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v2, v6

    .line 313
    .local v2, "state":I
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 314
    .line 331
    :goto_0
    return-void

    .line 315
    :cond_0
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 316
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v2, v6

    .line 317
    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_1

    .line 318
    goto :goto_0

    .line 319
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 320
    move-object v6, v0

    iget v6, v6, Lgnu/expr/ModuleInfo;->numDependencies:I

    move v3, v6

    .line 321
    .local v3, "ndeps":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "idep":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 323
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 324
    .local v5, "dep":Lgnu/expr/ModuleInfo;
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 326
    .end local v5    # "dep":Lgnu/expr/ModuleInfo;
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v2, v6

    .line 327
    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_3

    .line 328
    goto :goto_0

    .line 329
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v2

    const/4 v8, -0x2

    and-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 330
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->process(I)V

    .line 331
    goto :goto_0
.end method

.method public loadEager(I)Z
    .locals 9

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move v1, p1

    .local v1, "wantedState":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 340
    const/4 v6, 0x0

    move v0, v6

    .line 361
    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    :goto_0
    return v0

    .line 341
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v2, v6

    .line 342
    .local v2, "state":I
    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_1

    .line 343
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 344
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 345
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 346
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 347
    move-object v6, v0

    iget v6, v6, Lgnu/expr/ModuleInfo;->numDependencies:I

    move v3, v6

    .line 348
    .local v3, "ndeps":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "idep":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_5

    .line 350
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 351
    .local v5, "dep":Lgnu/expr/ModuleInfo;
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 353
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_3

    .line 354
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 355
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 348
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 358
    .end local v5    # "dep":Lgnu/expr/ModuleInfo;
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_6

    .line 359
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v2

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->setState(I)V

    .line 360
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/Compilation;->process(I)V

    .line 361
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    move v7, v1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCompilation(Lgnu/expr/Compilation;)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v5, v1

    move-object v6, v0

    iput-object v6, v5, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 39
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 40
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    move-object v2, v5

    .line 41
    .local v2, "mod":Lgnu/expr/ModuleExp;
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 42
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 44
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 45
    .local v3, "fileName":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 46
    move-object v5, v3

    invoke-static {v5}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v5

    move-object v4, v5

    .line 47
    .local v4, "abs":Lgnu/text/Path;
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 49
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "abs":Lgnu/text/Path;
    :cond_0
    return-void
.end method

.method public setModuleClass(Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 233
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 234
    sget-object v2, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 235
    return-void
.end method

.method public setNamespaceUri(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setSourceAbsPath(Lgnu/text/Path;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object v1, p1

    .local v1, "path":Lgnu/text/Path;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 88
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public declared-synchronized setupModuleExp()Lgnu/expr/ModuleExp;
    .locals 16

    .prologue
    .line 162
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    move-object/from16 v14, p0

    monitor-enter v14

    move-object v10, v0

    :try_start_0
    invoke-virtual {v10}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v10

    move-object v1, v10

    .line 163
    .local v1, "mod":Lgnu/expr/ModuleExp;
    move-object v10, v1

    iget v10, v10, Lgnu/expr/ModuleExp;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v11, 0x80000

    and-int/2addr v10, v11

    if-nez v10, :cond_0

    .line 164
    move-object v10, v1

    move-object v0, v10

    .line 211
    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    :goto_0
    monitor-exit v14

    return-object v0

    .line 165
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_0
    move-object v10, v1

    const/4 v11, 0x0

    const/high16 v12, 0x80000

    :try_start_1
    invoke-virtual {v10, v11, v12}, Lgnu/expr/ModuleExp;->setFlag(ZI)V

    .line 168
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 170
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v3, v10

    .line 171
    .local v3, "rclass":Ljava/lang/Class;
    move-object v10, v3

    invoke-static {v10}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/ClassType;

    move-object v2, v10

    .line 178
    .local v2, "type":Lgnu/bytecode/ClassType;
    :goto_1
    const/4 v10, 0x0

    move-object v4, v10

    .line 180
    .local v4, "instance":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v10

    move-object v5, v10

    .line 181
    .local v5, "language":Lgnu/expr/Language;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v10

    move-object v6, v10

    .end local v4    # "instance":Ljava/lang/Object;
    .local v6, "fld":Lgnu/bytecode/Field;
    :goto_2
    move-object v10, v6

    if-eqz v10, :cond_6

    .line 183
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getFlags()I

    move-result v10

    move v7, v10

    .line 184
    .local v7, "flags":I
    move v10, v7

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_2

    .line 185
    .line 181
    :goto_3
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v10

    move-object v6, v10

    goto :goto_2

    .line 175
    .end local v2    # "type":Lgnu/bytecode/ClassType;
    .end local v3    # "rclass":Ljava/lang/Class;
    .end local v5    # "language":Lgnu/expr/Language;
    .end local v6    # "fld":Lgnu/bytecode/Field;
    .end local v7    # "flags":I
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v10}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v2, v10

    .line 176
    .restart local v2    # "type":Lgnu/bytecode/ClassType;
    move-object v10, v2

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v3, v10

    .restart local v3    # "rclass":Ljava/lang/Class;
    goto :goto_1

    .line 188
    .restart local v5    # "language":Lgnu/expr/Language;
    .restart local v6    # "fld":Lgnu/bytecode/Field;
    .restart local v7    # "flags":I
    :cond_2
    move v10, v7

    const/16 v11, 0x8

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_3

    move-object v10, v4

    if-nez v10, :cond_3

    .line 189
    move-object v10, v0

    :try_start_2
    invoke-virtual {v10}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    .line 190
    :cond_3
    move-object v10, v3

    move-object v11, v6

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 192
    .local v8, "fvalue":Ljava/lang/Object;
    move-object v10, v5

    move-object v11, v1

    move-object v12, v8

    move-object v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v10

    move-object v9, v10

    .line 193
    .local v9, "fdecl":Lgnu/expr/Declaration;
    move v10, v7

    const/16 v11, 0x10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_5

    move-object v10, v8

    instance-of v10, v10, Lgnu/mapping/Location;

    if-eqz v10, :cond_4

    move-object v10, v8

    instance-of v10, v10, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v10, :cond_5

    .line 196
    :cond_4
    move-object v10, v9

    new-instance v11, Lgnu/expr/QuoteExp;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v8

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 203
    :goto_4
    goto :goto_3

    .line 198
    :cond_5
    move-object v10, v9

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 200
    .end local v8    # "fvalue":Ljava/lang/Object;
    .end local v9    # "fdecl":Lgnu/expr/Declaration;
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 202
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v10, Lgnu/mapping/WrappedException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v8

    invoke-direct {v11, v12}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .end local v1    # "mod":Lgnu/expr/ModuleExp;
    .end local v2    # "type":Lgnu/bytecode/ClassType;
    .end local v3    # "rclass":Ljava/lang/Class;
    .end local v5    # "language":Lgnu/expr/Language;
    .end local v6    # "fld":Lgnu/bytecode/Field;
    .end local v7    # "flags":I
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v14

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    throw v0

    .line 206
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    .restart local v1    # "mod":Lgnu/expr/ModuleExp;
    .restart local v2    # "type":Lgnu/bytecode/ClassType;
    .restart local v3    # "rclass":Ljava/lang/Class;
    .restart local v5    # "language":Lgnu/expr/Language;
    .restart local v6    # "fld":Lgnu/bytecode/Field;
    :cond_6
    move-object v10, v1

    :try_start_4
    invoke-virtual {v10}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    move-object v6, v10

    .line 207
    .local v6, "fdecl":Lgnu/expr/Declaration;
    :goto_5
    move-object v10, v6

    if-eqz v10, :cond_7

    .line 209
    move-object v10, v1

    move-object v11, v6

    invoke-static {v10, v11}, Lgnu/expr/ModuleInfo;->makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V

    .line 207
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    move-object v6, v10

    goto :goto_5

    .line 211
    :cond_7
    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleInfo;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 445
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v1

    const-string/jumbo v3, "ModuleInfo["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 446
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 448
    move-object v2, v1

    const-string/jumbo v3, "class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 449
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 456
    :cond_0
    :goto_0
    move-object v2, v1

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 457
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleInfo;
    return-object v0

    .line 451
    .restart local v0    # "this":Lgnu/expr/ModuleInfo;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 453
    move-object v2, v1

    const-string/jumbo v3, "class-name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 454
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_0
.end method
