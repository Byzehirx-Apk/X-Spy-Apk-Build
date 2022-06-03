.class public Lkawa/standard/load;
.super Lgnu/mapping/Procedure1;
.source "load.java"


# static fields
.field public static final load:Lkawa/standard/load;

.field public static final loadRelative:Lkawa/standard/load;


# instance fields
.field relative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    new-instance v0, Lkawa/standard/load;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "load"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->load:Lkawa/standard/load;

    .line 21
    new-instance v0, Lkawa/standard/load;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "load-relative"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->loadRelative:Lkawa/standard/load;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/standard/load;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "relative":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 17
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lkawa/standard/load;->relative:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/standard/load;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lkawa/standard/load;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/load;
    return-object v0
.end method

.method public final apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lkawa/standard/load;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v6, v2

    :try_start_0
    check-cast v6, Lgnu/mapping/Environment;

    move-object v3, v6

    .line 35
    .local v3, "env":Lgnu/mapping/Environment;
    move-object v6, v1

    invoke-static {v6}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v6

    move-object v4, v6

    .line 36
    .local v4, "path":Lgnu/text/Path;
    move-object v6, v0

    iget-boolean v6, v6, Lkawa/standard/load;->relative:Z

    if-eqz v6, :cond_0

    .line 38
    sget-object v6, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/text/Path;

    move-object v5, v6

    .line 39
    .local v5, "curPath":Lgnu/text/Path;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 40
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v6

    move-object v4, v6

    .line 42
    .end local v5    # "curPath":Lgnu/text/Path;
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v7, v4

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z

    move-result v6

    .line 43
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v6

    .end local v0    # "this":Lkawa/standard/load;
    return-object v0

    .line 45
    .end local v3    # "env":Lgnu/mapping/Environment;
    .end local v4    # "path":Lgnu/text/Path;
    .restart local v0    # "this":Lkawa/standard/load;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 47
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 49
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 51
    .local v3, "ex":Lgnu/text/SyntaxException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "load: errors while compiling \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\':\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v9

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
