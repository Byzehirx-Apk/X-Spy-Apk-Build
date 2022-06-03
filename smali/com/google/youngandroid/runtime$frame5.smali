.class public Lcom/google/youngandroid/runtime$frame5;
.super Lgnu/expr/ModuleBody;
.source "runtime8600350569713873938.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->inUi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation


# instance fields
.field blockid:Ljava/lang/Object;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field promise:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/tmp/runtime8600350569713873938.scm:2911"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/google/youngandroid/runtime$frame5;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 2911
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/youngandroid/runtime$frame5;->lambda15()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 4294967295
    .line 2911
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method lambda15()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 2911
    move-object v0, p0

    .local v0, "this":Lcom/google/youngandroid/runtime$frame5;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/youngandroid/runtime$frame5;->blockid:Ljava/lang/Object;

    move-object v1, v5

    .line 2914
    :try_start_0
    const-string/jumbo v5, "OK"

    move-object v6, v0

    iget-object v6, v6, Lcom/google/youngandroid/runtime$frame5;->promise:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    move-object v3, v5

    .line 2923
    :goto_0
    move-object v5, v3

    move-object v2, v5

    .line 2933
    :goto_1
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/google/youngandroid/runtime;->sendToBlock(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/youngandroid/runtime$frame5;
    return-object v0

    .line 2914
    .restart local v0    # "this":Lcom/google/youngandroid/runtime$frame5;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 2918
    .local v4, "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    move-object v5, v4

    :try_start_1
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    const-string/jumbo v5, "NOK"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "Failed due to missing permission: "

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v4

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v6

    invoke-static {v5, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .end local v4    # "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 2923
    .local v4, "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    const-string/jumbo v5, "NOK"

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .end local v4    # "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 2927
    .local v3, "exception":Ljava/lang/Throwable;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 2928
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v5, "NOK"

    move-object v6, v3

    instance-of v6, v6, Ljava/lang/Error;

    if-eqz v6, :cond_0

    .line 2932
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2933
    :goto_2
    invoke-static {v5, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 2911
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    .line 4294967295
    .line 2911
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method
