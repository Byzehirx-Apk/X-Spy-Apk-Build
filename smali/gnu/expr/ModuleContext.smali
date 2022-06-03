.class public Lgnu/expr/ModuleContext;
.super Ljava/lang/Object;
.source "ModuleContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleContext$ClassToInstanceMap;
    }
.end annotation


# static fields
.field public static IN_HTTP_SERVER:I

.field public static IN_SERVLET:I

.field static global:Lgnu/expr/ModuleContext;


# instance fields
.field flags:I

.field manager:Lgnu/expr/ModuleManager;

.field private table:Lgnu/expr/ModuleContext$ClassToInstanceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lgnu/expr/ModuleContext;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    invoke-direct {v1, v2}, Lgnu/expr/ModuleContext;-><init>(Lgnu/expr/ModuleManager;)V

    sput-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    .line 18
    const/4 v0, 0x1

    sput v0, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleManager;)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, p1

    .local v1, "manager":Lgnu/expr/ModuleManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    new-instance v3, Lgnu/expr/ModuleContext$ClassToInstanceMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lgnu/expr/ModuleContext$ClassToInstanceMap;-><init>()V

    iput-object v3, v2, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    .line 27
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    .line 28
    return-void
.end method

.method public static getContext()Lgnu/expr/ModuleContext;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lgnu/expr/ModuleContext;->global:Lgnu/expr/ModuleContext;

    return-object v0
.end method


# virtual methods
.method public addFlags(I)V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/expr/ModuleContext;->flags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Lgnu/expr/ModuleContext;->flags:I

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    invoke-virtual {v1}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v2

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    throw v0
.end method

.method public findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 9

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 100
    .local v2, "instanceClass":Ljava/lang/Class;
    move-object v6, v0

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v3, v7

    monitor-enter v6

    .line 102
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    move-object v6, v2

    invoke-static {v6}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object v6

    move-object v4, v6

    .line 103
    .local v4, "info":Lgnu/expr/ModuleInfo;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 104
    move-object v6, v4

    move-object v7, v3

    monitor-exit v7

    move-object v0, v6

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    return-object v0

    .line 105
    .end local v4    # "info":Lgnu/expr/ModuleInfo;
    .restart local v0    # "this":Lgnu/expr/ModuleContext;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public declared-synchronized findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, p1

    .local v1, "info":Lgnu/expr/ModuleInfo;
    move-object v9, p0

    monitor-enter v9

    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getModuleClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v2, v5

    .line 56
    .line 57
    .local v2, "clas":Ljava/lang/Class;
    move-object v5, v0

    move-object v6, v2

    :try_start_1
    invoke-virtual {v5, v6}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    monitor-exit v9

    return-object v0

    .line 52
    .end local v2    # "clas":Ljava/lang/Class;
    .restart local v0    # "this":Lgnu/expr/ModuleContext;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 54
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    move-object v5, v1

    :try_start_2
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 55
    .local v4, "cname":Ljava/lang/String;
    new-instance v5, Lgnu/mapping/WrappedException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot find module "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v4    # "cname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    throw v0
.end method

.method public declared-synchronized findInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 68
    .local v2, "inst":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 74
    move-object v4, v1

    :try_start_1
    const-string/jumbo v5, "$instance"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 80
    .line 86
    .line 87
    :goto_0
    move-object v4, v0

    move-object v5, v2

    :try_start_2
    invoke-virtual {v4, v5}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    monitor-exit v8

    return-object v0

    .line 76
    .restart local v0    # "this":Lgnu/expr/ModuleContext;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 79
    .local v3, "ex":Ljava/lang/NoSuchFieldException;
    move-object v4, v1

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 82
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 84
    .local v3, "ex":Ljava/lang/Throwable;
    :try_start_4
    new-instance v4, Lgnu/mapping/WrappedException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception while initializing module "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    throw v0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, v0

    iget v1, v1, Lgnu/expr/ModuleContext;->flags:I

    move v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    return v0
.end method

.method public getManager()Lgnu/expr/ModuleManager;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/ModuleContext;->manager:Lgnu/expr/ModuleManager;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    return-object v0
.end method

.method public declared-synchronized searchInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, p1

    .local v1, "clas":Ljava/lang/Class;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    monitor-exit v4

    return-object v0

    .restart local v0    # "this":Lgnu/expr/ModuleContext;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    throw v0
.end method

.method public setFlags(I)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/expr/ModuleContext;->flags:I

    return-void
.end method

.method public declared-synchronized setInstance(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ModuleContext;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lgnu/expr/ModuleContext;->table:Lgnu/expr/ModuleContext$ClassToInstanceMap;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/ModuleContext$ClassToInstanceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 95
    monitor-exit v5

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lgnu/expr/ModuleContext;
    throw v0
.end method
