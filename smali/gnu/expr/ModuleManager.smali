.class public Lgnu/expr/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field public static final LAST_MODIFIED_CACHE_TIME:J = 0x3e8L

.field static instance:Lgnu/expr/ModuleManager;


# instance fields
.field private compilationDirectory:Ljava/lang/String;

.field public lastModifiedCacheTime:J

.field modules:[Lgnu/expr/ModuleInfo;

.field numModules:I

.field packageInfoChain:Lgnu/expr/ModuleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lgnu/expr/ModuleManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/expr/ModuleManager;-><init>()V

    sput-object v0, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v1, v0

    const-string/jumbo v2, ""

    iput-object v2, v1, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    .line 38
    move-object v1, v0

    const-wide/16 v2, 0x3e8

    iput-wide v2, v1, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    return-void
.end method

.method private declared-synchronized add(Lgnu/expr/ModuleInfo;)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "info":Lgnu/expr/ModuleInfo;
    move-object v8, p0

    monitor-enter v8

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    if-nez v3, :cond_1

    .line 66
    move-object v3, v0

    const/16 v4, 0xa

    new-array v4, v4, [Lgnu/expr/ModuleInfo;

    iput-object v4, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    .line 73
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lgnu/expr/ModuleManager;->numModules:I

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/expr/ModuleManager;->numModules:I

    move-object v5, v1

    aput-object v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v8

    return-void

    .line 67
    :cond_1
    move-object v3, v0

    :try_start_1
    iget v3, v3, Lgnu/expr/ModuleManager;->numModules:I

    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 69
    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Lgnu/expr/ModuleManager;->numModules:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Lgnu/expr/ModuleInfo;

    move-object v2, v3

    .line 70
    .local v2, "tmp":[Lgnu/expr/ModuleInfo;
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lgnu/expr/ModuleManager;->numModules:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    .end local v2    # "tmp":[Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public static declared-synchronized findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "clas":Ljava/lang/Class;
    const-class v4, Lgnu/expr/ModuleManager;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/ModuleInfo;

    move-object v1, v2

    .line 90
    .local v1, "info":Lgnu/expr/ModuleInfo;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 92
    new-instance v2, Lgnu/expr/ModuleInfo;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lgnu/expr/ModuleInfo;-><init>()V

    move-object v1, v2

    .line 93
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "clas":Ljava/lang/Class;
    monitor-exit v4

    return-object v0

    .line 89
    .end local v1    # "info":Lgnu/expr/ModuleInfo;
    .restart local v0    # "clas":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "clas":Ljava/lang/Class;
    throw v0
.end method

.method public static getInstance()Lgnu/expr/ModuleManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    return-object v0
.end method

.method private declared-synchronized searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "sourcePath":Ljava/lang/String;
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lgnu/expr/ModuleManager;->numModules:I

    move v2, v4

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_1

    .line 117
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 118
    .local v3, "info":Lgnu/expr/ModuleInfo;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    move-object v4, v3

    move-object v0, v4

    .line 121
    .end local v0    # "this":Lgnu/expr/ModuleManager;
    .end local v3    # "info":Lgnu/expr/ModuleInfo;
    :goto_1
    monitor-exit v6

    return-object v0

    .line 120
    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    .restart local v3    # "info":Lgnu/expr/ModuleInfo;
    :cond_0
    goto :goto_0

    .line 121
    .end local v3    # "info":Lgnu/expr/ModuleInfo;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 115
    .end local v2    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    move-object v1, v3

    .line 237
    .local v1, "set":Lgnu/expr/ModuleSet;
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 239
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    move-object v2, v3

    .line 240
    .local v2, "next":Lgnu/expr/ModuleSet;
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 241
    move-object v3, v2

    move-object v1, v3

    .line 242
    goto :goto_0

    .line 243
    .end local v2    # "next":Lgnu/expr/ModuleSet;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 245
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    .line 246
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lgnu/expr/ModuleManager;->numModules:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit v5

    return-void

    .line 236
    .end local v1    # "set":Lgnu/expr/ModuleSet;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public declared-synchronized find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;
    .locals 11

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v10, p0

    monitor-enter v10

    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v7

    move-object v2, v7

    .line 52
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v7

    move-object v3, v7

    .line 53
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 54
    .local v4, "fileName":Ljava/lang/String;
    move-object v7, v4

    invoke-static {v7}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v7

    move-object v5, v7

    .line 55
    .local v5, "sourceAbsPath":Lgnu/text/Path;
    move-object v7, v0

    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v7

    move-object v6, v7

    .line 56
    .local v6, "info":Lgnu/expr/ModuleInfo;
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 57
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 58
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 59
    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    monitor-exit v10

    return-object v0

    .line 51
    .end local v2    # "mexp":Lgnu/expr/ModuleExp;
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "sourceAbsPath":Lgnu/text/Path;
    .end local v6    # "info":Lgnu/expr/ModuleInfo;
    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ModuleManager;->searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    move-object v2, v4

    .line 101
    .local v2, "info":Lgnu/expr/ModuleInfo;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 102
    move-object v4, v2

    move-object v0, v4

    .line 105
    .end local v0    # "this":Lgnu/expr/ModuleManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    :cond_0
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 107
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 109
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v4, v3

    invoke-static {v4}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public declared-synchronized findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 9

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "sourceAbsPath":Lgnu/text/Path;
    move-object v2, p2

    .local v2, "sourcePath":Ljava/lang/String;
    move-object v7, p0

    monitor-enter v7

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 128
    .local v3, "sourceAbsPathname":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lgnu/expr/ModuleManager;->searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v5

    move-object v4, v5

    .line 129
    .local v4, "info":Lgnu/expr/ModuleInfo;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 131
    new-instance v5, Lgnu/expr/ModuleInfo;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lgnu/expr/ModuleInfo;-><init>()V

    move-object v4, v5

    .line 132
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 133
    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 134
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 135
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lgnu/expr/ModuleManager;->add(Lgnu/expr/ModuleInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    monitor-exit v7

    return-object v0

    .line 127
    .end local v3    # "sourceAbsPathname":Ljava/lang/String;
    .end local v4    # "info":Lgnu/expr/ModuleInfo;
    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public declared-synchronized findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "sourcePath":Ljava/lang/String;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    monitor-exit v5

    return-object v0

    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public declared-synchronized findWithURL(Ljava/net/URL;)Lgnu/expr/ModuleInfo;
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v7, p0

    monitor-enter v7

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v4

    move-object v2, v4

    .line 148
    .local v2, "sourceAbsPath":Lgnu/text/Path;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 149
    .local v3, "sourcePath":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    monitor-exit v7

    return-object v0

    .line 147
    .end local v2    # "sourceAbsPath":Lgnu/text/Path;
    .end local v3    # "sourcePath":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public getCompilationDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    return-object v0
.end method

.method public declared-synchronized getModule(I)Lgnu/expr/ModuleInfo;
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move v1, p1

    .local v1, "index":I
    move-object v4, p0

    monitor-enter v4

    move v2, v1

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lgnu/expr/ModuleManager;->numModules:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    monitor-exit v4

    return-object v0

    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move v3, v1

    aget-object v2, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public declared-synchronized loadPackageInfo(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    move-object v7, p0

    monitor-enter v7

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "$ModulesMap$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 213
    .local v2, "moduleSetClassName":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    move-object v3, v5

    .local v3, "set":Lgnu/expr/ModuleSet;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 215
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 216
    .local v4, "setName":Ljava/lang/String;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    .line 213
    :cond_0
    move-object v5, v3

    iget-object v5, v5, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    move-object v3, v5

    goto :goto_0

    .line 219
    .end local v4    # "setName":Ljava/lang/String;
    :cond_1
    move-object v5, v2

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 220
    .local v3, "setClass":Ljava/lang/Class;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/ModuleSet;

    move-object v4, v5

    .line 222
    .local v4, "instance":Lgnu/expr/ModuleSet;
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    iput-object v6, v5, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 225
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 226
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleSet;->register(Lgnu/expr/ModuleManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit v7

    return-void

    .line 211
    .end local v2    # "moduleSetClassName":Ljava/lang/String;
    .end local v3    # "setClass":Ljava/lang/Class;
    .end local v4    # "instance":Lgnu/expr/ModuleSet;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 165
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object/from16 v1, p1

    .local v1, "moduleClass":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "moduleSource":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "moduleUri":Ljava/lang/String;
    move-object/from16 v15, p0

    monitor-enter v15

    move-object v11, v0

    move-object v12, v1

    :try_start_0
    invoke-virtual {v11, v12}, Lgnu/expr/ModuleManager;->searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    if-eqz v11, :cond_0

    .line 166
    .line 201
    :goto_0
    monitor-exit v15

    return-void

    .line 167
    :cond_0
    move-object v11, v2

    :try_start_1
    invoke-static {v11}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v11

    move-object v4, v11

    .line 168
    .local v4, "sourcePath":Lgnu/text/Path;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v11

    move-object v5, v11

    .line 169
    .local v5, "sourceAbsPath":Lgnu/text/Path;
    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 170
    .local v6, "sourceAbsPathname":Ljava/lang/String;
    move-object v11, v0

    move-object v12, v6

    invoke-direct {v11, v12}, Lgnu/expr/ModuleManager;->searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 171
    goto :goto_0

    .line 172
    :cond_1
    new-instance v11, Lgnu/expr/ModuleInfo;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Lgnu/expr/ModuleInfo;-><init>()V

    move-object v7, v11

    .line 173
    .local v7, "info":Lgnu/expr/ModuleInfo;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/text/Path;->isAbsolute()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 175
    move-object v11, v7

    move-object v12, v4

    iput-object v12, v11, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 176
    move-object v11, v7

    move-object v12, v6

    iput-object v12, v11, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 197
    :goto_1
    move-object v11, v7

    move-object v12, v1

    invoke-virtual {v11, v12}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 198
    move-object v11, v7

    move-object v12, v2

    iput-object v12, v11, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 199
    move-object v11, v7

    move-object v12, v3

    iput-object v12, v11, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    .line 200
    move-object v11, v0

    move-object v12, v7

    invoke-direct {v11, v12}, Lgnu/expr/ModuleManager;->add(Lgnu/expr/ModuleInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    goto :goto_0

    .line 184
    :cond_2
    move-object v11, v0

    :try_start_2
    iget-object v11, v11, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object v8, v11

    .line 185
    .local v8, "setClass":Ljava/lang/Class;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".class"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 186
    .local v9, "setClassName":Ljava/lang/String;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    move-object v10, v11

    .line 188
    .local v10, "setClassURL":Ljava/net/URL;
    move-object v11, v10

    invoke-static {v11}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/text/URLPath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v11

    move-object v5, v11

    .line 189
    move-object v11, v7

    move-object v12, v5

    iput-object v12, v11, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 190
    move-object v11, v7

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    goto :goto_1

    .line 192
    .end local v8    # "setClass":Ljava/lang/Class;
    .end local v9    # "setClassName":Ljava/lang/String;
    .end local v10    # "setClassURL":Ljava/net/URL;
    :catch_0
    move-exception v11

    move-object v8, v11

    .line 194
    .local v8, "ex":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 165
    .end local v4    # "sourcePath":Lgnu/text/Path;
    .end local v5    # "sourceAbsPath":Lgnu/text/Path;
    .end local v6    # "sourceAbsPathname":Ljava/lang/String;
    .end local v7    # "info":Lgnu/expr/ModuleInfo;
    .end local v8    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit v15

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public declared-synchronized searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    iget v4, v4, Lgnu/expr/ModuleManager;->numModules:I

    move v2, v4

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    if-ltz v4, :cond_1

    .line 80
    move-object v4, v0

    iget-object v4, v4, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 81
    .local v3, "info":Lgnu/expr/ModuleInfo;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    move-object v4, v3

    move-object v0, v4

    .line 84
    .end local v0    # "this":Lgnu/expr/ModuleManager;
    .end local v3    # "info":Lgnu/expr/ModuleInfo;
    :goto_1
    monitor-exit v6

    return-object v0

    .line 83
    .restart local v0    # "this":Lgnu/expr/ModuleManager;
    .restart local v3    # "info":Lgnu/expr/ModuleInfo;
    :cond_0
    goto :goto_0

    .line 84
    .end local v3    # "info":Lgnu/expr/ModuleInfo;
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 78
    .end local v2    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lgnu/expr/ModuleManager;
    throw v0
.end method

.method public setCompilationDirectory(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleManager;
    move-object v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 18
    const-string/jumbo v4, ""

    move-object v1, v4

    .line 19
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 20
    .local v2, "plen":I
    move v4, v2

    if-lez v4, :cond_1

    .line 22
    sget-char v4, Ljava/io/File;->separatorChar:C

    move v3, v4

    .line 23
    .local v3, "sep":C
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 26
    .end local v3    # "sep":C
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    .line 27
    return-void
.end method
